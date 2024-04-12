<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="PwC - Comply First Time Case Study | SSW Consulting" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>PwC - Comply First Time Case Study</h1>
    <h2>The new standard platform is now going global</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <dl class="image">
            <dt><img src="images/pwc-screenshot-1.png" /></dt>
        </dl>
        <h2>Challenge</h2>
        <p>PwC approached SSW to take an internally developed Excel application driven by macros, that assisted their clients in producing tax returns, and turn it into a fully fledged core application for PwC to help clients manage their tax obligations in an automated fashion. The initial scope of the application was to service the Australian market with the intention to expand to other markets globally.</p>

        <h2>Process</h2>
        <p>The first step was to review the existing Excel application and extract the calculation logic and then to design the architect of the application to allow for additional modules and customizations for each client.</p>

        <h2>Technology </h2>
        <p>The initial version of ComplyFirstTime (CFT) was written using ASP.NET MVC with a SQL backend. However, keeping pace with rapidly changing technology, new CFT features are primarily written in Angular and WebAPI.</p>

        <h2>Results</h2>
            <p>CFT is now the standard platform being pushed by PwC globally. It has grown to cater for tax obligations in Australia, New Zealand, Canada, Switzerland, United Kingdom, India, Singapore, Mexico and other European countries and has been successfully deployed to over 50 large organizations.</p>
        <dl class="image">
            <dt><img src="images/pwc-screenshot-2.png" /></dt>
        </dl>
        <dl class="image">
            <dt><img src="images/pwc-screenshot-3.png" /></dt>
        </dl>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebar" runat="server"></asp:Content>