<?xml version='1.0' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />

	<xsl:key name="groupSet" match="Report" use="FileName" />
	<xsl:key name="JobRule" match="JobRule" use="JobID" />
	<xsl:key name="JobRuleByRuleID" match="JobRule" use="RuleID" />
	<xsl:key name="Exception" match="RuleException" use="RuleID" />
	
	<xsl:param name="RootPath" />
	
	
	<xsl:template match="/">
		<html>
			<head>
				<title>SSW Code Auditor Report</title>
				<script language="JavaScript">
					var RootPath = "<xsl:value-of select="$RootPath" />";
					<xsl:text disable-output-escaping="yes"><![CDATA[
						function toggleOutline(groupName)
						{
							tbodies = document.all.tags("TBODY");
							spans = document.all.tags("SPAN");
							for (i = 0; i < tbodies.length; i ++)
							{
								if (tbodies[i].FileName == groupName)
								{
									tbodies[i].style.display = (tbodies[i].style.display == "none") ? "block" : "none";
									break;
								}
							}
							for (i = 0; i < spans.length; i++) 
							{
								if (spans[i].FileName == groupName)
								{
									image = spans[i].childNodes[0];
									if (image.src.indexOf("minus.gif") != -1)
										image.src = image.src.replace("minus.gif", "plus.gif");
									else
										image.src = image.src.replace("plus.gif", "minus.gif");
									break;
								}
							}
						}
						
						function showJobReport()
						{
							ExecutionReport.style.display = "none";
							JobReport.style.display = "block";
						}
						
						
						function showExecutionReport()
						{
							ExecutionReport.style.display = "block";
							JobReport.style.display = "none";
						}
					]]></xsl:text>
				</script>
				<style type="text/css">
					A
					{
						text-decoration: none;
						color: black;
					}
					
					A:hover
					{
						color: red;
					}
					
					BODY, TD
					{
						font: 8pt Verdana;
					}
				</style>
			</head>
			<body bgcolor="#ffffff">
				<table border="0">
					<tr>
						<td>
							<xsl:element name="img">
								<xsl:attribute name="src">images/<xsl:value-of select="$RootPath" />reportSswLogo.gif</xsl:attribute>
							</xsl:element>
						</td>
						<td>
							<p style="font-size : 22px; font-family : Verdana; font-weight : bold;">SSW Code Auditor - Job Report (By File)</p>
						</td>
					</tr>
				</table>
				<table border="0" width="100%" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<br />
							<small>
								TIP: You can use the checkboxes to tick files that you have fixed.  Note these checkboxes are not saved, so if
								you close and re-open the report they will all be unchecked again.
							</small>
						</td>
					</tr>
					<tr>
						<td>
							<img src="clear.gif" height="10" width="1" />
						</td>
					</tr>
					<tr>
						<td>
							<div style="background-color: red; height: 7px; font: 1px Verdana;">&#13;</div>
							<div style="background-color: white; height: 1px; font: 1px Verdana;">&#13;</div>
						</td>
					</tr>
					<tr bgcolor="lightgrey">
						<td>
							<table width="100%">
								<td>
									<b style="font-family : Verdana; font-size : 13px">Job Name: <xsl:value-of select="//Job/JobName" /></b>
								</td>
								<td align="right">
									<b>
										<a href="javascript:showJobReport()">Job Report</a> | 
										<a href="javascript:showExecutionReport()">Execution Report</a>
									</b>
								</td>
							</table>
						</td>
					</tr>
					<tr>
						<td><img src="clear.gif" height="10" width="1" /></td>
					</tr>
				</table>
				
				<table border="0" cellpadding="0">
					<tr>
						<td>
							Paths Scanned: <br />
							<xsl:for-each select="//Path">
								<a href="{PathLoc}"><xsl:value-of select="PathLoc" /></a>
								<a href="{RootUrl}"><xsl:value-of select="RootUrl" /></a>
								<br />
							</xsl:for-each>
						</td>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="count(//JobRule)" /> rules ran, with <xsl:value-of select="count(//Report)" />
							rule violations.
						</td>
					</tr>
				</table>
				
				<div id="JobReport">
					<table border="0" cellpadding="0" width="100%">
						
						<xsl:apply-templates select="//Report[. = key('groupSet', FileName)[1]]" />
						
						<xsl:if test="count(//Report[. = key('groupSet', FileName)[1]]) = 0">
							<tr>
								<td colspan="3" align="center">No file was found to have rule violations.</td>
							</tr>
						</xsl:if>
					</table>
				</div>
						
				<div id="ExecutionReport" style="display: none;">
					<br />
					<table border="0" cellpadding="0" width="100%">
						<xsl:apply-templates select="//Rule" />
					</table>
				</div>
				
				<p align="center">
					<xsl:element name="img">
						<xsl:attribute name="src">images/<xsl:value-of select="$RootPath" />ft_ssw.gif</xsl:attribute>
					</xsl:element>
				</p>
			</body>
		</html>
	</xsl:template>
	
	
	
	<xsl:template match="Report">
		<tr>
			<td><img src="clear.gif" height="10" width="1" /></td>
		</tr>
		
		<tr>
			<td colspan="3">
				<xsl:element name="span">
					<xsl:attribute name="style">cursor: hand; text-decoration: none;</xsl:attribute>
					<xsl:attribute name="onclick">toggleOutline(this.childNodes[0].FileName)</xsl:attribute>
					<xsl:attribute name="onselectstart">return false;</xsl:attribute>
					<xsl:element name="span">
						<xsl:attribute name="FileName"><xsl:value-of select="FileName" /></xsl:attribute>
						<xsl:choose>
							<xsl:when test="position() = 1">
								<xsl:element name="img">
									<xsl:attribute name="src">images/<xsl:value-of select="$RootPath" />minus.gif</xsl:attribute>
								</xsl:element>
							</xsl:when>
							<xsl:otherwise>
								<xsl:element name="img">
									<xsl:attribute name="src">images/<xsl:value-of select="$RootPath" />minus.gif</xsl:attribute>
								</xsl:element>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:element>&#160;
					<i><xsl:value-of select="FileName" /></i>
				</xsl:element>
				(<xsl:value-of select="count(key('groupSet', FileName))" />)
			</td>
			<td></td>
		</tr>
		
		<tr>
			<td colspan="3"><img style="height: 1px; width: 100%; background-color: gray;" /></td>
		</tr>
		
		<xsl:element name="tbody">
			<xsl:if test="position() != 1"><xsl:attribute name="style">display: block;</xsl:attribute></xsl:if>
			<xsl:attribute name="FileName"><xsl:value-of select="FileName" /></xsl:attribute>
			
			<xsl:apply-templates select="key('groupSet', FileName)" mode="getFiles" />
		</xsl:element>
		
	</xsl:template>
	
	
	
	<xsl:template match="Report" mode="getFiles">
		<tr valign="top" style="font-family : Verdana; font-size : 11px">
			<td valign="top" style="padding-left : 10px;">
				<input type="checkbox" />&#160;<xsl:value-of select="RuleName" />
			</td>
			<td valign="top" style="padding-left : 10px;"></td>
			<td valign="top">
				<xsl:if test="LineNumber=' ' and CheckWhat=0">Required occurrence not found!<br /></xsl:if>
				<xsl:if test="CheckWhat=1">In filename<br /></xsl:if>
				<xsl:if test="LineNumber!=' '">Line(s): <xsl:value-of select="LineNumber" /><br /></xsl:if>
				<xsl:if test="ReplacedLines!=' '">Replaced Line(s): <xsl:value-of select="ReplacedLines" /><br /></xsl:if>
				<xsl:call-template name="break" />
			</td>
		</tr>
	</xsl:template>
	
	
	
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
	
	
	
	
	
	
	
	
	<xsl:template match="Rule">
		<tr>
			<td>
				<table border="0" cellpadding="0" width="100%">
					<tr>
						<td colspan="2" style="border-bottom: 1px solid black; font: italic 8pt Verdana">
							<xsl:value-of select="RuleName" />
						</td>
					</tr>
					<tr valign="top">
						<td valign="top" width="400">
							<table cellspacing="1" cellpadding="2">
								<colgroup>
									<col width="100" style="background-color: whitesmoke"/>
								</colgroup>
								<tr>
									<td style="font: bold 8pt Verdana;">Enabled</td>
									<td>
										<xsl:variable name="RuleEnabled" select="key('JobRuleByRuleID', RuleID)/IsEnabled" />
										<xsl:if test="$RuleEnabled='false'">
											<div style="color: red; font: bold"><xsl:value-of select="$RuleEnabled" /></div>
										</xsl:if>
										<xsl:if test="$RuleEnabled='true'">
											<div style="color: darkgreen; font: bold"><xsl:value-of select="$RuleEnabled" /></div>
										</xsl:if>
									</td>
								</tr>
								<tr>
									<td style="font: bold 8pt Verdana;">File Filter</td>
									<td><xsl:value-of select="FileFilter" /></td>
								</tr>
								<tr>
									<td style="font: bold 8pt Verdana;">Should Exist</td>
									<td><xsl:value-of select="ShouldExist" /></td>
								</tr>
								<tr>
									<td style="font: bold 8pt Verdana;">Date Created</td>
									<td><xsl:value-of select="DateCreated" /></td>
								</tr>
								<tr>
									<td style="font: bold 8pt Verdana;">Notes</td>
									<td><xsl:value-of select="RuleNote" /></td>
								</tr>
								<tr valign="top">
									<td style="font: bold 8pt Verdana;">Exceptions</td>
									<td>
										<xsl:for-each select="key('Exception', RuleID)">
											<xsl:value-of select="ExceptionName" />: <xsl:value-of select="SearchString" /><br/>
										</xsl:for-each>
									</td>
								</tr>
							</table>
						</td>
						<td>
							<table width="100%">
								<tr>
									<td><strong>Search String</strong></td>
								</tr>
								<tr>
									<td>
										<div style="width: 100%; height: 100%; background-color: whitesmoke; overflow: auto">
											<xsl:value-of select="SearchString" />
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
