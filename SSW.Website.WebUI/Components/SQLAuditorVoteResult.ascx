<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="SQLAuditorWhoVotedBox.ascx.cs" Inherits="SSW.Website.WebUI.Components.SQLAuditorWhoVotedBox" %>
<table class=smallFont width=100% cellpadding=0 cellspacing=0>
<td width=360px>
    <table class=smallFont width=100% cellpadding=0 cellspacing=0>
    <tr height=12px >
    <td width=150px><b>Voted Stat.</b></td><td colspan=2 align=right style="padding-right:24px;">Total&nbsp;<%=RowCount %>&nbsp;votes&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>

    <tr valign=middle height=16px >
    <td><img src=/ssw/images/vote0.png align=absmiddle />&nbsp;Agree</td><td width=100px><div class=SAVoteBar_s style="width:<%=GetBarLength(0,100) %>px; <%=iif(GetBarLength(0)=0,"visibility:hidden;","") %> "></div></td><td>&nbsp;&nbsp;<%=GetVotesPercentString(0)%> (<%=GetVotesNumber(0)%>)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=16px >
    <td><img src=/ssw/images/vote1.png align=absmiddle />&nbsp;Disgree</td><td><div class=SAVoteBar_s style="width:<%=GetBarLength(1,100) %>px; <%=iif(GetBarLength(1)=0,"visibility:hidden;","") %> "></div></td><td>&nbsp;&nbsp;<%=GetVotesPercentString(1)%> (<%=GetVotesNumber(1)%>)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=16px >
    <td><img src=/ssw/images/vote2.png align=absmiddle />&nbsp;Too hard to implement</td><td><div class=SAVoteBar_s style="width:<%=GetBarLength(2,100) %>px; <%=iif(GetBarLength(2)=0,"visibility:hidden;","") %> "></div></td><td>&nbsp;&nbsp;<%=GetVotesPercentString(2)%> (<%=GetVotesNumber(2)%>)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=16px >
    <td><img src=/ssw/images/vote3.png align=absmiddle />&nbsp;Don't care</td><td><div class=SAVoteBar_s style="width:<%=GetBarLength(3,100) %>px; <%=iif(GetBarLength(3)=0,"visibility:hidden;","") %> "></div></td><td>&nbsp;&nbsp;<%=GetVotesPercentString(3)%> (<%=GetVotesNumber(3)%>)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=16px >
    <td><img src=/ssw/images/vote9.png align=absmiddle />&nbsp;Don't know</td><td><div class=SAVoteBar_s style="width:<%=GetBarLength(9,100) %>px; <%=iif(GetBarLength(9)=0,"visibility:hidden;","") %> "></div></td><td>&nbsp;&nbsp;<%=GetVotesPercentString(9)%> (<%=GetVotesNumber(9)%>)</td>
    </tr>
  </table>

</td>
<td width=50px></td>
<td width=350px valign=top>
   <table class=smallFont width=100% cellpadding=0 cellspacing=0>
   <% If ImplementationRowCount > 0 Then%>
    <tr valign=middle height=12px >
    <td width=145px><b>Implemented Stat.</b></td><td colspan=2 align=right>Total&nbsp;<%=ImplementationRowCount%> databases</td>
    </tr>
    <tr valign=middle height=16px >
    <td><img src=/ssw/images/pass.png align=absmiddle />&nbsp;Implemented</td><td width=100px><div class=SAVoteBar_s style="width:<%=ImplementedCount*100/ImplementationRowCount %>px; <%=iif(ImplementedCount=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=(ImplementedCount/ImplementationRowCount).ToString("P0")%> (<%=ImplementedCount %>)</td>
    </tr>
    
    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=16px >
    <td><img src=/ssw/images/error.png align=absmiddle />&nbsp;Not implemented</td><td width=100px><div class=SAVoteBar_s style="width:<%=NotImplementedCount*100/ImplementationRowCount %>px; <%=iif(NotImplementedCount=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=(NotImplementedCount/ImplementationRowCount).ToString("P0")%> (<%=NotImplementedCount%>)</td>
    </tr>
    <%  Else
            %>
    <tr valign=middle height=12px >
    <td width=140px><b>Implemented Stat.</b></td><td colspan=2></td>
    </tr>
    <tr valign=middle height=16px >
    <td colspan=3 style="color:Red;"><b>SQL Auditor hasn't implemented this rule yet.</b></td>
    </tr>
    <tr valign=middle height=16px >
    <td colspan=3></td>
    </tr>
    <% end if %>
    <tr valign=middle height=16px >
    <td colspan=3></td>
    </tr>
    <tr valign=middle height=16px >
    <td colspan=3 align=center>Thanks for your vote.<br /><img src=/ssw/images/chart.png align=absmiddle />&nbsp;<a href=/ssw/sqlauditor/voteresult.aspx?WebsiteRuleID=<%=m_websiteRuleID %> target=_blank>More Stat.</a></td>
    </tr>
  </table>
</td>
</tr>
</table>