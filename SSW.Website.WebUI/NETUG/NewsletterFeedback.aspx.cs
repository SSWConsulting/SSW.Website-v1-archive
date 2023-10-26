using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.Xrm.Sdk;

using Properties;

using SSW.CRM.Utility;
using SSW.SSWMT;

namespace NETUG
{
    public partial class Unsubscribe : Page
    {
        /// <summary>
        ///     Property backing member for easier contact entity access.
        /// </summary>
        Entity _contact;

        /// <summary>
        ///     Property backing member for the chosen reasons. This will update the CRM contact's description/note.
        /// </summary>
        string _crmReasons;

        Task _crmTask;

        /// <summary>
        ///     Property backing member for html free text.
        /// </summary>
        string _htmlFreeText;

        /// <summary>
        ///     Backing property field for ReasonsCheckList.
        /// </summary>
        List<string> _reasonsCheckList;

        /// <summary>
        ///     Connection string to connect to Dynamics CRM using a CrmHelper.
        /// </summary>
        string ConnectionString { get; set; }

        /// <summary>
        ///     CrmHelper to work with the connected Dynamics CRM.
        /// </summary>
        CrmHelper CrmHelper { get; set; }

        /// <summary>
        ///     Email address the email with the feedback is going to be sent from.
        /// </summary>
        string EmailFrom { get; set; }

        /// <summary>
        ///     Email address the email with the feedback is going to be sent to.
        /// </summary>
        string EmailTo { get; set; }

        /// <summary>
        ///     Id of the retrieved contact (Dynamics CRM is queried by the email address).
        /// </summary>
        Guid Id
        {
            get { return Contact.Id; }
        }

        /// <summary>
        ///     HTML version of the free text reasons, so that it can be sent via email.
        /// </summary>
        string HtmlFreeText
        {
            get { return _htmlFreeText; }
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    ShowAlert("error", "3");
                    return;
                }

