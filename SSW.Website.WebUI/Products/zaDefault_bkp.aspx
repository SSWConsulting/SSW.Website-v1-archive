<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ContentManagement.aspx.vb"
    MasterPageFile="~/Masters/SubPage.master" Title="SSW Products - Sydney's Premier Software Consultants" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontentFull" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    
    <%--<SSW:randomtestimonial id="testimonial" runat="server" />  
        <div class="productWideSummaryColumn" id="productFocusOnDiv" visible="false" runat="server"></div>
    <SSW:InfoBox runat="server" width="25%" Css="interInfoBoxSide" text="<h2>Attention: SSW Developers</h2><br/><b>6 Products we focus on</b><br/><br/><a href='../Diagnostics/Default.aspx'>Diagnostics</a><br/><a href='../LinkAuditor/Default.aspx'>LinkAuditor</a><br/><a href='../eXtremeEmails/Default.aspx'>eXtremeEmails </a><br/><a href='../ExchangeReporter/Default.aspx'>ExchangeReporter</a><br/><a href='../SQLAuditor/Default.aspx'>SQLAuditor</a><br/><a href='../CodeAuditor/Default.aspx'>CodeAuditor</a> "></SSW:InfoBox>--%>
    
    <h1 class="indexHeading"><span>Products </span>Index</h1>
	    <div class="mainTestimonial">
	        <p>The SSW Product range is focused on assisting Microsoft developers to increase the functionality of their existing investment in Microsoft products in a business environment."</p>
	        <div class="mainTestimonialAuthor">
	            <img src="/ssw/Products/Images/Adam_Cogan.jpg" alt="Adam Cogan" />
	            <p><a href="/people/adam-cogan">Adam Cogan</a><br /><span>SSW Chief Architect and Microsoft Regional Director, Australia</span></p>
	        </div>
	    </div>
	    
	    <%-- THIS IS THE OLD CONTROL 
	    
	    <div id="productSummaryContainer">
            <div class="productSummaryColumn">
                <asp:Literal ID="FirstColumnLiteral" runat="server"></asp:Literal>
            </div>   
            <div class="productSummaryColumn">
                <asp:Literal ID="SecondColumnLiteral" runat="server"></asp:Literal>
            </div>
        </div>--%>
        
        <div id="productSummaryContainer">
    	<div class="productSummaryColumn">
            <div class="productSummaryCategory">
            
            	<h2><img alt="Visual Studio .NET" src="/ssw/Images/Microsoft/VSNET.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=10DOTNET">Visual Studio .NET</a></h2>
                
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/CodeAuditor/"> Code Auditor</a><span class="emphasistext">*popular*</span></h3>
                    <p>Automate your Code Reviews with SSW Code Auditor</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/NETToolKit/"> .NET Toolkit</a></h3>
                    <p>Develop applications more efficiently while following best practices with SSW .NET Toolkit</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/SSW/AgileTemplate/"> Agile Template</a></h3>
                    <p>SSW for Agile Software Development Template</p>
                </div>
         	</div>
            <div class="productSummaryCategory">
            	
                <h2><img alt="Web" src="/ssw/Images/Microsoft/MSIe.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=3WEB">Web</a></h2>
                
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/LinkAuditor/"> Link Auditor</a><span class="emphasistext">*popular*</span></h3>
                    <p>Automate Your Link Validation with SSW Link Auditor</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/AccessReporter/"> Access Reporter</a></h3>
                    <p>Get your Access reports on the web with SSW Access Reporter</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/WebPager/">Web Pager</a></h3>
                    <p>Have web pages emailed to your inbox on a schedule with SSW Web Pager</p>
                </div>
       	    </div>
			
            <div class="productSummaryCategory">
            
                <h2><img alt="Business/Word/Excel" src="/ssw/Images/Microsoft/MSOffice.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=5BUS">Business/Word/Excel</a></h2>
                
                <div class="productSummaryEntry">
                    <h3><a href="/ssw/EmailMergePRO/">Email Merge PRO!</a></h3>
                    <p>Send your newsletter to thousands of subscribers with Email Merge PRO!</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="https://sswtimepro.com/">Time PRO .NET</a></h3>
                    <p>Welcome to Time PRO .NET. This is a totally integrated database application designed for corporations who bill on a time or product basis.</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/TimePROSmartTags/">Smart Tags for Word</a></h3>
                    <p>Connect Microsoft Word to your templates and contacts in your database with SSW Smart Tags</p>
                </div>
            </div>
            
            <div class="productSummaryCategory">
            
            	<h2><img height="14px" border="0" alt="Exchange/Outlook" src="/ssw/Images/Microsoft/MSOutlook.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=4EXOUT">Exchange/Outlook</a></h2>
                
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/eXtremeEmails/">eXtreme Emails!</a><span class="emphasistext">*popular*</span></h3>
                    <p>Turn your Inbox into a task-tracking system with SSW eXtreme</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/ExchangeReporter/">Exchange Reporter</a><span class="emphasistext">*popular*</span></h3>
                    <p>View reports on email usage for your Exchange Server users with SSW Exchange Reporter</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/LookOut/">LookOut! for Outlook</a></h3>
                    <p>Manage email more effectively with SSW LookOut! for Outlook</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/TeamCalendar/"> Exchange Team Calendar</a></h3>
                    <p>View all calendars in your company with SSW Exchange Team Calendar.</p>
               	</div>
         	</div>
            <div class="productSummaryCategory">
            
            	<h2><img alt="Services" src="/ssw/Images/Hosting.png">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=HOST">Services</a></h2>
                
                <div class="productSummaryEntry">
                	<h3><a href="/SSW/Products/ProdCategory.aspx?CategoryID=SSWHOS">Web Hosting</a></h3>
                    <p>SSW boasts Microsoft IIS, ASP.Net 2, and .Net gurus as their support staff, which is why we think we offer the best supported .NET hosting plans in Australia.</p>
               	</div>
                <div class="productSummaryEntry">
                	<h3><a href="/SSW/Products/ProdCategory.aspx?CategoryID=SSWAD">Advertising</a></h3>
                    <p>SSW offers a variety of advertising opportunities for you to grow your business, targeting IT and business decision-makers and the developer.</p>
                </div>
           	</div>
		</div>   
       	<div class="productSummaryColumn">
        	
            <div class="productSummaryCategory">
            
            	<h2><img alt="SQL Server" src="/ssw/Images/Microsoft/MSSqlServer.gif">&nbsp;<a style="font-size: 14px;" href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=1SQL">SQL Server</a></h2>
                
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/SQLAuditor/">SQL Auditor</a><span class="emphasistext">*popular*</span></h3>
                    <p>This is �FxCop� for your SQL database - Keep your SQL Server database free from design flaws with SSW SQL Auditor</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/UpsizingPro/">Upsizing PRO!</a><span class="emphasistext">*popular*</span></h3>
                	<p>Migrate from Access to SQL Server safely with SSW Upsizing PRO!</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/SQLDeploy/">SQL Deploy</a></h3>
                    <p>Have your application automatically deploy schema changes to your backend SQL Server with SSW SQL Deploy</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/SQLTotalCompare/">SQL Total Compare</a></h3>
                    <p>Manage SQL Server Replication simply with SSW SQL Total Compare</p>
               	</div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/Download/ProdBasket.aspx?ID=RV">SQL Reporting Services Auditor</a></h3>
                    <p>Verify that your SQL Server Reporting Services reports are working correctly with SSW SQL Reporting Services Auditor.</p>
                </div>
          	</div>
                    	<div class="productSummaryCategory">
            	
                <h2><img alt="Access" src="/ssw/Images/Microsoft/MSAccess.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=2ACCESS">Access</a></h2>
            
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/AccessReporter/"> Access Reporter</a></h3>
                	<p>Get your Access reports on the web with SSW Access Reporter</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/UpsizingPro/">Upsizing PRO!</a><span class="emphasistext">*popular*</span></h3>
                    <p>Migrate from Access to SQL Server safely with SSW Upsizing PRO!</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/PerformancePro/">Performance PRO!</a></h3>
                	<p>Validate your Access application before deployment and eliminate common binding and performance problems in your frontend with SSW Performance PRO!</p>
               	</div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/DataRenovator/">Data Renovator</a></h3>
                    <p>Compare and update Access database backends with SSW Data Renovator</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/DataPro/">Data PRO!</a></h3>
                    <p>Deploy new versions of your Access backend simply with SSW Data PRO!</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/PropertyAndEventPro/">Property and Event PRO!</a></h3>
                    <p>Developed for the Access Developer wanting to do a global replace</p>
                </div>
                <div class="productSummaryEntry">
                	<h3><a href="/SSW/Download/Download.aspx?GroupCategoryID=2ACCESS">Simple Table Documentor</a></h3>
                    <p>Developed for the Access and VB Developer wanting to document their data .mdb</p>
                </div>
                
			</div>

            
         	<div class="productSummaryCategory">
            
            	<h2><img alt="Web Services" src="/ssw/Images/Microsoft/MSIe.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=14WEBSVC">Web Services</a></h2>
                
                <div class="productSummaryEntry">
                	<h3><a href="/ssw/WebServices/PostCode/"> Australian Postcode Web Service</a></h3>
                    <p>The Australian Postcode Web Service provides a quick and centralized method of checking that your suburb name and postcode details are correct.</p>
                </div>
            </div>
            
            <div class="productSummaryCategory">
            
            	<h2><img height="14px" border="0" alt="Windows" src="/ssw/Images/Microsoft/MSWindows.gif">&nbsp;<a href="/SSW/Products/ProdCategoryList.aspx?GroupCategoryID=13WIN">Windows</a></h2>
            
                <div class="productSummaryEntry">
                    <h3><a href="/ssw/Diagnostics/"> Diagnostics</a></h3>
                    <p>Check your software versions automatically with SSW Diagnostics</p>
                </div>
      		</div>
		</div>
                   
	</div>
	    
</asp:Content>
