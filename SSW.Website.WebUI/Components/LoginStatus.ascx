<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.LoginStatus" Codebehind="LoginStatus.ascx.cs" %>
 <% if (GetUserName() != String.Empty)
     {%>
<div class="login-shop">
    Logged in as <a href="/ssw/Shop/ClientDetail.aspx"><%=GetUserName()%></a> | <a href="/ssw/Shop/Basket.aspx">My cart</a> | <a href="/ssw/Shop/Login.aspx?Action=Logout">Logout</a>
</div>
<% }
    else
    { %>

<% }%>
