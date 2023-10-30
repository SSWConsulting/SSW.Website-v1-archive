<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" CodeBehind="SSWCustomError404.aspx.cs" Inherits="SSW.Website.WebUI.SSWCustomError404" Title="Page Not Found | SSW - Sydney's Leading Custom Software Consultants" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src='<%=ResolveUrl("~/Images/thumbs/thumb-404.jpg")%>' alt="404" />
    <h1>Error <span class="red">404</span> - The page you are looking for cannot be found.</h1>
    <h2>We're sorry...</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

        <p>This may be caused by:</p>
        <ul>
            <li>incorrect URL</li>
            <li>faulty referral from another site</li>
            <li>out-of-date search engine listing</li>
            <li>deleted file</li>
        </ul>
        <p>You can <a href="javascript:history.go(-1);">go back to the previous page</a> or simply search for what you want:</p>
        
    <div class="form-inline">
  <div class="form-group">
      <input placeholder="Keyword" name="searchFor" type="text" id="txtSearchFor" onkeypress="return submitSearch();" class="form-control"/>
  </div>
  <button name="Search" type="submit" class="btn btn-primary" onclick="return btnSearch();">Search</button>
</div>

        
        

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
