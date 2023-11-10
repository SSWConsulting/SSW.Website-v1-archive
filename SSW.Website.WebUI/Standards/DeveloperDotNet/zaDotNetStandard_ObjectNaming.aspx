<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW .NET Object Naming Standard"  %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		
		<div class="TableOfContents">
		<h3>SSW .NET Object Naming Standard</h3>
		<ol>
		<li><a href="#Syntax">User Interface Syntax and Object/Code Syntax</a></li>
		<li><a href="#Constants">Constants</a></li>
		<li><a href="#DataAdapter">DataAdapter</a></li>
		<li><a href="#CDec">Class declaration</a></li>
		<li><a href="#NoVarSameClass">No variable name with the same class name</a></li>
		<li><a href="#MainForm">Main Form of a Windows Application</a></li>
		<li><a href="#OldCom">Old Com Objects</a></li>
		<li><a href="#ClassLevel">Do you use a standard naming convention for class level variables in C# and VB .NET?</a></li>
		<li><a href="#Other">Other Links</a></li>
        </ol>

		</div>
		
		<div id="mainContent">
						<b>.NET Object Naming Standard </b>
					
					<p>
						This standard outlines our standards on naming objects within VS.NET. Use these standards when 
								naming any object or if you find another object 
						that doesn't follow these standards within SSW. For the 
						'Other style' 
						naming, we have tried to keep the length of any prefix 
						to 3. However there may be some with a length of 4 or 5.
					</p>
					<p>
					Ideally we dont want to use Hungarian notation anymore, except user interfaces. It is nice and neat when you implement them 
					   in code.
					</p>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('496E666F407373772E636F6D2E61753F5375626A6563743D2E4E6574205374616E64617264204F626A656374204E616D696E6720436F6E76656E74696F6E')">
    Let us know</a> what you think.</p> 
