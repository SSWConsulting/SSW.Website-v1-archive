
<%@ Page Language="C#" AutoEventWireup="false" validateRequest="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Hosting Database Edit" Inherits="SSW.Website.WebUI.hosting.DatabaseEdit" Codebehind="DatabaseEdit.aspx.cs" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				
		
			<TABLE borderColor="#ff0000" cellSpacing="2" cellPadding="2" width="100%" border="2">
				<TR borderColor="#efefef" bgColor="#efefef">
					<TD align="right" height="10"><B>&nbsp;Server</B>
					</TD>
					<TD align="center" width="100" height="10"><asp:textbox id="txtServer" tabIndex="10" runat="server" Width="100%" Height="24px" Font-Names="Verdana">Seal</asp:textbox></TD>
					<TD align="right" height="10"><B>&nbsp;Database</B>
					</TD>
					<TD align="center" width="100" height="10"><asp:textbox id="txtDatabase" tabIndex="20" runat="server" Width="100%" Height="24px" Font-Names="Verdana"></asp:textbox></TD>
					<TD noWrap align="right" height="10"><B>&nbsp;User ID</B>
					</TD>
					<TD align="center" width="100" height="10"><asp:textbox id="txtUserID" tabIndex="30" runat="server" Width="100%" Height="24px" Font-Names="Verdana"></asp:textbox></TD>
					<TD align="right" height="10"><B>&nbsp;Password</B>
					</TD>
					<TD align="center" width="100" height="10"><asp:textbox id="txtPassword" tabIndex="40" runat="server" Width="100%" Height="24px" TextMode="Password"
							Font-Names="Verdana"></asp:textbox></TD>
				</TR>
				<TR borderColor="#efefef" bgColor="#efefef">
					<TD align="right" height="50"><B>&nbsp;SQL
							<br>
							&nbsp;Commands</B>
					</TD>
					<TD align="center" colSpan="6" height="50"><asp:textbox id="txtSQL" tabIndex="50" runat="server" Width="100%" Height="46px" TextMode="MultiLine"
							Font-Names="Verdana"></asp:textbox></TD>
					<TD align="center"><b>Return Data</b>
						<br>
						<asp:checkbox id="chkReturnData" tabIndex="55" runat="server" Checked="True"></asp:checkbox></TD>
				</TR>
				<TR borderColor="#efefef" bgColor="#efefef">
					<TD></TD>
					<TD align="center"><asp:button id="btnExecuteSQL" tabIndex="60" runat="server" Width="100%" Font-Names="Verdana"
							Text="Execute"></asp:button></TD>
					<TD align="center" colSpan="5"><asp:label id="lblMessage" runat="server" EnableViewState="False"></asp:label></TD>
					<td align="center"><A href="/ssw/Redirect/w3school-SQL.htm" target="_blank"> <STRONG>SQL 
								Tutorial</STRONG></A>
					</td>
				</TR>
			</TABLE>

			<asp:datagrid id="dgd" runat="server" Font-Names="Verdana" EnableViewState="False" BorderStyle="Solid"
					OnPageIndexChanged="dgd_PageIndexChanged" PagerStyle-PageButtonCount="10" PagerStyle-Mode="NumericPages"
					PageSize="50" OnEditCommand="dgd_Edit" OnCancelCommand="dgd_Cancel" OnUpdateCommand="dgd_Update"
					AllowPaging="True" GridLines="None" BorderColor="Red" BorderWidth="2px" CellSpacing="-1">
					<AlternatingItemStyle BackColor="#EFEFEF"></AlternatingItemStyle>
					<ItemStyle BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" BackColor="#EFEFEF"></HeaderStyle>
					<PagerStyle Mode="NumericPages"></PagerStyle>
				</asp:datagrid>
				</asp:content>