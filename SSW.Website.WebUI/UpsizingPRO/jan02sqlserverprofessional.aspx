<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Upsizing PRO!"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

<p><img alt="SSW upsizing PRO!" src="Images/UpsizingPROLogo.gif" align="right" width="197" height="83"><a href="../Redirect/MicrosoftOfficeMarketplace/OfficeMarketplace.htm"><img src=images/OfficeLogo.gif alt="Microsft Office" align=right border=none width="250" height="52"></a>
	<b>Migrate from Access to SQL Server safely with SSW Upsizing PRO!</b></p>
											
												<P>Russell Sinclair<br>
												SQL Server Professional</P>
											
												<P><b>In this review, Russell Sinclair takes a look at Upsizing PRO!-a tool that's 
													designed to help you upsize your Microsoft Access databases to SQL Server.</b></P>
											<P>Most developers who have attempted to make the migration from Access to SQL 
												Server probably realize that Microsoft's own Upsizing Wizard that's included 
												with Access is far from perfect. Considering the number of years that it's been 
												around (and touted by Microsoft as a genuine migration tool), the Upsizing 
												Wizard is still surprisingly littered with oversights and even bugs. It's 
												poorly documented, and it doesn't handle errors gracefully. The most common of 
												these errors-a simple message box that says "Overflow"-is an excellent example 
												of the problems inherent in this tool.</P>
											<P>Happily, the Australian-based SSW 
												sells a product called Upsizing PRO! that's designed to help you prepare an 
												Access database for migration using the Microsoft Upsizing Wizard. It analyzes 
												the tables in your database, looking for design issues that will cause problems 
												along the way.</P>
											<P>In other words, Upsizing PRO! isn't a replacement for the Upsizing Wizard-it's a 
												complementary tool that's designed to help you find the problems with your 
												Access database <I>before</I> you run it through the Microsoft Upsizing Wizard.</P>
											<P><B> Using the tool<BR>
												</B>Upsizing PRO! analyzes a database for problems that will cause the 
												Microsoft Upsizing Wizard to fail or generate errors, and it can be used to 
												check the tables in your database both before and after upsizing takes place. 
												When you choose to run the before-upsizing check, you'll be able to find out about potential problems and 
												specify which database to test.</P>
											<P>This screen shows a series of tabs describing some of the problems that you may 
												encounter with your database. Although it's not necessary to read each tab, it 
												can help you to avoid problems with future product development. The last tab on 
												this screen is where you can actually specify a database for analysis. Select a 
												database using the folder button on this screen and click the Go button to 
												begin the analysis. A progress bar will appear showing you the status of the 
												operation.</P>
											<P>Once the analysis is complete, a report alerts you to the problems that Upsizing PRO! has found with 
												your database.</P>
											<P>Not only does this report show you what problems exist in your database, it will 
												in many cases tell you exactly what you need to do to find or fix the problems. 
												Once you've made the necessary corrections to your database, you can go ahead 
												and upsize it using the Microsoft Upsizing Wizard.</P>
											<P>The Upsizing Wizard itself generates a report that's supposed to include the 
												details of the migration and any errors that occurred. However, this report 
												typically lacks vital information-even about some of its failures. In order to 
												check that your database was upsized properly, you should return to Upsizing 
												PRO!.</P>
											<P>The post-upsizing check requires that you enter an OLE DB connection string for 
												the Access database and the new SQL Server database. Use the builders to create the string or enter one manually. 
												Click the Go button to start the analysis when you've made the selections.</P>
											<P>Once again, Upsizing PRO! will generate a report. This report tells you the 
												differences in the table design and any differences in the data that was 
												brought over.</P>
											<P><B> Evaluating the tool<BR>
												</B>Upsizing PRO! has a number of really great selling features. I was really 
												impressed by the thoroughness of the coverage of the problems you may 
												encounter, and the suggestions on how to avoid them. The various tabs on the 
												before-upsizing screen explain in detail what sort of issues your database may 
												have that could prevent a successful migration. This information alone can help 
												you to avoid problems with future migrations.</P>
											<P>But the real strength in Upsizing PRO! is the report that's generated about your 
												database. This report not only explains what problems were encountered-in the 
												case of a few different error types, a SQL statement is shown on the report 
												that can be used to help find the problematic objects or data in your database. 
												Instead of having to spend hours hunting through numerous tables to diagnose 
												each problem, you can simply run Upsizing PRO! and find the problems in 
												minutes.</P>
											<P>Among the problems this tool found on a test database (a database that was first 
												developed back in Access 95, and has been growing and upgrading ever since) 
												were primary and foreign key fields with different sizes (an Access legacy 
												problem), tables without unique indexes (a problem if you're linking SQL Server 
												tables into Access using ODBC), spaces in field names (a problem for some 
												versions of SQL Server), and duplicated relationships.</P>
											<P>All of these problems would have taken me a day or two to weed out if I'd done 
												the check manually-and I would have been much more likely to miss something. 
												The real advantage to this is checking a database that was developed by someone 
												else. If I didn't have intimate knowledge about this particular database, it 
												could have taken a week to find all of the problems.</P>
											<P>The report has only one issue that I could find, and that had to do with 
												language. At least one of the errors-the duplicate foreign key problem-started 
												out with the line "Field tblPODetails!ProjectID has duplicates." When I first 
												glanced through the report, I couldn't figure out why Upsizing PRO! thought 
												that duplicate values in this column were a problem. On closer inspection, and 
												after using the SQL statement it suggested, I realized that the problem was 
												actually the relationships on the table, not the data it contained. Although it 
												seemed like an error in the report, it was simply a matter of semantics.</P>
											<P><B> Where and how much<BR>
												</B>More information on Upsizing PRO! is available at SSW's Web site at <A href="/ssw/UpsizingPRO">
													www.ssw.com.au/ssw/UpsizingPRO</A>. There you can check out the product 
												features, order a copy, or download a fully functional demo that will analyze 
												70 percent of the tables in your database (to do the other 30 percent, you need 
												to order it). The product sells for US$199 for a single developer license, or 
												US$499 for an enterprise site license. If you think of how much time it could 
												save you, it's definitely worth the price.</p>
																									</asp:content>