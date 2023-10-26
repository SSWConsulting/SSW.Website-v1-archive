<?xml version='1.0' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />
	
	<xsl:key name="Exception" match="RuleException" use="RuleID" />
	<xsl:key name="JobRule" match="JobRule" use="RuleID" />
	
	<xsl:param name="RootPath" />
	
	<xsl:template match="/CodeAuditorDataSet">
		<html>
			<head>
				<title>SSW Code Auditor Reports</title>
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
							<p style="font-size : 22px; font-family : Verdana; font-weight : bold;">SSW Code Auditor - Execution Report</p>
						</td>
					</tr>
				</table>
				<table border="0" width="100%" cellspacing="0" cellpadding="0">
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
						<td><b style="font-family : Verdana; font-size : 13px">Job Name: <xsl:value-of select="//Job/JobName" /></b></td>
					</tr>
					<tr>
						<td><img src="clear.gif" height="20" width="1" /></td>
					</tr>
				</table>
				
				
				
				
				<!-- Content goes here -->
				<table border="0" width="100%" cellspacing="0" cellpadding="0">
					<xsl:apply-templates select="Rule" />
				</table>
				
				
				
				
				
				
				<p align="center">
					<xsl:element name="img">
						<xsl:attribute name="src">images/<xsl:value-of select="$RootPath" />ft_ssw.gif</xsl:attribute>
					</xsl:element>
				</p>
			</body>
		</html>
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
					<tr>
						<td valign="top" width="400">
							<table cellspacing="1" cellpadding="2">
								<colgroup>
									<col width="100" style="background-color: whitesmoke"/>
								</colgroup>
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
								<tr>
									<td style="font: bold 8pt Verdana;">Exceptions</td>
									<td>
										<xsl:for-each select="key('Exception', RuleID)">
											<xsl:value-of select="ExceptionName" />: <xsl:value-of select="SearchString" />
										</xsl:for-each>
									</td>
								</tr>
							</table>
						</td>
						<td>
							<table>
								<tr>
									<td><strong>Search String</strong></td>
								</tr>
								<tr>
									<td>
										<div style="width: 400px; height: 100px; background-color: whitesmoke; overflow: auto;">
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

  