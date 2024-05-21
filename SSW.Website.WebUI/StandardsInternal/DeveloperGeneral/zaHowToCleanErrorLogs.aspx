<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="How to clean website error logs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h2>
        This folder is cleaned to zero every morning by the web master</h2>
    <p>
        Each morning these are the steps:
    </p>
    <ul>
        <li>We don't estimate the items in this folder, Please move the items under this folder
            to the proper product folder and then estimate and action. </li>
        <li>Work from the most recent error and try to reproduce it. </li>
        <li>Fix it. </li>
        <li>Follow the <a href="/ssw/Standards/Rules/RulesToBetterEmail.aspx#ReplyBug">standard of how to reply a bug</a>, reply to James Zhou and CC Lei Xu and Adam </li>     
        <li>Delete this error and all related ones. </li>
        <li>
            <p>At the end, send a summary email to James Zhou with following information:</p>
            <ul>
                <li>Server Name</li>
                <li>How many errors you fixed</li>
                <li>How many errors are remained</li>
                <li>How long have you spent to fix or investigate</li>
            </ul>
        </li>
    </ul>
    <p>
        <strong>Current Webmaster is David and Wilson.</strong>
    </p>
    <p>
        See <a href="/ssw/standardsInternal/InductionTraining/EmployeeResponsibilities.aspx">
            Employee Responsibilities</a> for employee responsibilities.</p>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/SSW/Employees/employeesprofile.aspx?EmpID=JZ">James Zhou</a><br>
    </p>
</asp:Content>
