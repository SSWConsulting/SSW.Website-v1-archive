<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SQL Server Migration Assistant Wizard for Access"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				<P>
		<SSW:ProductPageSideBar runat="server" ProdID="2SQLCH" CatID="2ACCESS" UserGuide="UserGuide.aspx" Home="Default.aspx" BoxShotPath="/ssw/UpsizingPRO/Images/UpsizingPro3dbx.gif">
		</SSW:ProductPageSideBar>
		<div class="softRegion">
			<div class="sponsorBox">
				<img src="/ssw/Images/Awards/Tucows40X80.gif" alt="Tuscows review" width="80" height="40" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
			</div>
			<div class="sponsorBox">
				<img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River" width="80" height="28" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="star"  width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
			</div>
		</div>
<a name="SSMAAccess"></a><h2>  SQL Server Migration Assistant for Access (SSMA Access)</h2>
<p> This tool is Microsoft's
        new Upsizing Wizard, unfortunately it doesn’t work on databases more complicated
        than Northwind. Microsoft still try to force an Access database into SQL Server instead
        of providing a validation report (like SSW Upsizing PRO does) to fix the .mdb
  issues first</p>
               
                    <p>
                        Here is an example where you will see that the database is not migrated to SQL Server – we hope Microsoft
                         fix this soon <a href="/SSW/Standards/BetterSoftwareSuggestions/MSaccess.aspx#SSMA">Software Suggestions for MS Access</a></p>
                    <p>
                        SSMA Access uses Wizard style interface.</p>
                    <p></p><dl class="goodImage">
		            <img src="Images/SSMA01.png" alt="" border="1" width="594" height="390">
                    <p><strong>Figure: The first screen on start-up</strong></p></dl><br>
                    
                    <p></p><dl class="goodImage">
		            <img src="Images/SSMA02.png" alt="" border="1" width="589" height="241">
                <p><strong>Figure: Create a new project and add an Access database</strong><br>
                
                </p></dl>
                
                <p></p><dl class="goodImage">
		            <img src="Images/SSMA03.png" alt="" border="1" width="598" height="392">
                    <p><strong>Figure: Select objects to migrate</strong></p></dl><br>
         
                
                <p></p><dl class="goodImage">
		         <img src="Images/SSMA04.png" alt="" border="1" width="594" height="355">
                    <p><strong>Figure: A table will not be upsized if it does not meet prerequisites (no
                        reason provided)</strong></p></dl><br>
                    
                    <p></p><dl class="goodImage">
		         <img src="Images/SSMA05.png" alt="" border="1" width="574" height="858">
                    <p><strong>Figure: Strange inteface. It does not show SQL Server tables after upsizing</strong></p></dl><br>
                    
                    <p></p><dl class="goodImage">
		         <img src="Images/SSMA06.png" alt="" border="1" width="289" height="422">
                    <p><strong>Figure: There are upsized tables in Test_Adam2 database. However, they are not shown in SQL Server 2005 database</strong><br>
                                </p></dl><br />
                    <p></p>
                                
                                <p>
                                    <span lang="EN-AU" style="font-size: 11pt; font-family: Tahoma">Unfortunately this Microsoft utility is not ready. I guess I should be grateful that developers still need <a href="/SSW/upsizingpro/default.aspx">SSW Upsizing PRO!</a></span></p>
                                <p>
                                </p>
                                  

		</asp:content>