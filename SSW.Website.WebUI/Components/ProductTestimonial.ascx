<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="ProductTestimonial.ascx.cs" Inherits="SSW.Website.WebUI.Components.ProductTestimonial" %>
<asp:PlaceHolder ID="plcNormalLook" Runat="server" Visible="False">
	<div class="containerBox">
	    <h2>Testimonials</h2>
	    <p>"<asp:Label id="lblQuote" Runat="server"></asp:Label>"<BR>
						    -
			<asp:Label id="lblAuthor" Runat="server" Font-Italic="True"></asp:Label>,<br />
			<asp:Label id="lblCompany" Runat="server" ></asp:Label></p>
	    <p align="right"> <asp:HyperLink id="lnkMoreTestimonials" Runat="server" NavigateUrl="~/Testimonials/ViewAll.aspx">More Testimonials ...</asp:HyperLink></p>
	</div>
</asp:PlaceHolder>

<asp:PlaceHolder ID="plcTop" Runat="server" Visible="False">
	<div class="topcommonTestimonialBox"><a href="/ssw/Testimonials/ViewAll.aspx"><img style="MARGIN-BOTTOM: 2px" src="/ssw/Images/Testimonials_Heading.gif" border="0" alt="What others have to say about us"></a><br />
		<TABLE style="MARGIN-LEFT: 5px" cellSpacing="0" cellPadding="0" border="0">
			<TR>
				<TD vAlign="top" width="10"><IMG style="MARGIN-TOP: 3px; MARGIN-RIGHT: 3px" src="/ssw/Images/Testimonials_LeftQuote.gif"
						align="left" alt="See what people think about this product"></TD>
				<TD>
					<asp:label id="lblQuoteTop" Runat="server"></asp:label></TD>
				<TD vAlign="top" width="10"><IMG style="MARGIN-TOP: 3px; MARGIN-LEFT: 3px" src="/ssw/Images/Testimonials_RightQuote.gif"
						align="right" alt="See what people think about this product"></TD>
			</TR>
		</TABLE>
		<DIV style="MARGIN-TOP: 3px; MARGIN-LEFT: 24px"><I>-
				<asp:label id="lblAuthorTop" Runat="server"></asp:label>
				<asp:label id="lblSep" Runat="server" text=", "></asp:label>
				<asp:Label id="lblCompanyTop" Runat="server" Target="_blank"></asp:Label></I>
			</DIV>
	</DIV>
</asp:PlaceHolder>

<asp:PlaceHolder ID="plcSideBarRight" Runat="server" Visible="False">
        <asp:Repeater ID="RepeaterTestimonials" runat="server">
            <ItemTemplate>
                
                <blockquote><%#Eval("Content") %>
                <span><a href='<%#Eval("CompanySite2")%>' class="external"><%#Eval("CompanyName")%></a><br /></span>
                </blockquote>
                <asp:PlaceHolder ID="plcMaintenance" runat="server">
                <br />
                </asp:PlaceHolder>

           </ItemTemplate>
        </asp:Repeater>
 <h6>Testimonials</h6>
 <div class="section">
 <a href="/ssw/Testimonials/ViewAll.aspx">View more Testimonials</a>
 </div>
 <br />
 

</asp:PlaceHolder>
<asp:label id="lblError" Runat="server" Visible="false"></asp:label>


 