<ol>
<li>				<h2><a name="Syntax"></a>User Interface Syntax and Object/Code Syntax</h2>	
					

					<table class="clsSSWTable" cellpadding="2" summary="Formatting Table" width="100%" style="border-color: #FFFFFF">
						<tr>
							<th width="28%">User Interface Syntax</th>
							<th width="24%" >Recommended Style</th>
							<th width="24%" >Other Style</th>
							<th width="44%">Notes</th>
						</tr>
						<tr>
							<td >
								Button
							</td>
							<td class="clsRecommendedStyle" >
								btnCustomer</td>
							<td class="clsOtherStyle" >
								customerButton</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td>
								Label
							</td>
							<td class="clsRecommendedStyle" >
								lblCustomer</td>
							<td class="clsOtherStyle" >
								customerLabel</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								TextBox
							</td>
								<td class="clsRecommendedStyle" >
								txtCustomer</td>
							<td class="clsOtherStyle" >
								customerTextBox</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								ComboBox
							</td>
							<td class="clsRecommendedStyle" >
								cboCustomer</td>
							<td class="clsOtherStyle" >
								customerComboBox</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								ListBox
							</td>
							<td class="clsRecommendedStyle" >
								lstCustomer</td>
							<td class="clsOtherStyle" >
								customerListBox</td>
							<td>
							
							</td>
						</tr>
						
						<tr>
							<td >
								For all other controls
							</td>
							<td class="clsRecommendedStyle" >
								ctlCustomer</td>
							<td class="clsOtherStyle" >
								ctlCustomer</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								&nbsp;</td>
							<td class="clsRecommendedStyle" >
								&nbsp;</td>
							<td class="clsOtherStyle" >
								&nbsp;</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td>
								Form

							</td>
							<td class="clsRecommendedStyle" >
								OrdersForm
							
							
							
							</td>
							<td class="clsOtherStyle" >
								frmOrders
							
							
							
							</td>
							<td>
							</td>
							</tr>
							<tr>
							<td>
								Report

							</td>
							<td class="clsRecommendedStyle" >
								CustomerReport</td>
							<td class="clsOtherStyle" >
								rptCustomer
							
							
							
							</td>
							<td>
							</td>
							</tr>
						<tr>
							<td >
								Calendar
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								cldCustomer; dueDate 
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								AdRotator&nbsp;
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								artCustomer; customerRotator
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								CheckBox
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								chkCustomer; wantsMailouts
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								CheckBoxList
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								chkLCustomer; activeCustomers
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								CompareValidator
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								cmvCustomer; stateCorrect
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								CrystalReportViewer
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								crvCustomer; eomCustomerReport 
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								CustomValidator
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								ctvCustomer; detailsCorrect
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DropDownList
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								ddlCustomer; currentCustomer 
								
							</td>
							<td>
							
							</td>
						</tr>
						
						<tr>
							<td >
								GroupBox
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								grpCustomer; customerDetails
							
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								HyperLink
							
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
							
								
							</td>
							<td class="clsOtherStyle" >
								
								hypCustomer; customerLink
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Image
							
							</td>
								<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								imgCustomer; currentPhoto
								
							</td>
							<td>
							
							</td>
					</tr>
						<tr>
							<td >
								ImageButton
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								ibtnCustomer; proceed
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								LinkButton
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								lbtnCustomer; customerOrders
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								LinkLabel
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								llblCustomer; customerOrders
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								ListBox
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomers
								
							</td>
							<td class="clsOtherStyle" >
								
								lstCustomer; currentCustomers
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Panel
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								pnlCustomer; customerDetails
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Picture
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								picCustomer; wife
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								ProgressBar
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								prgCustomer; progress
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								RadioButton/OptionButton
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								optCustomer; wantsPhonecalls
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								RadioButtonList
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								rbtnlCustomer; contactOptions
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								RangeValidator
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								rgvCustomer; costCorrect
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								RegularExpressionValidator
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								revCustomer; emailAppropriate
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Repeater
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								repCustomer; detailsList
								
							</td>
							<td>
								rpt is used for reports
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								RequiredFieldValidator
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								rfvCustomer; emailCorrect
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								TabControl
							</td>
								<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							<td class="clsOtherStyle" >
								
								tabCustomer; pages
								
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								ValidationSummary
							</td>
							<td class="clsRecommendedStyle" >
								
								ctlCustomer
								
							</td>
							</td>
							<td class="clsOtherStyle" >
								
								vsmCustomer; allCorrect
								
							</td>
							<td>
							
							</td>
						</tr>
						</table>
						<br />
						<table class="clsSSWTable" cellpadding="2" summary="Formatting Table" width="100%" style="border-color: #FFFFFF">
						<tr>
							<th width="28%">Code Syntax</th>
							<th width="24%" >Recommended Style</th>
							<th width="24%" >Other Style</th>
							<th width="44%">Notes</th>
						</tr>					
						<tr>
							<td >
								ArrayList
							</td>
							<td class="clsRecommendedStyle" >
								customerList</td>
							<td class="clsOtherStyle" >
								aylCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataGrid
							</td>
							<td class="clsRecommendedStyle" >
								orderItems
							
							</td>
							<td class="clsOtherStyle" >
								dgdCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataList
							</td>
							<td class="clsRecommendedStyle" >
								orderItems
							
							</td>
							<td class="clsOtherStyle" >
								dlsCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataRowView
							</td>
								<td class="clsRecommendedStyle" >
								orderItem
							
							</td>
							<td class="clsOtherStyle" >
								drvCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataSet
							</td>
							<td class="clsRecommendedStyle" >
								dailyOrders
							
							</td>
							<td class="clsOtherStyle" >
								dstCustomer
							
							</td>
							<td>
							
							</td>
					</tr>
						<tr>
							<td >
								DataTable
							</td>
							<td class="clsRecommendedStyle" >
								orderItems</td>
							<td class="clsOtherStyle" >
								dtbCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataRow
							</td>
							<td class="clsRecommendedStyle" >
								orderItem</td>
							<td class="clsOtherStyle" >
								drwCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataColumn
							</td>
							<td class="clsRecommendedStyle" >
								taxAmount</td>
							<td class="clsOtherStyle" >
								dclCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								DataView
							</td>
							<td class="clsRecommendedStyle" >
								currentOrder</td>
							<td class="clsOtherStyle" >
								dvwCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Hashtable
							</td>
							<td class="clsRecommendedStyle" >
								securityCode</td>
							<td class="clsOtherStyle" >
								htbCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Literal
							</td>
							<td class="clsRecommendedStyle" >
								customerName</td>
							<td class="clsOtherStyle" >
								litCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								PlaceHolder
							</td>
							<td class="clsRecommendedStyle" >
								setting</td>
							<td class="clsOtherStyle" >
								plhCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								Table
							</td>
							<td class="clsRecommendedStyle" >
								orders 
							</td>
							<td class="clsOtherStyle" >
								tblCustomer
							
							</td>
							<td>
							
							</td>
						</tr>
						<tr>
							<td >
								TableCell
							</td>
							<td class="clsRecommendedStyle" >
								gstAmount</td>
							<td class="clsOtherStyle" >
								tdCustomer
							
							</td>
							<td>
							Consistent with HTML
							</td>
						</tr>
						<tr>
							<td >
								TableRow
							</td>
							<td class="clsRecommendedStyle" >
								customer 
							</td>
							<td class="clsOtherStyle" >
								trCustomer
							
							</td>
							<td>
								Consistent with HTML
							</td>
						</tr>
						<tr>
							<td >
								Xml</td>
							<td class="clsRecommendedStyle" >
								detailsXml</td>
							<td class="clsOtherStyle" >
							
							XmlCustomer</td>
						</tr>
					</table>
							<br />
					<table class="clsSSWTable" cellpadding="2" summary="Formatting Table" width="100%" style="border-color: #FFFFFF">
						<tr>
							<th width="28%">Object Syntax</th>
							<th width="24%" >Recommended Style </th>
							<th width="24%" >Other Style</th>
							<th width="44%">Notes</th>
						</tr>					

						<td>
								<div align="left">
									DataColumn
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									column
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									dc
								
								</div>
							</td>
						</tr>
						
						<tr>
						<td >
								<div align="left">
									DataRow
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									row
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									dr
								
								</div>
							</td>
						</tr>
						
						<tr>
						<td >
								<div align="left">
									SqlConnection
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									connection
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									cnn
								
								</div>
							</td>
						</tr>
						<tr>
							<td >
								<div align="left">
									SqlCommand
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									command
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									cmd
								
								</div>
							</td>
						</tr>
						<tr>
							<td >
								<div align="left">
									SqlDataAdapter
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									dataAdapter
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									adp
								
								</div>
							</td>
						</tr>
						<tr>
							<td >
								SqlParameter
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									parameter
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								prm
							
							</td>
						</tr>
						<tr>
							<td >
								<div align="left">
									SqlDataReader
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									reader
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									drd
								
								</div>
							</td>
						</tr>
						<tr>
							<td >
								<div align="left">
									OleDbConnection
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									connection
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									cnn
								
								</div>
							</td>
						</tr>
						<tr>
							<td >
								<div align="left">
									OleDbCommand 
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									command
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									cmd 
								 
								</div>
							</td>
						</tr>
						<tr>
							<td >
								<div align="left">
									OleDbDataAdapter
								</div>
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									dataAdapter
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								<div align="left">
									adp
								
								</div>
							</td>
						</tr>
						<tr>
							<td >
								OleDbDataReader
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									reader
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								drd
							
							</td>
						</tr>
						<tr>
							<td >
								OleDbParameter
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									parameter
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								prm
							
							</td>
						</tr>
						<tr>
							<td >
								SQL String
							</td>
							<td class="clsRecommendedStyle" >
								<div align="left">
									sqlString
								
								</div>
							</td>
							<td class="clsOtherStyle" >
								sql
							
							</td>
						</tr>
					</table></li>
					<p class="productBox">We have a program called <a href="/ssw/CodeAuditor/#CSyntax">SSW Code Auditor</a> to check for this rule.</p>
				<li><h2><a name="Constants"></a>Constants</h2>	
