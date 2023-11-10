<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Rule Stat. and who voted..." %>

<%@ Register TagPrefix="ssw" TagName="SQLAuditorWhoVotedBox" Src="~/Components/SQLAuditorWhoVotedBox.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <ssw:SQLAuditorWhoVotedBox id="SQLAuditorWhoVotedBox1" runat="server" />

</asp:Content>
