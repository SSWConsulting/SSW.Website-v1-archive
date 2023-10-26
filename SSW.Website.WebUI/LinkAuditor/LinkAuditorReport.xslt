<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name="SourcesByTarget" match="Report/ReportEntries/ReportEntry/Links/Element" use="TargetURI" />

	<xsl:template match="/">
		<html>
			<head>
				<style>
					BODY
					{
						font: 8pt Verdana;
					}
					
					TABLE
					{
						font: 8pt Verdana;
					}
					
					TBODY.ReportEntryTBody
					{
						background: whitesmoke;
					}
					
					.EntryLinks
					{
						display: none;
					}
					
					.OutlineControl
					{
						cursor: hand;
					}
					
					.Success
					{
						background-color: palegreen;
					}
					
					.Warning
					{
						background-color: paleyellow;
					}
					
					.Failure
					{
						background-color: pink;
					}
					
					A
					{
						color: black;
						text-decoration: none;	
					}
										
					A:hover
					{
						text-decoration: underline;
					}
				</style>
				<script language="javascript" defer=""><![CDATA[
										
					function initialize()
					{
						ReportEntries.onclick = new Function("toggleOutline()");
					}
					
					function toggleOutline()
					{
						outlineControl = findElement("OutlineControl", event.srcElement)
						if (outlineControl == null) return;
						
						entryLinks = eval("Entry" + outlineControl.position);
						entryLinks.style.display = (entryLinks.style.display == "block" ? "none" : "block");
						outlineControl.src = (outlineControl.src.indexOf("plus.gif") != -1 ? "Images/minus.gif" : "Images/plus.gif");
					}
										
					function findElement(className, node)
					{
						while (node != null && node != document.body)
						{
							if (node.className == className) return node;
							node = node.parentElement
						}
						return null;
					}
					
				]]></script>
			</head>
			<body onload="initialize()">
				<xsl:apply-templates select="Report" />
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="Report">
		<table width="100%">
			<tr>
				<td><h1>SSW Link Auditor Report</h1></td>
				<td valign="top"></td>
			</tr>
		</table>
		
		<table id="StatsTable">
			<colgroup>
				<col width="180"/>
				<col/>
			</colgroup>
			<tr>
				<td><b>Initial URI:</b></td>
				<td><xsl:value-of select="Settings/InitialURI" /></td>
			</tr>
			<tr>
				<td><b>Beyond Domain:</b></td>
				<td><xsl:value-of select="Settings/FollowBeyondDomain" /></td>
			</tr>
			<tr>
				<td><b>Time Started:</b></td>
				<td><xsl:value-of select="Statistics/TimeStarted" /></td>
			</tr>
			<tr>
				<td><b>Time Finished:</b></td>
				<td><xsl:value-of select="Statistics/TimeFinished" /></td>
			</tr>
			<tr>
				<td><b>Time Elapsed:</b></td>
				<td><xsl:value-of select="Statistics/TimeElapsed" /></td>
			</tr>
			<tr>
				<td><b>Total Targets:</b></td>
				<td><xsl:value-of select="Statistics/TotalTargets" /></td>
			</tr>
			<tr>
				<td><b>Total Links:</b></td>
				<td><xsl:value-of select="Statistics/TotalLinks" /></td>
			</tr>
			<tr>
				<td><b>Average Links Per Page:</b></td>
				<td><xsl:value-of select="format-number((Statistics/TotalLinks) div (Statistics/TotalTargets), '#')" /></td>
			</tr>
			<tr>
				<td><b>Warning Count:</b></td>
				<td><xsl:value-of select="count(ReportEntries/ReportEntry[Status='Warning'])"/></td>
			</tr>
			<tr>
				<td><b>Failure Count:</b></td>
				<td><xsl:value-of select="count(ReportEntries/ReportEntry[Status='Failure'])"/></td>
			</tr>
		</table>
		<br/>
		
		<xsl:apply-templates select="ReportEntries" />
	</xsl:template>	
	
	<xsl:template match="ReportEntries">
		<table id="ReportEntries" width="100%">
			<colgroup>
				<col align="center" />
			</colgroup>
			
			<!--
			
			<xsl:apply-templates select="ReportEntry">
				<xsl:sort select="TargetURI" data-type="text" order="ascending" />
			</xsl:apply-templates>
			
			!-->
			
			<xsl:apply-templates select="ReportEntry[Status='Failure']">
				<xsl:sort select="TargetURI" data-type="text" order="ascending" />
			</xsl:apply-templates>
			<xsl:apply-templates select="ReportEntry[Status='Warning']">
				<xsl:sort select="TargetURI" data-type="text" order="ascending" />
			</xsl:apply-templates>
			<xsl:apply-templates select="ReportEntry[Status='Success']">
				<xsl:sort select="TargetURI" data-type="text" order="ascending" />
			</xsl:apply-templates>
		</table>
	</xsl:template>	
	
	<xsl:template match="ReportEntry">
		<xsl:element name="tbody">
			<xsl:attribute name="class">ReportEntryTBody</xsl:attribute>
			<xsl:attribute name="style">
				<xsl:choose>
					<xsl:when test="Status='Success'"></xsl:when>
					<xsl:when test="Status='Warning'">background-color: #FFF297;</xsl:when>
					<xsl:when test="Status='Failure'">background-color: pink;</xsl:when>
				</xsl:choose>
			</xsl:attribute>
			<tr>
				<td>
					<xsl:element name="img">
						<xsl:attribute name="class">OutlineControl</xsl:attribute>
						<xsl:attribute name="src">Images/plus.gif</xsl:attribute>
						<xsl:attribute name="width">10</xsl:attribute>
						<xsl:attribute name="height">10</xsl:attribute>						
						<xsl:attribute name="position">
							 <xsl:choose>
								<xsl:when test="Status='Success'">S</xsl:when>
								<xsl:when test="Status='Warning'">W</xsl:when>
								<xsl:when test="Status='Failure'">F</xsl:when>
							</xsl:choose>
							<xsl:value-of select="position()" />
						</xsl:attribute>
					</xsl:element>
				</td>
				<td>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="TargetURI" /></xsl:attribute>
						<xsl:attribute name="target">_blank</xsl:attribute>
						<xsl:value-of select="TargetURI" /> (<xsl:value-of select="count(key('SourcesByTarget', TargetURI))" />)
					</xsl:element>					
				</td>
				<td><xsl:value-of select="StatusDetail" /></td>
			</tr>
			<xsl:element name="tr">
				<xsl:attribute name="id">
					<xsl:text>Entry</xsl:text>
					<xsl:choose>
						<xsl:when test="Status='Success'">S</xsl:when>
						<xsl:when test="Status='Warning'">W</xsl:when>
						<xsl:when test="Status='Failure'">F</xsl:when>
					</xsl:choose>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="className">EntryLinks</xsl:attribute>
				<xsl:attribute name="style">display: none;</xsl:attribute>
				<td colspan="3" style="padding-left: 40px;">
					<xsl:apply-templates select="Links" />
				</td>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Links">
		<table width="100%">
			<thead>
				<td>Source</td>
				<td width="75">Type</td>
				<td width="75">Style</td>
				<td width="75">Index</td>
				<td width="75">Length</td>
			</thead>
			<tbody>
				<xsl:for-each select="Element">
					<tr>
						<td>
							<xsl:element name="a">
								<xsl:attribute name="href"><xsl:value-of select="SourceURI" /></xsl:attribute>
								<xsl:attribute name="target">_blank</xsl:attribute>
								<xsl:value-of select="SourceURI" />
							</xsl:element>
						</td>
						<td><xsl:value-of select="@type"/></td>
						<td><xsl:value-of select="Style" /></td>
						<td><xsl:value-of select="Index"/></td>
						<td><xsl:value-of select="Length"/></td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
	
</xsl:stylesheet>