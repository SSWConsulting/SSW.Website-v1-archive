<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Do you know how to be a good daily Code Auditor build master" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <div>
        <h2>Do you know how to be a good daily Code Auditor build master?</h2>
        <ol type="1">
            <li>Make sure Code Auditor is running every night. </li>
            <li>Have a proper handover from Code Auditor product managers about what to be done to get Code Auditor to zero.</li>
            <li>Refer and include to <a href="http://www.ssw.com.au/ssw/StandardsInternal/InductionTraining/EmployeeResponsibilities.aspx">Employee Responsibilties page.</a> </li>
        </ol>
        <br />
        See <a href="http://www.ssw.com.au/ssw/codeauditor/Default.aspx">Code Auditor Main Page.</a>
        <br />
    </div>

    <h2>Acknowledgements</h2>

    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
    <br />
</asp:Content>
