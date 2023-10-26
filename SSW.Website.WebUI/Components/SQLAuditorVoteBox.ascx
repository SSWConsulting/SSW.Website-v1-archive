<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="SQLAuditorVoteBox.ascx.cs" Inherits="SSW.Website.WebUI.Components.SQLAuditorVoteBox" EnableViewState="false" %>

<div id="DivContent" class="greyBox" style="width:760px;font-size:8pt;" runat="server">
<table class=smallFont id="tblContent" width=100% runat="server">
<%--<tr>a
    <td colspan="2">
        <label id="BoxTitle" style="border-width:0; display:none">About this rule:</label></td>
</tr>--%>
    <tr>
        <td><asp:RadioButton ID="ctrlAgree" runat="server"  Text="Agree"  GroupName="vote" /></td>
        <td><asp:RadioButton ID="ctrlDisagree" runat="server" Text="Disagree"  GroupName="vote" /></td>
        <td><asp:RadioButton ID="ctrlHardToImplement" runat="server" Text="Too hard to implement" GroupName="vote" /></td>
        <td><asp:RadioButton ID="ctrlIgnored" runat="server" Text="Don't care" GroupName="vote" /></td>
        <td><asp:RadioButton ID="ctrlDontUnderstand" runat="server" Text="Don't understand" GroupName="vote" /></td> 
    </tr>
       <tr>
        <td colspan=5 align="center" style="padding-top:12px;" valign=middle>
        <input type="button" runat="server" id="btnSubmit" value="Submit"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=/ssw/images/chart.png align=absbottom />&nbsp;<a href=/ssw/sqlauditor/voteresult.aspx?WebsiteRuleID=<%=WebsiteRuleID %> target=_blank>see results</a>
        </td>  
    </tr> 
</table>
</div>
