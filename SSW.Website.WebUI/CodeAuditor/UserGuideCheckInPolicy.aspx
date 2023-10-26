<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Screenshots" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <h2><a name="VSAddin"></a>Configuring SSW Code Auditor Check-In Policy</h2>
    When you start SSW CodeAuditor you can register the Check-In Policy following the steps below<br>
    <ol>
        <li>
            <p>
                Go to CodeAuditor main window, click on "Tools" and then "Options"<br>
                <img src="Images/CheckInPolicy1.gif" alt="SSW Code Auditor Check-In Policy Registration Step 1">
                <br>
                <b>Figure: SSW CodeAuditor option menu</b>
            </p>
            <li>
                <p>
                    Go to "Check-in Policy" tab and then click on "Register" button<br>
                    <img src="Images/CheckInPolicy2.gif" alt="SSW Code Auditor Check-In Policy Registration Step 2">
                    <br>
                    <b>Figure: "Check-in Policy" tab</b>
                </p>
            </li>
            <li>
                <p>
                    When you get the green tick click "Ok"<br>
                    <img src="Images/CheckInPolicy3.gif" alt="SSW Code Auditor Check-In Policy Registration Step 3">
                    <br>
                    <b>Figure: Registration sucessful</b>
                </p>
            </li>
            <li>
                <p>
                    Go to Visual Studio 2010 "Team Explorer" tab, select the project which you want to add SSW CodeAuditor Check-In Policy, select "Team Project Settings" and then "Source Control"<br>
                    <img src="Images/CheckInPolicy4.gif" alt="SSW Code Auditor Check-In Policy Registration Step 4">
                    <br>
                    <b>Figure: Visual Studio 2010 "Team Explorer"</b>
                </p>
            </li>
            <li>
                <p>
                    Select the "Check-in Policy" tab then "add"<br>
                    <img src="Images/CheckInPolicy5.gif" alt="SSW Code Auditor Check-In Policy Registration Step 5">
                    <br>
                    <b>Figure: Add the Policy</b>
                </p>
            </li>
            <li>
                <p>
                    Select "SSW CodeAuditor" Policy and then "Ok"<br>
                    <img src="Images/CheckInPolicy6.gif" alt="SSW Code Auditor Check-In Policy Registration Step 6">
                    <br>
                    <b>Figure: Select the SSW CodeAuditor Registered Policy</b>
                </p>
            </li>
            <li>
                <p>
                    Select the DataBase Path<br>
                    <img src="Images/CheckInPolicy7.gif" alt="SSW Code Auditor Check-In Policy Registration Step 7">
                    <br>
                    <b>Figure: Database Path </b>
                </p>
            </li>
            <li>
                <p>
                    Click "Ok"<br>
                    <img src="Images/CheckInPolicy8.gif" alt="SSW Code Auditor Check-In Policy Registration Step 8">
                    <br>
                    <b>Figure: Policy added</b>
                </p>
            </li>
            <li>
                <p>
                    The Policy will scan your pending files in every check-in<br>
                    <img src="Images/CheckInPolicy9.gif" alt="SSW Code Auditor Check-In Policy Registration Step 9">
                    <br>
                    <b>Figure: Policy reviewing the files before check-in</b>
                </p>
            </li>
    </ol>
</asp:Content>
