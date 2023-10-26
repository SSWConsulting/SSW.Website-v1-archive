<%@ Control Language="C#" Inherits="SSW.Website.WebUI.Components.Menu" CodeBehind="Menu.ascx.cs" %>
<asp:Literal ID="MenuResult" runat="server"></asp:Literal>
<asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="/ssw/Components/Menu.xml"></asp:XmlDataSource>