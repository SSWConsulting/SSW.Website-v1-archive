using Microsoft.VisualBasic;
using SSW;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Collections.Specialized;
using System.Configuration;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using System.Web.SessionState;
using System.Web.Security;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;
using System.IO;
using System.Xml.Xsl;
using Mindscape.Raygun4Net;

namespace SSW.Website.WebUI.NETUG
{

	public partial class SSWUpdatePrevious : System.Web.UI.Page
	{


		protected void Page_Load(object sender, EventArgs e)
		{
			lblMessage.Text = string.Empty;

			try {
				UpdateFileList();
			} catch (Exception ex) {
				lblMessage.Text = "Please note that this list is not up-to-date" + "</br>";
				lblMessage.Text = "Error: " + ex.Message + "</br>";
                //Send error to raygun rather than as an email message
                new RaygunClient().SendInBackground(ex);

                //string strSubject = "SSW Web Site: Error in page: " + Request.Url.ToString().ToLower();
                //string strEmailMessage = "Error Message: " + ex.Message;
                //strEmailMessage += Constants.vbNewLine + "Stack Trace:" + Constants.vbNewLine + ex.StackTrace;
                //SSW.SSWMT.GlobalFunctions.SendEmail(strEmailMessage, strSubject, ConfigurationManager.AppSettings["SSWInfoEmailAddress"], ConfigurationManager.AppSettings["SSWErrorLogEmailAddress"], System.Net.Mail.MailPriority.Normal, false, string.Empty);

            }


            try {
				XmlDocument doc = new XmlDocument();
				doc.Load(Server.MapPath("./SSWUpdate/NewsLetterList.xml"));

				XslTransform trans = new XslTransform();
				trans.Load(Server.MapPath("./SSWUpdate/NewsLetterList.xsl"));

				xml1.Document = doc;
				xml1.Transform = trans;

			} catch (Exception ex) {
				// file not found or did not get created
				lblMessage.Text += "Error: " + ex.Message + "</br>";
			}
		}



		/// <summary>
		/// Update the File List by looking at the newsetters in the SSWUpdate folder
		/// </summary>

		protected void UpdateFileList()
		{
			DirectoryInfo dirInfo = new DirectoryInfo(Server.MapPath("./SSWUpdate"));
			FileInfo[] files = dirInfo.GetFiles();
			string newsLetterFilePath = Path.Combine(dirInfo.FullName, "NewsLetterList.xml");

			if (!NeedsRegenerate(newsLetterFilePath, files)) {
				return;
			}

			CreateBlankXml(newsLetterFilePath);

			//loop then judge if the fsi is file or directory
			ArrayList lstYear = new ArrayList();
			foreach (FileInfo fi in files) {
				string fileName = fi.Name;

				//split the file name by '_'
				string[] list = fileName.Split(Strings.ChrW(95));
				if ((fileName.Contains("htm") && string.IsNullOrEmpty(list[0]))) {
					if (fileName.Contains("#")) {
						fileName = fileName.Replace("#", "%23");
					}
					if (fileName.Contains("&")) {
						fileName = fileName.Replace("&", "%26");
					}
					if (fileName.Contains("@")) {
						fileName = fileName.Replace("@", "%40");
					}
					string url = ("SSWUpdate/" + fileName.ToString());
					string strDesc = string.Empty;
					if ((list[4].Contains("Do you") || (list[4].Contains("Are you") || (list[4].Contains("What") || (list[4].Contains("Which") || list[4].Contains("When")))))) {
						strDesc = (list[4] + "?");
					} else {
						strDesc = list[4];
					}
					//judge if the year exists in current year list, if not, add it
					if ((isExistYear(lstYear, list[1].ToString()) == false)) {
						lstYear.Add(list[1].ToString());
						WriteYearXml(Server.MapPath("./SSWUpdate/NewsLetterList.xml"), list[1]);
					}
					WriteXml(Server.MapPath("./SSWUpdate/NewsLetterList.xml"), list[1], list[2], list[3], url, strDesc);
				}
				//In the future, if wanna get the files in child-directory, use following code
				//DirectoryInfo dir; //for the future use, put this declare on top with 'FileInfo fi;'
				///or, it is the directory
			}
		}


