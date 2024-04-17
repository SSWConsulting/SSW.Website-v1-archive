<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Inherits="SSW.Website.WebUI.FolderBrowser" Title="Standards" Codebehind="FolderBrowser.aspx.cs" %>
<%@ Register Src="Components/FolderBrowser.ascx" TagName="FolderBrowser" TagPrefix="ssw" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
 <ssw:FolderBrowser ID="FolderBrowser1a" runat="server" />
</asp:content>