<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="User Guide" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">



    <img src="Images/CodeAuditorLogo.gif" alt="Code Auditor Logo" align="right" width="195" height="82">
    <b>Validating and Optimising Your SQL Server Reporting Services Files Using SSW Code Auditor</b>

    <p>
        Microsoft&reg; SQL Server&trade;
Reporting Services is a new reporting platform that has even more functionality
and flexibility than Microsoft Access and Crystal
developers have become accustomed to. In addition, it combines the speed,
scalability, and manageability of centrally managed reporting, as reporting has
moved from the client model to the client-server model, which brings all the
advantages of Web-based applications.
    </p>

    <p>
        This guide shows you how to use <a href="/ssw/CodeAuditor">SSW Code Auditor</a> to validate your Reporting Services Report Definition Language (RDL)
		files against a set of rules. These rules check your RDL files for:
		<ol>
            <li>Shared data connection strings
		<li>Optimised data queries
		<li>
            Build warnings
        </ol>
        <p>
            <h2>Building Regular Expressions</h2>
            <p>
                Because RDL files are simply plain text
files, SSW Code Auditor can be run with certain regular expressions to ensure reports follow your company
standards. Regular expressions are a very powerful set of rules used to check for such things as valid phone numbers or the presence or absence of a string within another string.

                <p>
                    For example, to ensure all reports are using a shared data source
and do not have the connection string behind the report, you could run a
regular expression like this:
                </p>
                <p>
                    <blockquote>
                        <span style='font-size: 10.0pt; font-family: "Courier New"; mso-ansi-language: EN-US'>&lt;ConnectString&gt;.*&lt;/ConnectString&gt;<o:p></o:p></span>
                    </blockquote>
                </p>
                <p>
                    The following example shows how you would define the above regular expression and run it on your RDL files.
                </p>

                <h2>User Guide</h2>

                <p>
                    Proceed to the &quot;Select Job&quot; screen in SSW Code Auditor.
                </p>
                <p>
                    Click &quot;Add&quot; to create a new job. Call the job &quot;RDL Checker&quot; as shown
                </p>

                <img src="Images/RSUserGuide/001.gif" alt="" width="560" height="460">

                <p>
                    Proceed to the next screen, and click the &quot;Add...&quot; button to browse for the folder containing the RDL files as
shown below. The location will usually be in &quot;My Documents/Visual
Studio Projects&quot;, under the folder name of the report project you created.

                </p>

                <img src="Images/RSUserGuide/002.gif" alt="" width="624" height="562">
                <p>
                    Click <i>OK</i>
                    then <i>Next</i> on the following screen to
show the &quot;Rule Definition&quot; screen. Click <i>Add</i>
                    to add a new rule, then choose the &quot;Create a new rule&quot; option button. Call it
&quot;Check Connection String&quot;, then click <i>Add</i>
                    as shown below.</span>
                </p>

                <img src="Images/RSUserGuide/003.gif" alt="" width="560" height="460">
                <img src="Images/RSUserGuide/003b.gif" alt="" width="514" height="499">

                <p>
                    Enter &quot;*.rdl&quot; into the &quot;Search in&quot; box to specify
which files to check, because you do not want to check files other than the RDL
report files which may exist in the specified folder. To check for the
existence of a connection string in the RDL file, enter the regular expression
&quot;&lt;ConnectString&gt;.*&lt;/ConnectString&gt;&quot;. Then choose &quot;Should Not Exist&quot;
from the dropdown list, because you want to ensure that the connection string
tag <i>does not</i> exist in the report
files, i.e. a shared data source is being used.</span>
                    <p>
                        <img src="Images/RSUserGuide/004.gif" alt="" width="506" height="387">

                        <p>
                            Click <i>Next</i>
                            twice to show the Start Process screen. Click <i>Start</i> to begin scanning your report files.</span>
                        </p>
                        <p>
                            <img src="Images/RSUserGuide/005.gif" alt="" width="560" height="460">
                        </p>
                        <p>
                            Click <i>View
Report</i> on the resulting page to see which files were OK and which did not
conform to the rules you specified.
                        </p>
                        <img src="Images/RSUserGuide/006.gif" alt="" width="500" height="415">
                        <p>
                            The report shows all files that <i>did not</i> pass the validation rules you specified. These files now need to be fixed. In the case of this example, 
the reports need to be modified to use a shared data source. For more information on fixing your Reporting Services reports, please see 
                            <a href="/ssw/Standards/DeveloperSQLReportingServices/">SQL Reporting Services for Developers</a>.
                        </p>
                        <p>
                            You can also create rules for the following conditions to validate your RDL files:
                            <table class="clsSSWTable">
                                <tr>
                                    <th>Rule
                                    </th>
                                    <th>Regular Expression
                                    </th>
                                </tr>
                                <tr>
                                    <td>A connection string was found in the report. All data
connection information should be removed from every report and moved to a
Shared Data Source Item in the Report Project.
                                    </td>
                                    <td>&lt;ConnectString&gt;.*&lt;/ConnectString&gt;
                                    </td>
                                </tr>
                                <tr>
                                    <td>The SQL query used for the report data should not
contain &quot;SELECT *&quot;, because it is an inefficient method of selecting data. Only
the fields required for the report should be retrieved, e.g. &quot;SELECT ID,
FirstName, LastName, PhoneNumber&quot;
                                    </td>
                                    <td>(?i:SELECT) \*
                                    </td>
                                </tr>
                                <tr>
                                    <td>Build warnings should not exist in the report. These
warnings are typically caused when importing unsupported report items from
Access into Reporting Services, and appear as XML comments in the RDL file.
                                    </td>
                                    <td>lt;!-- (?i:Warning).*--&gt;
                                    </td>
                                </tr>
                            </table>
                        </p>
                        <p>
                            For more information on writing regular expressions, please see <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor links</a>.
                        </p>
</asp:Content>
