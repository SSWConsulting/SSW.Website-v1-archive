<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master"
    Title="SSW - Monthly SSW Newsletters" Inherits="SSW.Website.WebUI.NETUG.SSWUpdatePrevious" CodeBehind="SSWUpdatePrevious.aspx.cs" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Monthly Newsletters</h1>
    <h2>Learn. Build contacts. Socialize</h2>
</asp:Content>
<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server"></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    
    <p>By signing up for our newsletter you'll be kept informed about the latest upcoming developer events and news. The User Group topic will only be known in advance to recipients of the SSW Update so make sure you sign up so that you're guaranteed that the topic at the next meeting is exactly what you're interested in.</p>
        <blockquote>&quot;I get LOTS of newsletters. I like yours best. It is clean, presented well and works! Thx.&quot;<br />
            <span>Eileen Crain - Marketing Manager, Microsoft</span>
        </blockquote>
        <p><a href="/ssw/Shop/Login.aspx" class="red done btn">Join</a></p>                   
   
        <h2>
            <a name="PrevNews"></a>Past SSW Newsletters
        </h2>

        <asp:Label runat="server" CssClass="red" ID="lblMessage"></asp:Label>
                    
        <p><asp:Xml id="xml1" runat="server" /></p>

    </asp:Content>