		/// <summary>
		/// indicate if it's need to regenerate NewsLetters.xml
		/// </summary>
		/// <param name="filePath"></param>
		/// <param name="currentFileCount"></param>
		/// <returns></returns>
		private bool NeedsRegenerate(string xmlFilePath, FileInfo[] filesInFolder)
		{

			DateTime maxFileCreationTime = DateTime.MinValue;
			DateTime xmlFileCreationTime = DateTime.MinValue;

			// The XML file should always be the newest thing in the directory

			foreach (FileInfo fi in filesInFolder) {
				if (xmlFilePath.ToLower().EndsWith(fi.Name.ToLower())) {
					xmlFileCreationTime = fi.CreationTime;

				} else {
					// Newsletter file
					if (fi.CreationTime > maxFileCreationTime) {
						maxFileCreationTime = fi.CreationTime;
					}
				}
			}


			if ((maxFileCreationTime == DateTime.MinValue | xmlFileCreationTime == DateTime.MinValue)) {
				//Response.Write("XML File not found")
				return true;
			}

			return (xmlFileCreationTime < maxFileCreationTime);
		}




		/// <summary>
		/// Get the XML file then clean up
		/// </summary>
		protected void CreateBlankXml(string xmlFilePath)
		{
			if (File.Exists(xmlFilePath)) {
				File.Delete(xmlFilePath);
			}

			XmlDocument myXml = new XmlDocument();
			myXml.LoadXml("<?xml version='1.0' encoding='utf-8'?>" + "<root></root>");
			myXml.Save(xmlFilePath);
		}


		protected void WriteYearXml(string FileName, string year)
		{
			//initialize
			XmlDocument myXml = new XmlDocument();
			//load the xml file
			myXml.Load(FileName);
			XmlAttribute xmlAttYear = myXml.CreateAttribute("year");
			xmlAttYear.Value = year;
			//Add Element Node---newsletter
			XmlElement newElem = myXml.CreateElement("newsletters");
			newElem.SetAttributeNode(xmlAttYear);
			//XmlNode newElem = myXml.CreateNode ("element", "newsletter", "");
			//Add Node Into File
			XmlElement root = myXml.DocumentElement;
			root.AppendChild(newElem);
			//save the file
			myXml.Save(FileName);
		}

		/// <summary>
		/// Write the XML file 
		/// </summary>
		protected void WriteXml(string FileName, string year, string month, string OptionalTitle, string url, string description)
		{
			//initialize
			XmlDocument myXml = new XmlDocument();
			//load the xml file
			myXml.Load(FileName);
			//Add Year Element
			XmlElement ele1 = myXml.CreateElement("year");
			XmlText Text1 = myXml.CreateTextNode(year);
			//Add Month Element
			XmlElement ele2 = myXml.CreateElement("month");
			XmlText Text2 = myXml.CreateTextNode(month);
			//Add Optional Title Element
			XmlElement ele3 = myXml.CreateElement("optionalTitle");
			XmlText Text3 = myXml.CreateTextNode(OptionalTitle);
			//Add URL Element
			XmlElement ele4 = myXml.CreateElement("url");
			XmlText Text4 = myXml.CreateTextNode(url);
			//Add Description Element
			XmlElement ele5 = myXml.CreateElement("description");
			XmlText Text5 = myXml.CreateTextNode(description);
			//Add Element Node---newsletter
			//SSW Code Auditor - Ignore next line (C#)
			XmlNode newElem = myXml.CreateNode("element", "newsletter", "");
			//Add Element into Node
			newElem.AppendChild(ele1);
			newElem.LastChild.AppendChild(Text1);
			newElem.AppendChild(ele2);
			newElem.LastChild.AppendChild(Text2);
			newElem.AppendChild(ele3);
			newElem.LastChild.AppendChild(Text3);
			newElem.AppendChild(ele4);
			newElem.LastChild.AppendChild(Text4);
			newElem.AppendChild(ele5);
			newElem.LastChild.AppendChild(Text5);
			//Add Node Into File
			XmlNode root = myXml.SelectNodes(("//newsletters[@year='" + (year + "']")))[0];
			root.AppendChild(newElem);
			//save the file
			myXml.Save(FileName);
		}

		/// <summary>
		/// Judge if the year exists in current year list 
		/// </summary>
		protected bool isExistYear(ArrayList lstYear, string strCurrentYear)
		{
			foreach (string strYear in lstYear) {
				if ((strYear == strCurrentYear)) {
					return true;
				}
			}
			return false;
		}
		public SSWUpdatePrevious()
		{
			Load += Page_Load;
		}


	}

}
