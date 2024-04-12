<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.Website.WebUI.Raven" Title="HealthCheck Logo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>HealthCheck Logo</h1>
</asp:Content>

<asp:content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="container">

        <p>If you have any queries please <a href="http://www.ssw.com.au/ssw/company/AboutUs.aspx#ContactUs">contact SSW.</a></p>

        <h2>Download</h2>

        <div class="col-md-3 col-sm-4 col-xs-6">
            <h3>Color</h3>
                <img src="Images/HealthCheck_Logo.png" alt="HealthCheck Logo" />
                <p><a class="red done btn" href="Images/HealthCheck_Logo.png">PNG</a></p>
        </div>

        <div class="col-md-3 col-sm-4 col-xs-6">
            <h3>Black & White</h3>
                <img src="Images/HealthCheck_Logo_BW.png" alt="HealthCheck Logo" />
                <p><a class="red done btn" href="Images/HealthCheck_Logo_BW.png">PNG</a></p>
        </div>
    </div>
</asp:content>

