<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubPage.master" Title="Error | SSW - Sydney's Leading Custom Software Consultants" Inherits="SSW.Website.WebUI.ErrorPage" Codebehind="ErrorPage.aspx.cs" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src='<%=ResolveUrl("~/Images/thumbs/thumb-404.jpg")%>' alt="404" />
    <h2><asp:label id="lblError" runat="server"></asp:label></h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    The reason we don't show more information is because of potential security issues. 

        <p>You can <a href="javascript:history.go(-1);">go back to the previous page</a> or simply search for what you want:</p>
        
        <input name="searchFor" type="text" id="txtSearchFor" onkeypress="return submitSearch();"/>
        <input name="Search" onclick="return btnSearch();" type="submit" class="red" value="Search" />

        <p>You may also want to try finding  the information you are looking for through <a href="/ssw">SSW homepage</a>.</p>
        <p class="greybox">See on our SSW Rules <a href="https://rules.ssw.com.au/404-useful-error-page" target="_blank">Do you replace the 404 error with a useful error page?</a>.</p>

    <script language="javascript" type="text/javascript">
        document.getElementById("searchFor").focus();

        function btnSearch() {
            if (document.getElementById("searchFor").value == "" || document.getElementById("searchFor").value == "Enter word(s)") {
                window.alert("Please enter a search phrase.");
                document.getElementById("searchFor").focus();
                return false;
            }
            else {
                window.location.href = "http://www.google.com.au/search?q=site%3Assw.com.au%20" + document.getElementById("searchFor").value;
                return false;
            }
        }
        function submitSearch() {
            if (event.keyCode == 13) {
                return btnSearch();
            }
            else {
                return event.keyCode;
            }
        }
    </script>
</asp:Content>