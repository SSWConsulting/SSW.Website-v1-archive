<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.RandomTestimonial" Codebehind="RandomTestimonial.ascx.cs" %>

<asp:PlaceHolder ID="plcNormalLook" Runat="server" Visible="False">
	<div class="containerBox">
	    <blockquote class="productquote"><asp:Label id="lblQuote" Runat="server"></asp:Label>
						    -
			<span class="productspan"><asp:Label id="lblAuthor" Runat="server"></asp:Label> -
			<asp:Label id="lblCompany" Runat="server" ></asp:Label></span>
            </blockquote>
	    <p align="right"> <asp:HyperLink id="lnkMoreTestimonials" Runat="server" NavigateUrl="~/Testimonials/ViewAll.aspx">More Testimonials ...</asp:HyperLink></p>
	</div>
</asp:PlaceHolder>

<asp:PlaceHolder ID="plcTop" Runat="server" Visible="False">
<blockquote class="productquote">
    <asp:label id="lblQuoteTop" Runat="server"></asp:label>
		<span class="productspan">
				<asp:label id="lblAuthorTop" Runat="server"></asp:label>
				<asp:label id="lblSep" Runat="server" text=" - "></asp:label>
				<asp:label id="lblCompanyTop" Runat="server" ></asp:label>
			</span>
</blockquote>
</asp:PlaceHolder>

<asp:PlaceHolder ID="plcSideBarRight" Runat="server" Visible="False">
<blockquote class="productquote">
    <asp:label id="lblQuoteSideRt" Runat="server"></asp:label>
		<span class="productspan">
				<asp:label id="lblAuthorSideRt" Runat="server"></asp:label>
				<asp:label id="lblComma" Runat="server" text="- "></asp:label>
				<asp:Label id="lnkCompanySideRt" Runat="server"></asp:Label>
			</span>
</blockquote>

</asp:PlaceHolder>
<asp:label id="lblError" Runat="server" Visible="false"></asp:label>
<asp:panel ID="plcMaintenance" Runat="server" Visible="False">
	<DIV style="MARGIN-TOP: 1px; MARGIN-LEFT: 15px; margin-bottom : 10px;">
		<asp:hyperlink class="Maintenance" id="lnkAdd" NavigateUrl="~/zsMaintenance/TestimonialModify.aspx"
			text="New" runat="server"></asp:hyperlink>&nbsp;
		<asp:hyperlink class="Maintenance" id="lnkEdit" NavigateUrl="~/zsMaintenance/TestimonialModify.aspx"
			text="Edit" runat="server"></asp:hyperlink></DIV>
</asp:panel>
&nbsp;
