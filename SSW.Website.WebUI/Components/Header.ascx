<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.Header"
    CodeBehind="Header.ascx.cs" %>
<div id="header" title="<% =Page.Title %>">
    <a href="/ssw/">
        <img alt="SSW Logo" src="/ssw/images/SSWLogo.png" width="130" height="100" id="sswlogo" /></a>
    <a href="/ssw/Company/AboutUs.aspx">
        <img alt="Microsoft Gold Partner Logo" src="/ssw/company/images/small_partnerlogo.png" width="110"
            height="41" id="msgoldpartner" /></a>
    <h1>
        <% =HeaderTitle()%></h1>
</div>
