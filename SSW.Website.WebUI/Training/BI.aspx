<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master"
    Title="SSW Training & Events - BI 2010" %>


<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
<%
Response.Status="301 Moved Permanently"
    Response.AddHeader("Location", "BI-TheGuts.aspx")
%> 
</asp:Content>

