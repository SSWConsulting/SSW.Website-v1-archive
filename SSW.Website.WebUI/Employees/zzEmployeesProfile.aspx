<%@ Page Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Old Employees Profiles" Inherits="SSW.Website.WebUI.Employees.EmployeesProfile" Codebehind="EmployeesProfile.aspx.cs" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

<div class="greyBox" style="margin:40px;"><h3 style="margin:20px;">This is the old employees page. <a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Employees.aspx" target="_blank">See the current page</a>.</h3></div>

    <asp:Xml ID="XmlEmployees" runat="server" DocumentSource="employees.xml"
        TransformSource="employees.xsl"></asp:Xml>
</asp:content>