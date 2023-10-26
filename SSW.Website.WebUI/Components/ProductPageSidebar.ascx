<%@ control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.ProductPageSideBar" Codebehind="ProductPageSideBar.ascx.cs" %>
<%@ Register Src="RandomTestimonial.ascx" TagName="RandomTestimonial" TagPrefix="uc1" %>
<div class="softRegion" style="TEXT-ALIGN : center">
    <img id="imgProd" src="/ssw/CodeAuditor/Images/CodeAuditor.gif" alt="Code auditor" runat="server" />
</div>
<div id="divSideBar" class="softRegion">
<h6>I'm Sold... What's next?</h6>
    <%  if ((this.CatID != String.Empty) || ( this.ProdID != String.Empty)) {
%>
    <div class="section">

		<p class="purchaseLink"><asp:hyperlink ID="lnkBuy" Runat="server" CssClass="red next btn" NavigateUrl="/ssw/Products/ProdCategory.aspx?CategoryID=">Purchase Full Version</asp:hyperlink></p>
        <p class="downloadLink"><asp:hyperlink ID="lnkTry" Runat="server" NavigateUrl="/ssw/Download/Download.aspx?GroupCategoryID=">Download Free Trial Version</asp:hyperlink></p>

    </div>		
	<% } %>
    <div class="section">
	    <asp:Label runat="server" ID="lblLinks"></asp:Label>
    </div>
</div>
<uc1:RandomTestimonial ID="RandomTestimonial1" runat="server" />
