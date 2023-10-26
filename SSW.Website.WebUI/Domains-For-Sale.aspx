<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Domain for sale" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Domain for sale</h1>
    <h2>The domain you tried to access is available for purchase.</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

<h3>The website which you are attempting to access has been redirected to this page.<br />
The original URL which you tried is currently owned by SSW.</h3>
<h2>That domain is available for purchase for a suitable price.</h2>
<h3>Please send an email to <a href="javascript:sendEmail('4164616D436F67616E407373772E636F6D2E6175');" id="ctl00_PlaceHolderMain_EncodedEmailFieldControl1_lnkEmail">AdamCogan@ssw.com.au</a> and specify the domain name which you wish to purchase and your offer.</h3>
        

 </asp:Content>