<p>
Try to name your constants using Pascal Case (e.g. ConnectionString) instead of using UPPER CASE.
</p>

<dl class="badCode"><dt><pre>
private const string CONNECTION_STRING = "server=tuna;uid=sa;database=LiveStats";
</pre>
</dt>
<dd>Figure: Bad example</dd></dl>
</dl>

<dl class="goodCode"><dt><pre>
private const string ConnectionString = "server=tuna;uid=sa;database=LiveStats";
</pre>
</dt>
<dd>Figure: Good example</dd></dl>
</dl>

				<li><h2><a name="DataAdapter"></a>DataAdapter</h2>	
       				<p>
					
								Try to stick to the IDataAdapter naming conventions. That means to start naming your methods with "Fill" or "Update". 
								<br />You could use "Select", "Load" or whatever, but we think it is better and more efficient to stick to the .NET naming conventions. </p>
							<dl class="badImage"><dt><img src="Images/data_adapter2.gif" alt="Data Adapter" width="172" height="135" /></dt>
							<dd>Figure: Bad example</dd></dl>
							<dl class="goodImage"><dt><img src="Images/data_adapter.gif" alt="Data Adapter" width="174" height="112" /></dt>
							<dd>Figure: Good example</dd></dl></li>
				<li><h2><a name="CDec"></a>Class declaration</h2>
				
					<p>Class structure should be declare in 
                            the following order to provide a logical flow to 
                            reader:</p>
						<ol>
						<li>Variable</li>
						<li>Constructor</li>
						<li>Property</li>
						<li>Events</li>
						<li>Methods</li>
						</ol>
						<dl class="image"><dt><img alt="Example Declaration of Class Structure" src="/ssw/Standards/DeveloperDotNet/Images/ClassDeclerationExample.gif" width="213" height="217" /></dt>
						<dd>Figure: Example Declaration of Class Structure</dd></dl></li>
		
		<h2><a name="NoVarSameClass"></a>No variable name with the same class name</h2>
