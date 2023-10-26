<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Utility to Automate your Code Reviews" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="CODAUD" CatID="10DOTNET"
        DownloadID="CA" UserGuide="UserGuide.aspx" Rules="../Standards/Default.aspx"
        Home="Default.aspx" BoxShotPath="/ssw/CodeAuditor/Images/productbox.gif"></SSW:ProductPageSideBar>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <h2 class="thinner">Resources</h2>
    <p>
        Here you can find information to help you get the most out of Code Auditor.
    </p>
    <a name="Links"></a>
    <h2 class="thinner">Links</h2>
    <p>
        Learn about Regular Expressions from these websites:
    </p>
    <ul>
        <li><a target="_blank" href="/ssw/Redirect/searchandreplace.htm">SearchAndReplace.Com</a>
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                border="0" width="17" height="11"></li>
        <li><a target="_blank" href="/ssw/Redirect/ssw/CodeguruEarthwebRegex.htm">CodeGuru.EarthWeb.Com</a>
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                border="0" width="17" height="11"></li>
        <li><a target="_blank" href="/ssw/Redirect/Net/DotNetRegulardExpressionRepository.htm">.NET Regular Expression Repository</a>
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                border="0" width="17" height="11"></li>
        <li><a target="_blank" href="/ssw/Redirect/Web/ActiveStateCookbook.htm">ActiveState
            Rx Cookbook (RE repository)</a>
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                border="0" width="17" height="11"></li>
        <li><a target="_blank" href="/ssw/Redirect/Net/CSRegularExpressions.htm">Oreilly Mastering
            Regular Expressions</a>
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                border="0" width="17" height="11"></li>
        <li><a href="/ssw/Redirect/Net/RegularExpressionsCheatSheet.htm" target="_blank">Regular
            Expressions Cheat Sheet</a>
            <img alt="You are going to a site outside of SSW" border="0" height="11" src="/ssw/Images/LeaveSite.gif"
                width="17"></li>
        <li><a href="/ssw/Redirect/Net/ProteusPDFDocument.htm" target="_blank">Proteus PDF Document</a>
            <img alt="You are going to a site outside of SSW" border="0" height="11" src="/ssw/Images/LeaveSite.gif"
                width="17"></li>
        <li><a href="/ssw/Redirect/Net/RegexTools.htm" target="_blank">Mike Fourie's Regular
            Expression Scratchpad</a>
            <img alt="You are going to a site outside of SSW" border="0" height="11" src="/ssw/Images/LeaveSite.gif"
                width="17"></li>
    </ul>
    <br>
    <%--<p>Images we used for Code Auditor user interface:</p>--%>
    <ul>
        <!-- <li>Red apple photo: <A target="_blank" href="http://www.d70.be">www.D70.be - &copy; 2004 - 2005 Dirk De Kegel (Sabam Belgium)</A> 
			<IMG alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border=0 width="17" height="11"></li>-->
    </ul>
</asp:Content>
