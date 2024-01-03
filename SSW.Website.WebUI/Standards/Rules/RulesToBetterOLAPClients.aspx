<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better OLAP Clients"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		<div class="TableOfContents">
			<h3>Rules to Better OLAP Clients</h3>
			<ol>
				<li><a href="#clienttools">Do you know the best OLAP client tools?</a></li></ol>
		</div>
		<br />
		<ol>
		
		
		<li><a name="clienttools"></a><h2>Do you know the best OLAP client tools?</h2>
           <p>Most useful is first</p>
           <ol>
               <li>Excel 2007
           <dl class="image">
           <dt><img src="/ssw/Standards/DeveloperDotNet/Images/ExcelDataVis.jpg" width="801" height="694" />
           </dt>
           <dd>Figure: Excel 2007 will have built-in OLAP functionality
           </dd>
           </dl>
           
            </li>
            
           <li>Reporting Services 
           <dl class="image">
           <dt><img src="Images/OLAP_ClientsRS.gif" width="600" height="364" />
           </dt>
           <dd>Figure: Reporting Services has OLAP-style reports
           </dd>
           </dl>
           
               </li>
            <li>Reporting Services Report Builder. This utility is installed with Reporting Services, and is available via the Reporting Services main web interface
            <dl class="image">
           <dt><img src="Images/OLAP_ClientsReportBuilder.gif" width="760" height="640" /></dt>
           <dd>Figure: Microsoft Report Builder lets users easily build ad-hoc reports without having to go via the IT department</dd>
           </dl>
            </li>
            <li>Pro clarity 
            <dl class="image">
           <dt><img src="Images/OLAP_ClientsProclarity.jpg" width="383" height="277" />
           </dt>
           <dd>Figure: ProClarity's optimization of SQL Server 2005 Analysis Services makes it easier to create, deploy and manage analytics
           </dd>
           </dl>
           </li>
            <li>Panorama
           <dl class="image">
           <dt>
               <img  src="Images/OLAP_ClientsPanorama.jpg" width="600" height="450" />
           </dt>
           <dd>Figure: Panorama NovaView
           </dd>
           </dl>            
            </li>
            
            <li>Business Scorecard Manager (from the Office team). See the <a href="/ssw/Redirect/Microsoft/businessscorecard.htm" target="_blank">demo from Microsoft</a> 
            <img src="/ssw/Images/LeaveSite.gif" width="17" height="11" />
            <dl class="image">
           <dt>
               <img src="Images/OLAP_ClientsBSM.jpg" width="515" height="398" />
           </dt>
           <dd>Figure: Business Scorecard Manager
           </dd>
           </dl>
            </li>
            
            
            
            
            
            
            </ol>
            
		</li>
		</ol>
		
</asp:content>