<?xml version='1.0' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:fn="http://www.w3.org/2005/02/xpath-functions">
	<xsl:output 
		method="html" version="1.0" encoding="UTF-8" 
		indent="yes" 
		omit-xml-declaration="yes" />
	<xsl:strip-space elements="*" />
	<xsl:key name="ReportByFile" match="Report" use="FileName" />
	<xsl:key name="ReportByRule" match="Report" use="RuleID" />
	<xsl:key name="Rule" match="Rule" use="RuleID" />
	<xsl:key name="JobRule" match="JobRule" use="JobID" />
	<xsl:key name="JobRuleByRuleID" match="JobRule" use="RuleID" />
	<xsl:key name="Exception" match="RuleException" use="RuleID" />
	<xsl:param name="RootPath" select="/*/Summary/@ReportPath" />
	<xsl:template match="/">
		<xsl:variable name="TotalRuleCount" select="count(//JobRule)" />
		<xsl:variable name="EnabledRuleCount" select="count(//JobRule[IsEnabled='true'])" />
		<xsl:variable name="DisabledRuleCount" select="count(//JobRule[IsEnabled='false'])" />
		<xsl:variable name="PassedRuleCount" select="count(//JobRule[IsEnabled='true' and count( key('ReportByRule', RuleID)[IsIgnored='false'])=0])" />
		<xsl:variable name="FailedRuleCount" select="count(//JobRule[IsEnabled='true' and count( key('ReportByRule', RuleID)[IsIgnored='false'])>0])" />
		<xsl:variable name="FailedFileCount" select="count(//Report[. = key('ReportByFile', FileName)[position() = 1 and IsIgnored='false']])" />
		<xsl:variable name="IgnoredFileCount" select="count(//Rule[ count( key('ReportByRule', RuleID)[IsIgnored='true'])>0])" />
    <xsl:variable name="ErrorCount" select="count(//Report[IsIgnored='false'])" />
		<xsl:variable name="ReplacedLinesCount" select="count(//Report[ReplacedLines!=''])" />
		<html>
			<head>
				<title>SSW Code Auditor Report</title>
				<script language="JavaScript">
					<xsl:text disable-output-escaping="yes"><![CDATA[
			//
			// Checking brower version
			var agt = navigator.userAgent.toLowerCase();
			var is_ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1));
			var is_gecko = (agt.indexOf('gecko') != -1);

			//
			// Common functions
			function getElementsByClass( className, node, tag) 
			{
				var classElements = new Array();
				if ( node == null )
					node = document;
				if ( tag == null )
					tag = '*';
			  
				
				var els = node.getElementsByTagName(tag);
				var elsLen = els.length;
		    
				for (i = 0, j = 0; i < elsLen; i++) 
				{
						if( els[i].className == className)
						{
								classElements[j] = els[i];
						j++;
						}
				}
				return classElements;
			}
	    
			//
			// Reporting    
			function togglePathFilter( obj)
			{
					var name = obj.name;
					var pathId = obj.value;
					var visible = obj.checked;
					var matchAll = (pathId < 0);
	        
					// update other checkboxes
					// update other checkboxes
					if( matchAll)
					{
							var filterElems = document.getElementsByName(name);
							var filterElemLen = filterElems.length;
							for( var i=0; i<filterElemLen; i++)
							{
									filterElems[i].checked = obj.checked;
							}
					}
					else
					{
					    pathFilter$all.checked = false;
					}
	        
					// Get all reports
					var reportElems = getElementsByClass("Report", document.getElementById('Reports'))
					var reportElemsLen = reportElems.length;
	        
					for( var i=0; i<reportElemsLen; i++)
					{
							// Get all groups in report
							var reportElem = reportElems[i];
							var groupElems = getElementsByClass("Group", reportElem);
							var groupElemsLen = groupElems.length;

	            
							// alert( 'groupElemsLen:' + groupElemsLen);
							for( var j=0; j<groupElemsLen; j++)
							{
									// Get all rows in group
									var groupElem = groupElems[j];
									var rowElems = getElementsByClass("Row", groupElem);
									var rowElemsLen = rowElems.length;
									var groupVisible;
	                
									// Apply filter on group
									var groupPathId = groupElem.getAttribute("pathId");
	                
									if( groupPathId == null)
									{
											// do not filter group without pathId
											groupVisible = true;
									}
									else if( groupPathId == pathId || matchAll)
									{
											groupVisible = visible;
									}
									else
									{
											groupVisible = getVisible( groupElem);
									}
	                
									// Filter all rows in group
									var anyRowVisible = false;
									for( var k=0; k<rowElemsLen; k++)
									{
											// Apply filter on row
											var rowElem = rowElems[k];
											var rowPathId = rowElem.getAttribute("pathId");
											if( rowPathId == null)
											{
													// do not filter row without pathId
													anyRowVisible = true;
											}
											else if( rowPathId == pathId || matchAll)
											{
													setVisible( rowElem, visible);
													if( visible)
													{
															anyRowVisible = true;
													}
											}
											else if( getVisible(rowElem))
											{
													anyRowVisible = true;
											}
									}

									// Filter group if all rows are filtered.
									// Group is visible IF its visible because of filter AND any of its row is visible.
									setVisible( groupElem, groupVisible && anyRowVisible);
							}
					}
			}
	    
			function toggleGroupByElem( groupElem, visible)
			{
					// Find the groupName to toggle plus / minus
					// Find the groupBody
					var groupBodyElem = null;
					var groupNameElem = null;
					for( var i=0; i<groupElem.childNodes.length; i++)
					{
							var childNode = groupElem.childNodes[i];
							var className = String(childNode.className).toLowerCase();           
							if( className == 'groupbody')
							{
									groupBodyElem = childNode;
							}
							if( className == 'groupname')
							{
									groupNameElem = childNode;
							}
							if( groupNameElem != null && groupBodyElem != null)
							{
									break;
							}
					}
	        
					// Ignore group with no body.
					if( groupBodyElem == null) { return; }
						        
					if( visible == null)
					{   
							// Invert the visible state on group body
							visible = !getVisible( groupBodyElem);
					}
					
					if( groupNameElem != null)
					{
							// toggle sign
							var imageElem = groupNameElem.firstChild;
							if( imageElem.src != null)
							{
							    if (visible)
							        imageElem.src = imageElem.src.replace("plus.gif", "minus.gif");
							    else
							        imageElem.src = imageElem.src.replace("minus.gif", "plus.gif");
							}
					}
					setVisible( groupBodyElem, visible);
			}
	    
			function reportFilterChanged( reportFilter)
			{
					// Hide other report
					var selectedReportId = reportFilter.value;
					
					var reportElems = getElementsByClass("Report", document.getElementById('Reports'));
					var reportElemsLen = reportElems.length;
					
					for( var i=0; i<reportElemsLen; i++)
					{
							var reportElem = reportElems[i];
							var visible = (reportElem.id == selectedReportId);            
							setVisible( reportElem, visible);
					}
			}
	    
			function getVisible( elem)
			{
					return (elem.style.display != "none");
			}
	    
			function setVisible( elem, visible)
			{
					if( visible)
					{
							displayValue = '';
					}
					else
					{
							displayValue = 'none';
					}
					elem.style.display = displayValue;
			}
			]]></xsl:text>
				</script>
				<style type="text/css">
          /**
          * Style for general layout
          */
          body
          {
          background-color: white;
          }
          body, td, input
          {
          font: 8pt verdana;
          }

          /* page title */
          h1
          {
          font-size : 22px;
          font-family : Verdana;
          font-weight : bold;
          margin: 0 0 0 0;
          }

          /* sectiong heading */
          h2
          {
          border-top: solid 2pt red;
          background-color: lightgrey;
          font-family: Verdana;
          font-size : 13px;
          font-weight: bold;
          padding: 2;
          margin-top: 4pt;
          margin-bottom: 0pt;
          }

          /* sub section heading */
          h3
          {
          }

          /* control or filter group label */
          h4
          {
          font-family: verdana, arial;
          font-size: 8pt;
          font-weight: bold;

          margin: 0pt;
          margin-top: 4pt;
          margin-bottom: 4pt;
          }

          select
          {
          font: 8pt Verdana;
          width: 150px;
          }

          /*
          * Region styles
          */
          .Logo
          {
          vertical-align: middle;
          margin-right: 4pt;
          }

          .EmbeddedImage
          {
          margin-top: 0pt;
          margin-bottom: 0pt;
          margin-left: 4pt;
          margin-right: 4pt;
          }

          .Tip
          {
          font-family: Verdana;
          padding-top: 10;
          padding-bottom: 10;
          padding-left: 10;

          margin-top: 0pt;
          margin-bottom: 0pt;
          }

          .Tip ol
          {
          margin-left: 20pt;
          margin-top: 0px;
          margin-bottom: 0px;
          }

          .Tip p
          {
          margin: 0px 0px 0px 0px;
          }

          .Summary
          {
          background-color: whitesmoke;
          padding: 8px 8px 8px 8px;
          margin: 0px;
          margin-bottom: 16px;
          }

          .Statistics
          {
          width: 400pt;
          }

          .Statistics table
          {
          margin-top:8pt;
          margin-bottom:8pt;
          }

          .Food
          {
          margin-top: 16pt;
          float:right;
          }

          .PathFilter
          {
          margin-top: 8px;
          margin-bottom: 8px;
          }
          .ReportFilter
          {
          margin-top: 8px;
          margin-bottom: 8px;
          float: right;
          }
          .GroupName
          {
          font-style: italic;
          padding: 0pt;
          margin: 4pt;
          border-bottom: 1px solid black;
          cursor: hand;
          }
          .GroupNode
          {
          vertical-align: middle;
          padding: 0pt;
          margin: 4pt;
          margin-left: 0pt;
          }
          .GroupBody
          {
          margin-bottom: 4pt;
          background-color: whitesmoke;
          }
          .GroupBody p
          {
          margin: 0pt;
          margin-bottom: 2pt;
          }
          .Row
          {
          vertical-align: top;
          }
          .Enabled
          {
          color: darkgreen;
          }
          .Disabled
          {
          color: red;
          }
          .Failed
          {
          color: red;
          font-weight: bold;
          }
          .Passed
          {
          color: green;
          font-weight: bold;
          }
          .NoFileFound
          {
          align:center;
          }
        </style>
			</head>
			<body>
				<h1>
					<img src="{$RootPath}/images/reportSswLogo.gif" class="Logo" />
					Code Auditor - Job Report
				</h1>
				<div class="Tip">
					<p>
						Tips:
					</p>
					<ol>
						<li>
							<p>
								<a href="http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1683629" class="TipLink" >
									If you believe that a rule is incorrect, please report it to us.
								</a>
							</p>
						</li>
						<li>
							<p>
								You can use the checkboxes to tick files that you have fixed.
							</p>
							<p>
								Note these checkboxes are not saved, so if you close and re-open the report they
								will all be unchecked again.
							</p>
						</li>
						<li>
							<p>
								<a href="http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1203760" class="TipLink">
									If you want to find the line easily in VS.NET, then turn on Line Numbering.
								</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://www.ssw.com.au/ssw/CodeAuditor/UserGuideVS.aspx#DoubleClickAndFix" class="TipLink">If you want to double click to find the line in VS.NET, then use the Output Window.</a>
							</p>
						</li>
						<li>
							<p>
								If you want to permanently skip a line of code on a file, then add a Code Auditor
								Page Directive before the line to skip.
							</p>
							<p>
								Eg.: //SSW Code Auditor - Ignore next line (C#) or 'SSW Code Auditor - Ignore next
								line (VB.NET) or <![CDATA[<!--SSW Code Auditor - Ignore next	line(HTML)-->]]>
							</p>
						</li>
						<li>
							<p>
								If you want to permanently skip a file, then add a Code Auditor Page Directive on
								the top of file.
							</p>
							<p>
								Eg.: //SSW Code Auditor - Ignore this file (C#) or 'SSW Code Auditor - Ignore this
								file (VB.NET) or <![CDATA[<!--SSW Code Auditor - Ignore next	 line(HTML)-->]]>
							</p>
						</li>
					</ol>
				</div>
				<h2>
					Summary for Job: <xsl:value-of select="//Job/JobName" />
				</h2>
				<div class="Summary">
					<div class="Statistics" >
						<div class="Food">
							<xsl:choose>
								<xsl:when test="$FailedRuleCount = 0">
									<img src="{$RootPath}/images/apple.png" class="EmbeddedImage"/>
									<span class="Passed">Great! You have healthy code.</span>
								</xsl:when>
								<xsl:otherwise>
									<img src="{$RootPath}/images/burger.png" class="EmbeddedImage"/>
									<span class="Failed">No Good - your code is not healthy.</span>
								</xsl:otherwise>
							</xsl:choose>
						</div>
						<table cellspacing="0" cellpadding="1" border="0">
							<cols>
								<col width="140pt" />
								<col width="auto" />
							</cols>
							<tr>
								<td>Rules Passed:</td>
								<td>
									<xsl:value-of select="$PassedRuleCount" />
								</td>
							</tr>
							<tr>
								<td>Rules Failed:</td>
								<td>
									<xsl:value-of select="$FailedRuleCount" />
									<xsl:choose>
										<xsl:when test="$FailedRuleCount = 0">
											<img src="{$RootPath}/images/pass.gif" class="EmbeddedImage"/>
										</xsl:when>
										<xsl:otherwise>
											<img src="{$RootPath}/images/fail.gif" class="EmbeddedImage"/>
										</xsl:otherwise>
									</xsl:choose>
								</td>
							</tr>
							<tr>
								<td>Warnings:</td>
								<td>
									<xsl:value-of select="$ErrorCount" />
								</td>
							</tr>
							<tr>
								<td>Replaced Warnings:</td>
								<td>
									<xsl:value-of select="$ReplacedLinesCount" />
								</td>
							</tr>
							<tr>
								<td>Rules:</td>
								<td>
									<xsl:value-of select="$TotalRuleCount" />
								</td>
							</tr>
							<tr>
								<td>Rules Run:</td>
								<td>
									<xsl:value-of select="$EnabledRuleCount" />
								</td>
							</tr>
							<tr>
								<td>Rules Disabled:</td>
								<td>
									<xsl:value-of select="$DisabledRuleCount" />
									<xsl:choose>
										<xsl:when test="$DisabledRuleCount = 0">
											<img src="{$RootPath}/images/pass.gif" class="EmbeddedImage"/>
										</xsl:when>
										<xsl:otherwise>
											<img src="{$RootPath}/images/warning.gif" class="EmbeddedImage"/>
										</xsl:otherwise>
									</xsl:choose>
								</td>
							</tr>
						</table>
						<table cellspacing="0" cellpadding="2" border="0">
							<cols>
								<col width="140pt" />
								<col width="auto" />
							</cols>
							<tr>
								<td>Assembly Name:</td>
								<td>
									<xsl:value-of select="/*/Summary/@AssemblyName" />
								</td>
							</tr>
							<tr>
								<td>Assembly Version:</td>
								<td>
									<xsl:value-of select="/*/Summary/@AssemblyVersion" />
								</td>
							</tr>
							<tr>
								<td>Started:</td>
								<td>
									<xsl:value-of select="/*/Summary/@StartTime" />
								</td>
							</tr>
							<tr>
								<td>Ended:</td>
								<td>
									<xsl:value-of select="/*/Summary/@EndTime" />
								</td>
							</tr>
							<tr>
								<td>Time Taken:</td>
								<td>
									<xsl:value-of select="/*/Summary/@TimeTaken" /> (hh:mm:ss)
								</td>
							</tr>
							<tr>
								<td>Files Processed:</td>
								<td>
									<xsl:value-of select="/*/Summary/@FilesProcessed" /> of <xsl:value-of select="/*/Summary/@FileCount" /> (<xsl:value-of select="format-number((/*/Summary/@FilesProcessed div /*/Summary/@FileCount), '#%')" />)
								</td>
							</tr>
						</table>
					</div>
					<div class="ReportFilter">
						<h4>View by:</h4>
						<select id="reportFilter" onchange="reportFilterChanged(this)">
							<option value="ReportByRule">
								By Rule (<xsl:value-of select="$FailedRuleCount" />)
							</option>
							<option value="ReportByFile">
								By File (<xsl:value-of select="$FailedFileCount" />)
							</option>
							<option value="ReportByIgnore">
								By Ignored File (<xsl:value-of select="$IgnoredFileCount" />)
							</option>
							<option value="ExecutionReport">
								The Rules (<xsl:value-of select="$TotalRuleCount" />)
							</option>
						</select>
					</div>
					<table class="PathFilter" border="0" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<td colspan="2">
									<h4>Path scanned:</h4>
								</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<input id="pathFilter$all" name="Path" type="Checkbox" value="-1" checked="checked" onchange="togglePathFilter(this);" />
								</td>
								<td>
									<label for="pathFilter$all">Select all</label>
								</td>
							</tr>
							<xsl:for-each select="//Path[PathEnabled='true']">
								<xsl:variable name="PathName" select="PathLoc" />
								<xsl:variable name="PathID" select="PathID" />
								<xsl:variable name="HttpPathName" select="RootUrl" />
								<xsl:variable name="PathType" select="PathType" />
								<tr>
									<td>
										<input 
											name="Path" value="{PathID}" 
											checked="checked" type="checkbox"
											onchange="togglePathFilter(this)"
								/>
									</td>
									<td>
										<a href="{PathLoc}">
											<xsl:value-of select="PathLoc" />
										</a>
										<strong>
											<xsl:choose>
												<xsl:when test="$PathType = 4">
													<xsl:variable name="PathFileCount" select="count(//Report[PathID=$PathID and IsIgnored='false'])" />
													(<xsl:value-of select="$PathFileCount" />)
												</xsl:when>
												<xsl:otherwise>
													<xsl:variable name="PathFileCount" select="count(//Report[starts-with(FileName,$PathName) and IsIgnored='false'])" />
													(<xsl:value-of select="$PathFileCount" />)
												</xsl:otherwise>
											</xsl:choose>
										</strong>
										<a href="{RootUrl}">
											<xsl:value-of select="RootUrl" />
										</a>
										<xsl:variable name="HttpPathFileCount" select="count(//Report[starts-with(FileName,$HttpPathName)])" />
										<xsl:if test="string-length($HttpPathName) > 0">
											<strong>
												(<xsl:value-of select="$HttpPathFileCount" />)
											</strong>
										</xsl:if>
									</td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</div>
				<div id="Reports">
					<!-- By File report -->
					<div id="ReportByFile" class="Report" style="display: none;">
						<xsl:apply-templates select="//Report[. = key('ReportByFile', FileName)[position() = 1 and IsIgnored='false']]" mode="ByFile" />
						<xsl:if test="count(//Report[. = key('ReportByFile', FileName)[position() = 1 and IsIgnored='false']]) = 0">
							<div class="NoFileFound">
								No file was found to have rule violations.
							</div>
						</xsl:if>
					</div>

					<!-- By Rule Report -->
					<div id="ReportByRule" class="Report">
						<xsl:apply-templates select="//Rule[ count( key('ReportByRule', RuleID)[IsIgnored='false'])>0]" mode="ByRule" />
						<xsl:if test="count( key('ReportByRule', RuleID)[IsIgnored='false'])>0">
							<div class="NoFileFound">
								No file was found to have rule violations.
							</div>
						</xsl:if>
					</div>

					<!-- Ignore File Report -->
					<div id="ReportByIgnore" class="Report" style="display: none;">
						<xsl:apply-templates select="//Rule[ count( key('ReportByRule', RuleID)[IsIgnored='true'])>0]" mode="ByIgnored">
							<!--<xsl:sort select="RuleName"/>-->
						</xsl:apply-templates>
						<xsl:if test="count(//Rule[ count( key('ReportByRule', RuleID)[IsIgnored='true'])>0]) = 0">
							<div class="NoFileFound">
								No file was found to have rule violations.
							</div>
						</xsl:if>
					</div>
					<!-- Execution Report -->
					<div id="ExecutionReport" class="Report" style="display: none;">
						<xsl:apply-templates select="//Rule[RuleID > 0]">
							<xsl:sort select="RuleName" />
						</xsl:apply-templates>
					</div>
				</div>
				<div class="footer">
					<center>
						<img src="{$RootPath}/images/ft_ssw.gif"/>
					</center>
				</div>
			</body>
		</html>
	</xsl:template>


	<!-- ######################### -->
	<!-- Report by file -->
	<xsl:template match="Report" mode="ByFile">
		<div class="Group" pathId="{PathID}">
			<div class="GroupName" onclick="toggleGroupByElem(this.parentNode);">
				<img src="{$RootPath}/images/minus.gif" class="GroupNode"/>
				<label>
					<xsl:value-of select="FileName" />
					(<xsl:value-of select="count(key('ReportByFile', FileName)[IsIgnored='false'])" />)
					[<a href="{FileName}" target="_BLANK">Open</a>]
				</label>
			</div>
			<div class="GroupBody">
				<table width="100%">
					<colgroup>
						<col width="1" />
						<col width="70%" />
						<col width="30%" />
					</colgroup>
					<xsl:apply-templates select="key('ReportByFile', FileName)[IsIgnored='false']" mode="GetRules">
						<xsl:sort select="key('Rule', RuleID)[1]/RuleName" />
					</xsl:apply-templates>
				</table>
			</div>
		</div>
	</xsl:template>

	<!-- ######################### -->
	<!-- Get rule list for Report by File -->
	<xsl:template match="Report" mode="GetRules">
		<xsl:variable name="PathID" select="PathID" />
		<tr class="Row">
			<td>
				<input type="checkbox" />
			</td>
			<td>
				<a target="_BLANK" href="{key('Rule', RuleID)[1]/RuleURL}">
					<xsl:value-of select="key('Rule', RuleID)[1]/RuleName" />
				</a>
			</td>
			<td>
				<xsl:apply-templates select="." mode="ReportNote" />
			</td>
		</tr>
	</xsl:template>

	<!-- ######################### -->
	<!-- By Rule Report -->
	<xsl:template match="Rule" mode="ByRule">
		<div class="Group">
			<div class="GroupName" onclick="toggleGroupByElem(this.parentNode);">
				<img src="{$RootPath}/images/minus.gif" class="GroupNode"/>
				<label>
					<xsl:value-of select="RuleName" />
					(<xsl:value-of select="count(key('ReportByRule', RuleID)[IsIgnored='false'])" />)
					[<a href="{key('Rule', RuleID)[1]/RuleURL}" target="_BLANK">Rule</a>]
				</label>
			</div>
			<div class="GroupBody">
				<table width="100%">
					<colgroup>
						<col width="1" />
						<col width="70%" />
						<col width="30%" />
					</colgroup>
					<xsl:apply-templates select="key('ReportByRule', RuleID)[IsIgnored='false']" mode="GetFiles" />
				</table>
			</div>
		</div>
		<tr>
		</tr>
	</xsl:template>

	<!-- ######################### -->
	<!-- Get file list for Report by Rule -->
	<xsl:template match="Report" mode="GetFiles">
		<tr class="Row" pathId="{PathID}">
			<td>
				<input type="checkbox" />
			</td>
			<td>
				<a target="_BLANK" href="{FileName}">
					<xsl:value-of select="FileName" />
				</a>
			</td>
			<td>
				<xsl:apply-templates select="." mode="ReportNote" />
			</td>
		</tr>
	</xsl:template>


	<!-- ######################### -->
	<!-- Output report note -->
	<xsl:template match="Report" mode="ReportNote">
		<xsl:variable name="LineNumber" select="normalize-space(LineNumber)" />
		<xsl:variable name="Notes" select="normalize-space(Notes)" />
		<xsl:variable name="ErrorMessage" select="normalize-space(ErrorMessage)" />
		<xsl:variable name="ReplacedLines" select="normalize-space(ReplacedLines)" />
		<!-- Output report note if there is one. -->
		<xsl:choose>
			<xsl:when test="$LineNumber!='' or $Notes!='' or $ErrorMessage!='' or $ReplacedLines!=''">
				<xsl:if test="$LineNumber != ''">
					<p>
						Line(s): <xsl:value-of select="$LineNumber" />
					</p>
				</xsl:if>
				<xsl:if test="$Notes != ''">
					<p>
						<xsl:call-template name="break">
							<xsl:with-param name="text" select="$Notes" />
						</xsl:call-template>
					</p>
				</xsl:if>
				<xsl:if test="$ErrorMessage != ''">
					<p>
						<xsl:value-of select="$ErrorMessage" />
					</p>
				</xsl:if>
				<xsl:if test="$ReplacedLines != ''">
					<p>
						Replaced Line(s): <xsl:value-of select="$ReplacedLines" />
					</p>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="boolean(ShouldExist)">
						<xsl:choose>
							<xsl:when test="CheckWhat=1">
								<p>Required occurrence not found in filename.</p>
							</xsl:when>
							<xsl:otherwise>
								<p>Required occurrence not found.</p>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						<xsl:choose>
							<xsl:when test="CheckWhat=1">
								<p>Invalid occurrence found in filename.</p>
							</xsl:when>
							<xsl:otherwise>
								<p>Invalid occurrence found.</p>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
								

	<!-- ######################### -->
	<!-- Ignore File Report -->
	<xsl:template match="Rule" mode="ByIgnored">
		<div class="Group">
			<div class="GroupName" onclick="toggleGroupByElem(this.parentNode);">
				<img src="{$RootPath}/images/minus.gif" class="GroupNode"/>
				<label>
					<xsl:value-of select="RuleName" />
					(<xsl:value-of select="count(key('ReportByRule', RuleID)[IsIgnored='false'])" />)
					[<a href="{key('Rule', RuleID)[1]/RuleURL}" target="_BLANK">Rule</a>]
				</label>
			</div>
			<div class="GroupBody">
				<table width="100%">
					<colgroup>
						<col width="1" />
						<col width="70%" />
						<col width="30%" />
					</colgroup>
					<xsl:apply-templates select="key('ReportByRule', RuleID)[IsIgnored='true']" mode="GetFiles" />
				</table>
			</div>
		</div>
	</xsl:template>

	<!-- ######################### -->
	<!-- Execution Report -->
	<xsl:template match="Rule">
		<table border="0" cellpadding="0" width="100%">
			<tr>
				<td class="GroupName">
					<xsl:value-of select="RuleName" />
				</td>
			</tr>
			<tr valign="top">
				<td valign="top" width="40%">
					<table cellspacing="1" cellpadding="2">
						<colgroup>
							<col width="150" valign="top" style="background-color: whitesmoke" />
							<col />
						</colgroup>
						<tr>
							<td>Enabled</td>
							<td>
								<xsl:variable name="RuleEnabled" select="key('JobRuleByRuleID', RuleID)/IsEnabled" />
								<xsl:if test="$RuleEnabled='false'">
									<div class="Disabled">
										<xsl:value-of select="$RuleEnabled" />
									</div>
								</xsl:if>
								<xsl:if test="$RuleEnabled='true'">
									<div class="Enabled">
										<xsl:value-of select="$RuleEnabled" />
									</div>
								</xsl:if>
							</td>
						</tr>
						<tr>
							<td>File Filter</td>
							<td>
								<xsl:value-of select="FileFilter" />
							</td>
						</tr>
						<tr>
							<td>Errors Found</td>
							<td>
								<xsl:variable name="Errors" select="count( key('ReportByRule', RuleID)[IsIgnored='false'])" />
								<xsl:choose>
									<xsl:when test="$Errors > 0">
										<div class="Failed">
											<xsl:value-of select="$Errors" />
										</div>
									</xsl:when>
									<xsl:otherwise>
										<div class="Passed">
											<xsl:value-of select="$Errors" />
										</div>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
						<tr>
							<td>Should Exist</td>
							<td>
								<xsl:value-of select="ShouldExist" />
							</td>
						</tr>
						<tr>
							<td>Date Created</td>
							<td>
								<xsl:value-of select="DateCreated" />
							</td>
						</tr>
						<tr>
							<td>Notes</td>
							<td>
								<xsl:value-of select="RuleNote" />
							</td>
						</tr>
						<tr>
							<td>Search String</td>
							<td>
								<xsl:value-of select="SearchString" />
							</td>
						</tr>
						<tr>
							<td>Total Time</td>
							<td>
								<xsl:value-of select="TotalTimeTaken" />s
							</td>
						</tr>
						<tr>
							<td>Average Time</td>
							<td>
								<xsl:value-of select='format-number((TotalTimeTaken div TotalFileScanned) div 1000,"0.0000")' />s
							</td>
						</tr>
						<tr>
							<td>Total File Scanned</td>
							<td>
								<xsl:value-of select="TotalFileScanned" />
							</td>
						</tr>
						<tr valign="top">
							<td>Exceptions</td>
							<td>
								<table>
									<xsl:for-each select="key('Exception', RuleID)">
										<tr>
											<td>
												<xsl:value-of select="ExceptionName" />
											</td>
										</tr>
										<tr>
											<td style="padding-left: 10px;">
												<xsl:value-of select="SearchString" />
												(<xsl:choose>
													<xsl:when test="SearchIn='true'">file path</xsl:when>
													<xsl:otherwise>file content</xsl:otherwise>
												</xsl:choose>)
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</xsl:template>

	<!-- ######################### -->
	<!-- Misc function -->
	<xsl:template name="break">
		<xsl:param name="text" select="./Notes" />
		<xsl:choose>
			<xsl:when test="contains($text, '&#xa;')">
				<xsl:value-of select="substring-before($text, '&#xa;')" />
				<br />
				<xsl:call-template name="break">
					<xsl:with-param name="text" select="substring-after($text,'&#xa;')" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>