<p>In C#, do not declare variable name with the same class name (but different 
casing). This can confuse other developers, and will cause problem when porting 
code to VB.</p>

<dl class="badCode"><dt><pre>
Array array = new Array();
</pre></dt><dd>Figure: Bad Example</dd></dl>
<dl class="goodCode"><dt>
<pre>
Array objects = new Array();
</pre></dt>
<dd>Figure: Good Example</dd></dl>
<p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p></li>
		
		<li><h2><a name="MainForm"></a>Main Form of a Windows Application</h2>
		<p>There is only one name that should ever be used for the main form of a Windows Application:
		<b>MainForm</b>. Don't use Main, frmMain, Startup, frmStartup, MenuMain, 
		frmMenuMain, etc. In the case of a Wizard application, there may not be 
		a single form in the project - this is fine too. Instead there will be a 
		class named <b>WizardPage</b> which inherits from the template 
		UserControl used by your wizard framework.</p>
		<p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p></li>
		<li><h2><a name="OldCom"></a>Old Com Objects</h2>
					
					<table class="clsSSWTable" width="70%" cellspacing="2" cellpadding="2" summary="Formatting Table">
					
						<tr>
							<th width="33%">Object</th>
							<th width="16%">Prefix</th>
							<th width="51%">Sample</th>
						</tr>
					
						<tr>
							<td >
								Recordset
							</td>
							<td >
								rst
							</td>
							<td>
								rstCustomer
							</td>
						</tr>
						<tr>
							<td>
								Connection
							</td>
							<td>
								cnn
							</td>
							<td >
								cnn
							</td>
						</tr>
						<tr>
							<td >
								Command
							</td>
							<td >
								cmd
							</td>
							<td >
								cmd
							</td>
						</tr>
					</table>
