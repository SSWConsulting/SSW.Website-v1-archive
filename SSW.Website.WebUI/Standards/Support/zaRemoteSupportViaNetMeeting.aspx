<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Contact us using NetMeeting"  %>
<%@ Register TagPrefix="uc1" TagName="OpenTime" Src="~/Components/OpenTime.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
 <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
		<asp:label id="lblWelcome" runat="server"></asp:label><p>
		<h2>Contact us using NetMeeting</h2>
		<br>
		
		<p>
		<!--'SSW Code Auditor - Ignore next line -->
		<object ID=NetMeeting CLASSID="CLSID:3E9BAF2D-7A79-11d2-9334-0000F875AE17">
		<PARAM NAME = "MODE" VALUE = "DataOnly"> </object>
		<BR><BR>
		<input type=button value ="callto:"id=CallToBtn onclick=NetMeeting.CallTo(CallToAddress.value)>
		<input type=text id=CallToAddress size="20">
		<input type=button value ="Hangup"id=HangUpBtn onclick=NetMeeting.LeaveConference()>


		</p>
	
</asp:content>