                _htmlFreeText = value;
            }
        }
        
        /// <summary>
        ///     The reasons picked from the check list on the feedback page.
        /// </summary>
        List<string> ReasonsCheckList
        {
            get
            {
                if (_reasonsCheckList != null)
                {
                    return _reasonsCheckList;
                }

                if (cblNewsletterFeedbackReasons.SelectedItem == null)
                {
                    return _reasonsCheckList = new List<string> {""};
                }

                _reasonsCheckList = new List<string>();

                foreach (ListItem item in cblNewsletterFeedbackReasons.Items)
                {
                    if (!item.Selected)
                    {
                        continue;
                    }

                    _reasonsCheckList.Add(Environment.NewLine + item.Text);
                }

                return _reasonsCheckList;
            }
        }

        /// <summary>
        ///     This string will be added to the notes of the CRM contact.
        /// </summary>
        string CrmReasons
        {
            get { return _crmReasons; }
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    ShowAlert("error", "Feedback in wrong format.");
                    return;
                }

                _crmReasons = value;
            }
        }

        /// <summary>
        ///     True if there are items checked from the reasons for unsubscribing. False if there are none.
        /// </summary>
        bool CheckedItemsExists
        {
            get { return cblNewsletterFeedbackReasons.SelectedItem != null; }
        }

        /// <summary>
        ///     True if there is text in the free text box, written by the user. False if there is none.
        /// </summary>
        bool ExistsFreeText
        {
            get { return !string.IsNullOrWhiteSpace(tbFreeTextReasons.Text); }
        }

        /// <summary>
        ///     This is the email address of the contact that has unsubscribed.
        /// </summary>
        static string IncomingEmailAddress
        {
            get { return IncomingEmailAddress = HttpContext.Current.Request.QueryString["email"]; }
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException("Value cannot be null or whitespace.", value);
                }
            }
        }

        /// <summary>
        ///     Content of the email that is going to be sent from EmailFrom to EmailTo.
        /// </summary>
        string EmailContent { get; set; }

        /// <summary>
        ///     Content of the CRM note that is going to be attached to the contact's CRM page.
        /// </summary>
        string CrmNote { get; set; }

        /// <summary>
        ///     The contact entity with the
        /// </summary>
        Entity Contact
        {
            get { return _contact; }
            set
            {
                if (value == null)
                {
                    throw new ArgumentNullException();
                }

                _contact = value;
            }
        }

        bool DebugEnabled
        {
            get { return Settings.Default.DebugEnabled; }
        }

        Guid TagId
        {
            get
            {
                if (DebugEnabled)
                {
                    return Guid.Parse(Settings.Default.TagIdTesting);
                }

                return Guid.Parse(Settings.Default.TagIdProduction);
            }
        }

        Entity AddUnsubscribedTag(Entity contact)
        {
            try
            {
                CrmHelper.AddTagToContact(TagId, contact.Id);

                return contact;
            }
            catch (FaultException e)
            {
                ShowAlert("error", "You have already unsubscribed.");

                return contact;
            }
        }

        /// <summary>
        ///     This method is called when the submit button for submitting feedback is pressed.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnNewsletterFeedback_Click(object sender, EventArgs e)
        {
            try
            {
                #region Plausibility checks

                if (!CheckedItemsExists && !ExistsFreeText)
                {
                    ShowAlert("Error", "No feedback found.");
                    return;
                }

                if (string.IsNullOrWhiteSpace(HttpContext.Current.Request.QueryString["email"]))
                {
                    var exp = new ArgumentException("Invalid or missing email address query string.");
                    throw exp;
                }

                if (CrmHelper == null)
                {
                    var argException = new ArgumentNullException("CrmHelper may not be null.");
                    throw argException;
                }

                while (CrmHelper.IsReady == false)
                {
                    Thread.Sleep(1000);
                }

                //await _setupTask;

                #endregion

                if (!string.IsNullOrWhiteSpace(tbFreeTextReasons.Text))
                {
                    HtmlFreeText = HttpUtility.HtmlEncode(tbFreeTextReasons.Text.Trim());
                }

                EmailContent = ConstructEmailContent(Contact.GetAttributeValue<string>("fullname"),
                                                     Contact.Id, IncomingEmailAddress);

                CrmNote = ConstructCrmNote(Contact.GetAttributeValue<string>("description"));

                CrmHelper.UpdateContact(Id, Contact, CrmNote);

                btnGiveNewsletterFeedback.CssClass = "green done";
                btnGiveNewsletterFeedback.Text = "Done";

                GlobalFunctions.SendEmail(EmailContent,
                                          string.Format("SSW Newsletter - Feedback from contact {0}",
                                                        IncomingEmailAddress),
                                          EmailFrom,
                                          EmailTo, //ConfigurationManager.AppSettings["SMTP_SERVER_TO"],
                                          true
                );

                ShowAlert("success", "");
            }
            catch (ArgumentException exp)
            {
                ShowAlert("error", "1");
            }
        }

        /// <summary>
        ///     Constructs the CrmNote which will update the CRM contact with the checklist feedback
        ///     and date of unsubscribing.
        /// </summary>
        /// <param name="note">CRM contact personal note to update.</param>
        /// <returns>Crm note content as a string.</returns>
        string ConstructCrmNote(string note)
        {
            var resultCrmNote = string.IsNullOrWhiteSpace(note) ? "" : "\n";

            if (!CheckedItemsExists)
            {
                resultCrmNote = string.Format("Gave feedback on the SSW newsletter on the {0}.\n", DateTime.Now);
            }

            if (CheckedItemsExists && ReasonsCheckList.Count == 1)
            {
                resultCrmNote = string.Format("Gave feedback on the SSW newsletter on the {0}: {1}\n", DateTime.Now,
                                              ReasonsCheckList[0]);
            }

            if (!CheckedItemsExists || ReasonsCheckList.Count <= 1)
            {
                return resultCrmNote;
            }

            resultCrmNote += string.Format("Gave feedback on the SSW newsletter on the {0}:", DateTime.Now);

            foreach (var reason in ReasonsCheckList)
            {
                resultCrmNote += string.Format("{0}", reason);
            }

            resultCrmNote += Environment.NewLine;

            return resultCrmNote;
        }

        /// <summary>
        ///     Constructs the Email content for sending from EmailFrom to EmailTo. It contains the checklist feedback,
        ///     the free text feedback and the date of unsubscribing.
        /// </summary>
        /// <param name="contact">Contact entity as the data source for email content.</param>
        /// <returns>Email content as a string.</returns>
        string ConstructEmailContent(string fullName, Guid id, string emailAddress)
        {
            var emailContent =
                string.Format(
                    "<h2>To SSWInfo,</h2>The following contact has given feedback to the SSW newsletter:<ul><li>Name: {0}</li><li>Id: {1}</li><li>Email address: {2}</li></ul>",
                    fullName, id, emailAddress);

            CrmReasons = string.Format("\nGave feedback on the SSW newsletter on the {0}.", DateTime.Now);
            emailContent += CrmReasons;

            if (ExistsFreeText && !CheckedItemsExists)
            {
                emailContent +=
                    string.Format("<p>The following free text feedback was provided:</p><blockquote>{0}</blockquote>",
                                  HtmlFreeText);
            }

            if (CheckedItemsExists && !ExistsFreeText)
            {
                emailContent += "<ul>";

                foreach (var reason in ReasonsCheckList)
                {
                    emailContent += string.Format("<li>{0}</li>", reason);
                }

                emailContent += "</ul>";
            }

            if (CheckedItemsExists && ExistsFreeText)
            {
                emailContent += "<ul>";

                foreach (var reason in ReasonsCheckList)
                {
                    emailContent += string.Format("<li>{0}</li>", reason);
                }

                emailContent += "</ul>";

                emailContent +=
                    string.Format("<p>The following free text feedback was provided:</p><blockquote>{0}</blockquote>",
                                  HtmlFreeText);
            }

            return emailContent;
        }

        static bool IsUnsubscribed(Entity contact)
        {
            if (contact == null)
            {
                throw new ArgumentNullException("Entity may not be null.");
            }

            return contact.GetAttributeValue<bool>("donotphone") &&
                   contact.GetAttributeValue<bool>("donotpostalmail") &&
                   contact.GetAttributeValue<bool>("donotfax") &&
                   contact.GetAttributeValue<bool>("donotemail") &&
                   contact.GetAttributeValue<bool>("donotbulkpostalmail") &&
                   contact.GetAttributeValue<bool>("donotbulkemail") &&
                   contact.GetAttributeValue<bool>("donotsendmm");
        }

        /// <summary>
        ///     This method runs when the page loads. It calls the Setup() method, which will connect the CrmHelper
        ///     to the specified Dynamics CRM using the connection string.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                return;
            }

            Setup();

            if (IsUnsubscribed(Contact))
            {
                return;
            }

            SendUnsubscribeEmail(Contact.GetAttributeValue<string>("fullname"),
                                 Contact.Id, IncomingEmailAddress);

            Contact = UnsubscribeContact(Contact);

            Contact = AddUnsubscribedTag(Contact);

            CrmHelper.UpdateContact(Id, Contact,
                                    string.Format("Unsubscribed from the SSW newsletter on the {0}.\n", DateTime.Now));
        }

        /// <summary>
        ///     Sends an unsubscribe notification email from EmailFrom to EmailTo.
        /// </summary>
        /// <param name="fullName">Full name of the unsubscribed contact.</param>
        /// <param name="id">Id of the unsubscribed contact.</param>
        /// <param name="emailAddress">Email address of the unsubscribed contact.</param>
        void SendUnsubscribeEmail(string fullName, Guid id, string emailAddress)
        {
            var emailContent =
                string.Format(
                    "<h2>To SSWInfo,</h2>The following contact has unsubscribed from the SSW newsletter:<ul><li>Name: {0}</li><li>Id: {1}</li><li>Email address: {2}</li></ul>",
                    fullName, id, emailAddress);

            var crmNote = string.Format("Unsubscribed from the SSW newsletter on the {0}.\n", DateTime.Now);

            if (Contact.GetAttributeValue<string>("description") == null)
            {
                CrmHelper.UpdateContact(Id, Contact);
            }
            else if (Contact.GetAttributeValue<string>("description")
                            .Length < 1500)
            {
                CrmHelper.UpdateContact(Id, Contact, CrmNote);
            }
            else if (Contact.GetAttributeValue<string>("description")
                            .Length >= 1500)
            {
                CrmHelper.UpdateContact(Id, Contact);
            }

            GlobalFunctions.SendEmail(emailContent,
                                      string.Format("SSW Newsletter - Unsubscribed contact: {0}", IncomingEmailAddress),
                                      EmailFrom,
                                      EmailTo, //ConfigurationManager.AppSettings["SMTP_SERVER_TO"],
                                      true
            );
        }

        /// <summary>
        ///     Connects the CrmHelper to the specified Dynamics CRM using the connection string and instantiates
        ///     some variables from the project settings..
        /// </summary>
        void Setup()
        {
            try
            {
                if (DebugEnabled)
                {
                    ConnectionString = Settings.Default.CrmConnectionStringTesting;
                }
                else
                {
                    ConnectionString = Settings.Default.CrmConnectionStringProduction;
                }

                CrmHelper = new CrmHelper(ConnectionString);

                CrmHelper.ConnectServiceClient();

                EmailTo = Settings.Default.UnsubscribeNotificationRecipient;
                EmailFrom = Settings.Default.UnsubscribeNotificationSender;

                lbEmailAddress.Text = IncomingEmailAddress;

                Contact = CrmHelper.GetContactEntity("emailaddress1", IncomingEmailAddress, "contact");
            }
            catch (FormatException e)
            {
                ShowAlert("error", "4");
            }
        }

        /// <summary>
        ///     Shows an Javascript alert of the specified type.
        /// </summary>
        /// <param name="bannerType">(Case insensitive) Valid input: 'success', 'error' and 'alreadyFeedbacked'.</param>
        void ShowAlert(string bannerType, string message)
        {
            lbError.Text = message;

            ScriptManager.RegisterStartupScript(this, GetType(), "CallShowAlert",
                                                string.Format("showAlert('{0}')", bannerType.ToLower()),
                                                true);
            lbError.Text = string.Empty;
        }

        static Entity UnsubscribeContact(Entity contact)
        {
            contact["donotphone"] = true;
            contact["donotpostalmail"] = true;
            contact["donotfax"] = true;
            contact["donotemail"] = true;
            contact["donotbulkpostalmail"] = true;
            contact["donotbulkemail"] = true;
            contact["donotsendmm"] = true;

            return contact;
        }
    }
}
