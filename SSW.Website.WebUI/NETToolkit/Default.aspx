<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="NDT" CatID="NDT" UserGuide="UserGuide.aspx" DownloadID="NTKA" BoxShotPath="/ssw/NetToolkit/Images/productbox.gif"></SSW:ProductPageSideBar>
    <img src="/ssw/Images/Microsoft/VSNET.gif" alt="Visual Studio.Net" style="vertical-align: top;" width="34" height="20" />Visual Studio 2008 Compliant
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/NETToolkitLogo.gif" alt="DOT NETToolkit" width="188" height="83" />
    <h2>Develop Applications more efficiently while following best practices with the SSW .NET Toolkit</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <SSW:InfoBox runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>"></SSW:InfoBox>

    <p>
        The SSW .NET Toolkit is an example of a distributed multi-layer application based on
		the Microsoft Northwind database. Designed by Developers for Developers, the real-world source can be used as 
		a model and basis&nbsp;for custom-designed applications perfect for 
		small and medium enterprise (SME) applications. Microsoft's examples like
		<a href="/ssw/Redirect/Microsoft/Duwamish.htm" target="blank">Duwamish</a> and 
		<a href="/ssw/Redirect/Microsoft/IBuySpy.htm" target="blank">IBuySpy</a> are code intensive and marketed towards
		architects, not developers. The SSW .NET Toolkit delivers more functionality using less code.
    </p>
    <p>The .NET Toolkit currently contains ten parts:</p>
    <ul>
        <li>Part A demonstrates how to use 
		extended providers for validation, and how to implement searching 
		through records in a database, as well as how to implement SSW 
		Exception Reporter (an extended version of the Configuration Block).</li>
        <li>Part B shows demonstrations on our standard 
	<a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">Rules to Better Interfaces</a></li>
        <li>Part C implements database deployment from one of our most popular 
	products <a href="/ssw/SQLDeploy/">SSW SQL Deploy</a>. This demonstrates how 
	we deal with the on-going SQL script changes for Client databases.</li>
        <li>Part D shows no touch deployment.</li>
        <li>Part E shows better web applications.</li>
        <li>Part F shows a bad and a good example for a Northwind Windows application.</li>
        <li>Part G shows <a href="/ssw/NetToolKit/04ExceptionReporter.aspx">using exception reporting service (aka LadyLog)</a></li>
        <li>Part H shows a good example for a Northwind Web application (TODO).</li>
        <li>Part I shows a good example of a Northwind WPF application (TODO).</li>
        <li>Part J shows a good example of a Northwind Silverlight application (TODO).
	<dl class="image">
        <dt>
            <a href="Images/PartFNorthwind.jpg" class="lightbox image" title="Part F of the .NET Toolkit showing the way Northwind should be done in .NET (this originally done by Microsoft in Access)">
                <img border="0" src="Images/PartFNorthwind.jpg" width="500" /></a>
        </dt>
        <dd>Figure: Part F of the .NET Toolkit showing the way Northwind should be done in .NET (this originally done by Microsoft in Access)</dd>
    </dl>
        </li>
    </ul>
    <p><a href="UserGuide.aspx">Online User Guide</a></p>
    <p>
        <SSW:incDemonstration ID="IncDemo" runat="server"></SSW:incDemonstration>
    </p>


    <h2 class="thinner">System Requirements</h2>
    <ul>
        <li><a href="/ssw/Redirect/Net/DotNetFramework.htm" target="_blank">.NET Framework 3.5</a></li>
        <li>Visual Studio .NET 2008 (optional if you want to look at how to do it)</li>
    </ul>


    <h2 class="thinner">What does the unregistered version give me?</h2>

    <p>
        In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
        <br />
        Note: we also give free version targeted to the little guys<br />
        More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
    </p>
    <p>
        SSW provides free phone and email support to answer queries on 
registered products.
    </p>

    <h2 class="thinner">Getting Support</h2>
    <p>
        Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
        so that we can evolve our software into a product that matches your requirements. We guarantee a response.
    </p>
    <p>
        If you are having trouble with converting the .NET Toolkit Solution for 
		use with Visual Studio 2005 see
		<a href="/ssw/KB/KB.aspx?KBID=Q1067521">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1067521</a>
    </p>


    <!--<h2>Links</h2> 


-->
    <h2>Download/Order</h2>


    <div class="download">
        <a href="/ssw/Products/ProdCategory.aspx?CategoryID=NDT" class="red next">Purchase Full Version</a><br />
        or 
        <br />
        <br />
        <a href="/ssw/Download/ProdBasket.aspx?ID=NTKA">Download Free Trial Version</a>
    </div>


</asp:Content>
