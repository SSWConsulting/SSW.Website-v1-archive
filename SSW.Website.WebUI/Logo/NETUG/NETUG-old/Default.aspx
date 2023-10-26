<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.Website.WebUI.Raven" Title="Old .NET User Group Logos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Old .NET User Group Logo</h1>
</asp:Content>

<asp:content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section discontinued-greybox">
        <p>These logos were used for many years, but we got new ones in 2018. <a href="../NETUG/Default.aspx">See .NET User Groups' current logos</a>.</p>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <h3>Old Sydney .NET UG</h3>
                <img src="Images/NETUGSYD_logo_preview.png" alt="Old Sydney .NET UG" />
        </div>
        <div class="col-sm-6">
            <h3>Old Canberra .NET UG</h3>
                <img src="Images/NETUGCAN_logo_preview.png" alt="Old Canberra .NET UG" />
        </div>
    </div>

</asp:content>
