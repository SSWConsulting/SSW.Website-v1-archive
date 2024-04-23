<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Screenshots" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>SSW Code Auditor Screenshots</h2>
    <ul>
        <li><a href="#RunCodeAud"> Running SSW Code Auditor Wizard</a></li>
        <li><a href="#CreateRule"> Creating New Rule</a></li>
        <li><a href="#ExpressBuilder">Creating Regular Expression</a></li>
        <li><a href="#ClearReports"> Clearing Reports</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <ol>
        <li>
            <h2><a name="RunCodeAud"></a>Running SSW Code Auditor Wizard</h2>
            <p>
                When you run the SSW Code Auditor there will be a step by step wizard to guide you through the 
		audit process.
            </p>

            <img src="Images/CodeAuditorWelcomeScreen.gif" alt="Code Auditor Welcome Screen" width="550" height="459"><br>
            <b>Figure: Run SSW Code Auditor.</b><br>
            <br>

            <img src="Images/selectJob.gif" alt="Select Job" width="550" height="459"><br>
            <b>Figure: Select a predefined Job, or create a new one.</b><br>
            <br>

            <img src="Images/selectFiles.gif" alt="Select Files" width="550" height="459"><br>
            <b>Figure: Set files, folders and URLs to check.</b><br>
            <br>

            <img src="Images/selectRules.gif" alt="Select Rules" width="550" height="459"><br>
            <b>Figure: Select the rules you want to run.</b><br>
            <br>

            <img src="Images/EmailSchedule.gif" alt="Email Schedule" width="550" height="459"><br>
            <b>Figure: Indicate where you'd like the report issued to.</b><br>
            <br>

            <img src="Images/startProcess.gif" alt="Start Process" width="550" height="459"><br>
            <b>Figure: Press the start button.</b><br>
            <br>

            <img src="Images/CommandLine.gif" alt="Start Process" width="550" height="459"><br>
            <b>Figure: Command line.</b><br>
            <br>

            <img src="Images/Finished.gif" alt="Finished" width="550" height="459"><br>
            <b>Figure: Select how you would like to view the Report and Finish.</b>
            <br>
            <br>
            <br>
            <br>
        </li>
        <li>
            <h2><a name="CreateRule"></a>Creating New Rule</h2>
            <p>To create a new rule for a Job:</p>
            <ol>

                <li>Select the designated Job and click next to the Rules Definition page</li>
                <li>Click Add on the bottom of the Rules list box</li>
                <li>Select &quot;Create a new rule&quot; from the radio option and enter name for the 
	new rule<br>

                    <img src="Images/CreateRule1.gif" alt="Creating your rule" width="550" height="459"></li>
                <li>Select the new rule from the Rules list box</li>
                <li>Enter a regular expression in the search-in field to filter the files 
	this rule run on</li>
                <li>Enter the regular expression used by this rule</li>
                <li>Set if the regular expression should match in the scanned file<br>

                    <img src="Images/CreateRule2.gif" alt="Setting up your rule" width="550" height="459"></li>
                <li>Describe what this rule is checking and why this rule exists<br>

                    <img src="Images/CreateRule3.gif" alt="Document your rule" width="550" height="459"></li>
            </ol>
            <br>
            <br>
            <br>
        </li>
        <li>
            <h2><a name="ExpressBuilder"></a>Create Regular Expression</h2>
            <p>The following images show how to create your expression. </p>
            <img src="Images/regwiz1.gif" alt="Regular Expression Wizard" width="544" height="478"><br>
            <b>Figure: SSW Code Auditor also comes with an easy to use yet powerful Regular Expression wizard.  
		You can use it to build patterns if you are not familiar with regular expressions.</b><br>
            <br>
            <img src="Images/regwiz2.gif" alt="Regular Expression Wizard 2" width="544" height="478"><br>
            <b>Figure: For the advanced users, the wizard provides a complete testing ground for all the features
		of .NET Regular Expressions, as well as two test areas (sand box) for you to test in one go.</b><br>
            <br>
            <img src="Images/regwiz3.gif" alt="Regular Expression Wizard 3" width="544" height="478"><br>
            <b>Figure: Finally, the wizard also shows you any group matchings, this information is not directly
		used in Code Auditor, but it is quite useful elsewhere especially if you work with regular expressions
		quite a bit!</b><br>
            <br>
            <b>Code Segment:</b> If you want SSW Code Auditor to skip over code (i.e. you are 
		intentionally transgressing some of your own rules) add the following 
		code to the line above your code: 				
		<br>
            <code>&lt!--SSW Code Auditor - Ignore next line--&gt
            </code>
            <br>
            <p>For more information on regular expressions see <a href="Resources.aspx">this page</a>.</p>
            <br>
        </li>
        <li>
            <h2><a name="ClearReports"></a>Clearing Reports</h2>
            <p>
                <img src="Images/SampleReport.gif" alt="Sample Report" border="1" width="671" height="650"><br>
                <b>Figure: SSW Code Auditor - Job Report</b>
            </p>
        </li>
    </ol>
</asp:Content>
