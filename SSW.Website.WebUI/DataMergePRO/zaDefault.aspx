<%@ Page  Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Data Merge PRO! - Database Merge Utility"  %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/MergePROLogo.gif" alt="Merge Pro Logo" width="220" height="77" />
    <h2>SSW Data Merge PRO! is allows you to merge two different databases into one.</h2>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <SSW:ProductPageSideBar runat="server" ProdID="CODAUD" CatID="5BUS" BoxShotPath="/ssw/DataMergePRO/Images/productbox.gif">
			        
		</SSW:ProductPageSideBar>
    </asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

        <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

	<p>The two databases can have different format i.e. MS Access, 
        SQL Server and even have different structure i.e. different table names 
        and different field names.</p>
						<p>Data Merge PRO! uses a user-defined duplicate criteria to decide which records are 
							duplicates. It is designed to work with any popular database, but currently has 
							only been tested extensively on Access and SQL Server.&nbsp;If you are 
							interested in trying it with other databases <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Enquiry%20Merge%20PRO!';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
								let us know</A>!&nbsp;
						</p>
						<p>
							When two databases are merged, all records in the source database will be used 
							to indicate how many duplicates may exist in the destination database based on 
							the user defined duplicate criteria. The user can then decide whether to add 
							the source record into the destination database.</p>
						<p>
							This screenshot below shows the result of merging Northwind with another SQL 
							Server database.
							<br>
							<br>
							<IMG src="Images/sampleresult.gif" alt="Sample Result" width="554" height="454">
							<br>
						</p>
						<p>
							With the merge result, the user can decide what to do with the source data:</p>
						<UL>
							<li>
							Add to the destination without any change.
							<li>
							Don't Add to the destination database.
							<li>
								Compare with the destination data first and modify before adding to destination 
								database.
							</li>
						</UL>
						<P>To learn more about how to use SSW Data Merge PRO! Please read SSW Data Merge PRO! <a href="Tutorial.aspx">
								Tutorial</a>
						</P>
						<h2> Features: </h2>
						<UL>
							<LI>
							User Defined Duplicate Criteria: decide which records are duplicates based on 
							same field value.
							<LI>
							User Defined Insert: Instead of simply insert data from a source table to a destination table, you can define other action, i.e. while inserting a record into client table, a related record is inserted to client contact table.
							<LI>
							Loading All fields with the same field name automatically to save you manually mapping from source to destination field by field.
							<LI>
							Editing destination database: When you see an error in the destination 
							database, you can correct it directly.
							<LI>
							Partially update destination database: When you see the difference between the source and the destination, you can just update that different parts. i.e. A client's address may have changed, but the name is the same, in this case you can only update the address part instead of inserting the whole record.
							<LI>
								UDL wizard: Launch an UDL wizard to construct a connection string.</LI>
						</UL>
	                            
						<h2> Settings: </h2>
						<br>
						Data Merge PRO! allows you to set a default destination database, so that when a new 
						merge is created it loads all default destination database information. Data Merge 
						PRO! also allows you to set how many records to process on each cycle.
						<br>
						<br>
						<IMG src="Images/options.gif" alt="Options" width="554" height="454"><br>
						<br>
						<h2>What does the unregistered version give me?</h2>
		<p>In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that. <br>
		Note: we also give free version targeted to the little guys<br>
		More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a></p>
<p>SSW provides free phone and email support to answer queries on 
registered products.</p>
						<h2> Getting Support</h2>
						<p>
						Please check our <a href="/ssw/KB/KBResult.aspx?searchOn=Products&searchFor=SSW%20Data%20Merge%20PRO!">knowledge 
							base</a> for further information and tips about this product.
	<p>
		Please send us <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Bug%20Report';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">bug reports</A> and <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</A>
		so that we can evolve our software into a product that matches your requirements. We guarantee a response.
	</p>
      
		</asp:content>