<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW 1994 Logos" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
<h1>SSW 1994 Logo</h1>
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="discontinued-greybox">
        <p>SSW used this logo for nearly 20 years, but we got a new one in 2014. <a href="../SSW/Default.aspx">See SSW's current logo</a>.</p>
    </div>
    <div class="section">
		<p>The SSW logo is a registered Trademark and can be used for promotional material. If you have any queries please <a href="http://www.ssw.com.au/ssw/company/AboutUs.aspx#ContactUs">contact SSW.</a> 
    </div>
    <div class="row">
        <div class="col-sm-6">
            <h3>SSW</h3>
                <img src="Images/SSWLogo_preview.png" alt="SSW" width="170px" />
                <ul>
				    <li><a href="Downloads/SSWLogo.gif"><s>GIF</s></a></li>
                    <li><a href="Downloads/SSWLogo.png">PNG</a></li>
				    <li><a href="Downloads/SSWLogo.eps">EPS</a></li>
                </ul>
        </div>
        <div class="col-sm-6">
            <h3>SSW - B&W </h3>
                <img src="Images/SSWLogo_BW_preview.png" alt="SSW" width="170px" />
			    <ul>
				    <li><a href="Downloads/SSWLogo_BW.gif"><s>GIF</s></a></li>
                    <li><a href="Downloads/SSWLogo_BW.png">PNG</a></li>
				    <li><a href="Downloads/SSWLogo_BW.eps">EPS</a></li>
			    </ul>
        </div>
    </div>


</asp:content>
