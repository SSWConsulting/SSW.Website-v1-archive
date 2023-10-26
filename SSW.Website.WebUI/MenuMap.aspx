<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Sitemap" Inherits="SSW.Website.WebUI.MenuMap" CodeBehind="MenuMap.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">

    <h1>SSW Sitemap</h1>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <div id="sitemap"></div>
    <!-- Set the AutoGenerateBindings property -->
    <!-- to false declaratively to allow for   -->
    <!-- the user-defined Bindings collection. -->
    <asp:Xml ID="Xml1" runat="server"></asp:Xml>

    <div class="TableOfContents">
        <h3>Why is this page important?</h3>
        <p>We have this page for the purpose of getting our dynamic web pages indexed by Google. For more information please see our rule on our <a href="https://www.ssw.com.au/rules/rules-to-better-google-rankings">Rules to Better Google Rankings</a>.</p>
        <p>This page is also for <a href="https://sswlinkauditor.com/">SSW LinkAuditor</a> so it can traverse through all pages on our site and follow the links to ensure they are all valid.</p>
    </div>

    <script>
        fetch('https://SSWConsulting.github.io/SSW.Website.Menu.json/menu.json')
            .then(response => response.json())
            .then(data => {
                if (data && data.menuItems) {
                    var inner = '<ul class="Content_maincontent_SiteTreeView_UL">';
                    data.menuItems.forEach(item => {
                        inner += '<li class="AspNet-TreeView-Root">';
                        inner += `<a href="${item.navigateUrl ? item.navigateUrl : '/ssw/Company/Default.aspx'}">`;
                        inner += `<img src = "${item.children ? "/ssw/Images/Folder.gif" : "/ssw/Images/ie.gif"}" alt = "${item.text}" /> ${item.text}</a>`

                        if (item.children) {
                            inner += '<ul>';
                            item.children.forEach(itemlv1 => {
                                inner += '<li>';
                                inner += `<a href="${itemlv1.navigateUrl ? itemlv1.navigateUrl : '/ssw/Company/Default.aspx'}">`;
                                if (!itemlv1.children)
                                    inner += `<img src = "/ssw/Images/ie.gif" alt = "${itemlv1.text}" />`;
                                inner += `${itemlv1.text}</a >`

                                if (itemlv1.children) {
                                    inner += '<ul>';
                                    itemlv1.children.forEach(itemlv2 => {
                                        inner += '<li>';
                                        inner += `<a href="${itemlv2.navigateUrl ? itemlv2.navigateUrl : '/ssw/Company/Default.aspx'}"><img src="/ssw/Images/ie.gif" alt="${itemlv2.text}"/>${itemlv2.text}</a>`
                                        inner += '</li>';
                                    });
                                    inner += '</ul>';
                                }



                                inner += '</li>';
                            });
                            inner += '</ul>';
                        }


                        inner += '</li>';
                    })
                    inner += '</ul>';

                    document.getElementById('sitemap').innerHTML = inner;

                }



            }
            );
    </script>
</asp:Content>

