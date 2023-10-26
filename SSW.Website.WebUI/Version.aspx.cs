using System;
using System.Configuration;
using System.Data;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.TeamFoundation.VersionControl.Client;
using Microsoft.TeamFoundation.Client;
using Microsoft.TeamFoundation.Build.Client;
using Mindscape.Raygun4Net;
using Microsoft.VisualStudio.Services.Client;
using System.Linq;

namespace SSW.Website.WebUI
{

    public partial class Version : Page
    {
        private DateTime _lastDateShown = DateTime.MinValue;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Changeset");
            dt.Columns.Add("Version");
            dt.Columns.Add("Date", typeof(DateTime));
            dt.Columns.Add("Developer");
            dt.Columns.Add("TimeTaken");
            dt.Columns.Add("Notes");
            dt.Columns.Add("Files");

            try
            {
                // Get build data
                var uri = new Uri(ConfigurationManager.AppSettings["TFSServer"]);
                var username = ConfigurationManager.AppSettings["TFSUserName"];
                var password = ConfigurationManager.AppSettings["TFSPassword"];
                var credentials = new VssAadCredential(username, password);
                var defaultCollection = new TfsTeamProjectCollection(uri, credentials);
                defaultCollection.Authenticate();

                var changesetServer = (VersionControlServer)defaultCollection.GetService(typeof(VersionControlServer));
                var connection = new Microsoft.VisualStudio.Services.WebApi.VssConnection(uri, credentials);
                var buildClient = connection.GetClient<Microsoft.TeamFoundation.Build.WebApi.BuildHttpClient>();
                var projectName = ConfigurationManager.AppSettings["TeamProjectName"];
                var buildName = ConfigurationManager.AppSettings["TfsBuildName"];
                var result = buildClient.GetDefinitionsAsync(projectName, name: buildName).Result;
                var definition = result.FirstOrDefault();

                var builds = buildClient.GetBuildsAsync(definition?.Project.Id ?? Guid.Empty, new int[] { definition?.Id ?? 0 },
                    statusFilter: Microsoft.TeamFoundation.Build.WebApi.BuildStatus.Completed,
                    resultFilter: Microsoft.TeamFoundation.Build.WebApi.BuildResult.Succeeded).Result;

                // Go though all the sucessfull builds

                foreach (var build in builds)
                {
                    var changesetId = ((ChangesetVersionSpec)VersionSpec.ParseSingleSpec(build.SourceVersion, null)).ChangesetId;
                    var ts = build.FinishTime?.Subtract(build.StartTime.GetValueOrDefault());

                    DataRow dr = dt.NewRow();
                    dr["Changeset"] = changesetId.ToString();
                    dr["Version"] = string.Empty;
                    // "1.0.22.1234" 'TODO: Get the website version
                    dr["Date"] = build.FinishTime;
                    dr["Developer"] = build.RequestedBy;
                    dr["TimeTaken"] = ts?.Minutes.ToString() + "m " + ts?.Seconds.ToString() + "s";
                    dr["Notes"] = string.Empty;
                    dr["Files"] = string.Empty;

                    // Get the chaneset comments
                    try
                    {
                        var changeset = changesetServer.GetChangeset(changesetId);
                        dr["Notes"] = changeset.Comment.Replace("***NO_CI***", string.Empty);

                        if ((changeset.Changes != null))
                        {
                            foreach (Microsoft.TeamFoundation.VersionControl.Client.Change changedItem in changeset.Changes)
                            {
                                if (changedItem.ChangeType == Microsoft.TeamFoundation.VersionControl.Client.ChangeType.Add | changedItem.ChangeType == Microsoft.TeamFoundation.VersionControl.Client.ChangeType.Edit)
                                {
                                    dr["Files"] = Convert.ToString(dr["Files"]) + changedItem.Item.ServerItem.Replace("$/SSW.Website/trunk/", string.Empty) + "<br/>";
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        new RaygunClient().SendInBackground(ex);
                    }

                    dt.Rows.Add(dr);
                }
            }
            catch (Exception ex)
            {
                new RaygunClient().SendInBackground(ex);
                Response.Write("There was an Error: " + ex.Message);
            }

            gvVersions.DataSource = dt;
            gvVersions.DataBind();
        }

        protected void gvVersions_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime buildDate = Convert.ToDateTime(DataBinder.Eval(e.Row.DataItem, "Date"));
                Label lblDate = (Label)e.Row.FindControl("lblDate");

                if (_lastDateShown.ToShortDateString() != buildDate.ToShortDateString())
                {
                    _lastDateShown = buildDate;
                    lblDate.Visible = true;
                    //lblDate.Text = buildDate.ToString("yyyy-MM-dd")
                    //lblDate.Text = buildDate.ToLongDateString()
                    //Else
                    //    For Each ctl As Control In e.Row.Cells(2).Controls
                    //        ctl.Visible = False
                    //    Next
                }
            }

        }

        public Version()
        {
            Load += Page_Load;
        }
    }
}
