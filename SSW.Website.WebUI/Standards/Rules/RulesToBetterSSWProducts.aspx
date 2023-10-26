<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better SSW Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="TableOfContents" summary="Index">
        <b>Rules to Better SSW Products</b>
        <ol>
            <li><a href="#CAorLA">Do they go in Code Auditor or Link Auditor?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="CAorLA" id="CAorLA"></a>Do they go in Code Auditor or Link Auditor?</h2>
                <p>
                    <a href="/ssw/CodeAuditor/Default.aspx#Rules">Code Auditor</a> looks at source code
                    and checks:
                    <ul>
                        <li>All coding issues (eg. C#, VB.NET, SQL Reporting Services etc)</li>
                        <li>Structure issues (eg. Directory names, file names etc)</li>
                    </ul>
                </p>
                <p>
                    <a href="/ssw/LinkAuditor/Default.aspx#Rules">Link Auditor</a> looks at source code
                    and checks:
                    <ul>
                        <li>Bad links</li>
                        <li>Any bad HTML (e.g often formatting issues)</li>
                        <li>Any bad HTML that affect Google juice</li>
                    </ul>
                    Note: Link Auditor downloads the whole HTML page so it can check all the hyperlinks,
                    so checking the source HTML causes no extra bandwidth.
                </p>
            </li>
        </ol>
    </div>
    <br />
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>
