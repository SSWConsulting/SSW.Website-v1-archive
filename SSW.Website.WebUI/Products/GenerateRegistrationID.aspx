
<%@ Page Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Generate Registration ID" Inherits="SSW.Website.WebUI.Products.GenerateRegistrationID" Codebehind="GenerateRegistrationID.aspx.cs" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

			<P>
                &nbsp;</P>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:Panel ID="pnlShowKey" runat="server" Height="159px" Width="679px">
        <img src="../Images/tick.png" style="vertical-align:middle"/>
        Your Registration ID has been generated successfully.<br />
        <br />
        <div class="greyBox" >
        <asp:Label ID="Label10" runat="server" Text="Client:" Width="100px"></asp:Label>
        <asp:Label ID="lblClientname" runat="server" Width="312px"></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Text="Client ID:" Width="100px"></asp:Label>
        <asp:Label ID="lblClientID" runat="server" Width="312px"></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="Product: " Width="104px"></asp:Label>
        <asp:Label ID="lblProductname" runat="server" Width="316px"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Registration ID: " Width="104px"></asp:Label>
        <b><asp:Label ID="lblUnlockID" runat="server" Width="319px"></asp:Label></b></div>
       <br />
        <asp:Label ID="LblLink" runat="server" Text="Now <a href='http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1940313'>complete your registration.</a>"></asp:Label>&nbsp;
    </asp:Panel>
    <asp:Panel ID="pnlShowError" runat="server" Height="238px" Width="679px">
        <img src="../Images/cross.png" style="vertical-align:middle" /> <asp:Label ID="lblErrorMessage" runat="server">Sorry, you are not currently registered for this product. We cannot give you a Registration ID.</asp:Label><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/ssw/Products/prodsummarylist.aspx">Purchase product now</asp:HyperLink><br />
        <br />
        If you believe you are entitled to a Registration ID then <a onclick="javascript:sendEmailWithSubjectAndBody('696e666f407373772e636f6d2e6175','Request for a Registration ID','<<Please enter your detais below&#62;&#62;%0A%0AHi SSW,%0A%0AI have tried to generate a Registration ID through the SSW website, but was not successful. Can you please verify my details below and send me my Registration ID.%0A%0AName:%0AProduct Name:%0AEmail Address:%0ATelephone Number:%0ACompanyName:',this)"  category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer" >696e666f72407373772e636f6d2e6175 </a>
        now.</asp:Panel>
			<br />
			<br />
			<P>
                &nbsp;</P>
				
	
</asp:content>