<br /></li>

                <li><h2><a name="ClassLevel"></a>Do you use a standard naming convention for class level variables in C# and VB .NET?</h2>
                <p>
                Class level variables should have a prefix so that you can see at a glance what the scope of the variable is eg mMyInt, m_MyInt.
                I like <b>m</b> for member/instance variables, <b>p</b> for parameter variables, and no prefix for locally declared variables.
                Some dont like the specific use of the underscore because of the difficulty typing it eg m_MyInt.<br />
                Using a prefix is a naming convention that can be used in both VB.NET and C#.<br />
                </p>
                <p>Note: Some teams use "_" to prefix private member variables, others "m_" and some are just using camel case.<br />
                Often teams don't have a personal preference so you should make sure that you are consistent in your team/solution.
                </p>
                    
                <dl class="badCode"><dt><pre>public class MyClass
{
    private int <span style="background-color: Yellow;">myInt;</span>

    public MyClass(int myInt)
    {
        <span style="background-color: Yellow;">this.myInt</span> = myInt;
    }

    public int MyInt
    {
        get { return <span style="background-color: Yellow;">this.myInt;</span> }
    }
}</pre></dt><dd>Figure: Bad Example - Can only be used in C# because C# is case sensitive</dd></dl>
                <dl class="goodCode"><dt>
                <pre>public class MyClass
{
    private int <span style="background-color: Yellow;">mMyInt;</span>

    public MyClass(int pMyInt)
    {
        <span style="background-color: Yellow;">mMyInt</span> = pMyInt;
    }

    public int MyInt
    {
        get { return <span style="background-color: Yellow;">mMyInt;</span> }
    }
}</pre></dt>
                <dd>Figure: Good Example - Can be used in VB.NET and C#</dd></dl></li>


					
						
				<li><h2><a name="Other"></a>Other Links</h2>
					
					<p>
						<a href="/ssw/Redirect/Microsoft/MSDNVBNamingConventions.htm" target="_blank">Microsoft's Naming Guidelines (for VB 6)</a> 
                        <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" />
								<br />
								Microsoft's Standard for naming objects (for VB 6)
					</p>	
					<p>
						<a href="/ssw/Redirect/Microsoft/MSDNVBDotNetNamingConventions.htm" target="_blank">Microsoft's Naming Guidelines (for the .NET Framework)</a> 
                        <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" />
								<br />
								Microsoft's Standard for naming objects (for the .NET Framework)
					</p>									
					
  <p> <a href="/ssw/Redirect/Microsoft/MSRulesRedirect.htm" target="_blank"> 
        Naming Conventions for VB</a>  
  <img alt="You are going to a site 
		outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" /><br />
							Object Hungarian Notation Naming Conventions for VB (Q173738)
					</p>

  <p> <a href="/ssw/Redirect/FMSNamingConventionsRedirect.htm" target="_blank"> 
        Changes to Naming Conventions for VB.NET</a>  
  <img alt="You are going to a site 
		outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" /><br />
							FMS Inc Naming Conventions
					</p>
		<p> 
		<a href="/ssw/Redirect/Microsoft/MSDNVBNamingConventions.htm" target="_blank">
								Microsoft's Object Naming Conventions for 
		VB6/Access</a>
								<img alt="You are going to a site outside of SSW"src="/ssw/Images/LeaveSite.gif" width="17" height="11" /> 
																<br />
								Microsoft's Old Standard for naming objects. This is deprecated, but 
                        you should still follow these conventions for VB6/Access 
                        projects.</p></li>
</ol>
</div>
		</asp:content>