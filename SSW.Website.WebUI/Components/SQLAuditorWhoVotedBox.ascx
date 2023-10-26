<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="SQLAuditorWhoVotedBox.ascx.cs" Inherits="SSW.Website.WebUI.Components.SQLAuditorWhoVotedBox" %>
<%@ Register TagPrefix="ssw" TagName="SQLAuditor" Src="GetSQLAuditor.ascx" %>

  <h2>Rule: <%=RuleTitle%> <a href="<%=RuleURL%>">more</a></h2>
<table width=660px>
<tr height=32px valign=middle>
<td colspan=2>
<b>Voted Stat.</b><hr />
</td>
</tr>

<tr>
<td width=656px>
    <table width=100%>
    <tr valign=middle height=32px >
    <td width=170px><img src=/ssw/images/vote0.png align=absmiddle />&nbsp;Agree</td><td width=200px><div class=SAWhoVoteBar style="width:<%=GetBarLength(0) %>px; <%=iif(GetBarLength(0)=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=GetVotesPercentString(0)%> (<%=GetVotesNumber(0) %> votes)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td><img src=/ssw/images/vote1.png align=absmiddle />&nbsp;Disgree</td><td><div class=SAWhoVoteBar style="width:<%=GetBarLength(1) %>px; <%=iif(GetBarLength(1)=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=GetVotesPercentString(1)%> (<%=GetVotesNumber(1)%> votes)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td><img src=/ssw/images/vote2.png align=absmiddle />&nbsp;Too hard to implement</td><td><div class=SAWhoVoteBar style="width:<%=GetBarLength(2) %>px; <%=iif(GetBarLength(2)=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=GetVotesPercentString(2)%> (<%=GetVotesNumber(2) %> votes)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td><img src=/ssw/images/vote3.png align=absmiddle />&nbsp;Don't care</td><td><div class=SAWhoVoteBar style="width:<%=GetBarLength(3) %>px; <%=iif(GetBarLength(3)=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=GetVotesPercentString(3)%> (<%=GetVotesNumber(3)%> votes)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td><img src=/ssw/images/vote9.png align=absmiddle />&nbsp;Don't know</td><td><div class=SAWhoVoteBar style="width:<%=GetBarLength(9) %>px; <%=iif(GetBarLength(9)=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=GetVotesPercentString(9)%> (<%=GetVotesNumber(9) %> votes)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td></td><td align=right><b>Total:</b></td><td valign=middle>&nbsp;&nbsp;<b>100% (<%=RowCount %> votes)</b></td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    </table>

</td>
<td>
</td>
</tr>

<tr height=12px valign=middle>
<td colspan=2></td>
</tr>

<%  If (ImplementationRowCount > 0) Then%>

<tr height=32px valign=middle>
<td colspan=2>
<b>Implementation Stat.</b><hr />
</td>
</tr>

<tr>
<td width=656px>
<b>This rule has been processed on <%=ImplementationRowCount%> databases with <a href="/ssw/sqlauditor/">SQL Auditor</a>.</b><br />
    <table width=100%>
    <tr valign=middle height=32px >
    <td width=160px><img src=/ssw/Standards/Images/OurTicksCrosses/new_status_pass.png align=absmiddle />&nbsp;Implemented</td><td width=200px><div class=SAWhoVoteBar style="width:<%=ImplementedCount*200/ImplementationRowCount %>px; <%=iif(ImplementedCount=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=(ImplementedCount/ImplementationRowCount).ToString("P0")%> (<%=ImplementedCount %> databases)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td width=160px><img src=/ssw/images/error.png align=absmiddle />&nbsp;Not implemented</td><td width=200px><div class=SAWhoVoteBar style="width:<%=NotImplementedCount*200/ImplementationRowCount %>px; <%=iif(NotImplementedCount=0,"visibility:hidden;","") %> "></div></td><td valign=middle>&nbsp;&nbsp;<%=(NotImplementedCount/ImplementationRowCount).ToString("P0")%> (<%=NotImplementedCount%> databases)</td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    <tr valign=middle height=32px >
    <td></td><td align=right><b>Total:</b></td><td valign=middle>&nbsp;&nbsp;<b>100% (<%=ImplementationRowCount%> databases)</b></td>
    </tr>

    <tr height=1px><td colspan=3 bgcolor=#dddddd></td></tr>
    </table>
</td>
<td></td>
</tr>
<tr valign=middle>
<td colspan=2>
<ssw:SQLAuditor id="SQLAuditorBox1" runat="server"></ssw:SQLAuditor>
</td>
</tr>

<tr height=12px valign=middle>
<td colspan=2></td>
</tr>

<%End If%>

<tr height=32px valign=middle>
<td colspan=2>
<b>Who Voted:</b><hr />
</td>
</tr>

<tr>
<td>
    <table width=616px class="clsSSWTable" style="font-size: xx-small;" border="0" bordercolor="#999999" cellpadding="3" cellspacing="0" rules="cols">

    <tr>
    <th>From</th>
    <th>Opinion</th>
    <th>Voted Date</th>
    <th>From IP</th>
    </tr>

    <asp:Repeater ID=WhoVotedRepeater runat=server>
    
    <ItemTemplate>
				    <tr style="background-color: white;">
					    <td><%#DataBinder.GetPropertyValue(Container.DataItem, "SSWContactName")%></td>
					    <td><%#GetCaption(DataBinder.GetPropertyValue(Container.DataItem, "RuleOpinionID"))%></td>
					    <td><%#DataBinder.GetPropertyValue(Container.DataItem, "DateUpdated")%></td>
					    <td><%#DataBinder.GetPropertyValue(Container.DataItem, "FromIP")%></td>
				    </tr>
    </ItemTemplate> 

    <AlternatingItemTemplate>
				    <tr style="background-color:rgb(239, 235, 222);">
					    <td><%#DataBinder.GetPropertyValue(Container.DataItem, "SSWContactName")%></td>
					    <td><%#GetCaption(DataBinder.GetPropertyValue(Container.DataItem, "RuleOpinionID"))%></td>
					    <td><%#DataBinder.GetPropertyValue(Container.DataItem, "DateUpdated")%></td>
					    <td><%#DataBinder.GetPropertyValue(Container.DataItem, "FromIP")%></td>
				    </tr>
    </AlternatingItemTemplate>

    
    </asp:Repeater>

    </table> 

</td>
<td></td>
</tr>
</table>

