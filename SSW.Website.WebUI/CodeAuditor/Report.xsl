<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="jobs">
		<h1 style="font : 22px/22px Verdana; font-weight : bold">SSW Code Auditor - Code Report</h1>
		<table border="0" width="100%" cellspacing="0">
			<tr bgcolor="red"><td><img src="clear.gif" height="18" width="1" /></td></tr>
			<tr><td><img src="clear.gif" height="1" width="1" /></td></tr>
			<tr bgcolor="lightgrey"><td><b><xsl:value-of select="job/name"/></b></td></tr>
			<tr><td><img src="clear.gif" height="20" width="1" /></td></tr>
		</table>
		
		<table border="0" cellpadding="0">
			<tr><td width="350"><p><b>Rule Name</b></p></td><td width="150"><p><b>Search string</b></p></td><td><p><b>Line number</b></p></td></tr>
			<xsl:for-each select="job/files/file">
				<tr><td><img src="clear.gif" height="10" width="1" /></td></tr>
				<tr><td><i><xsl:value-of select="path" /></i></td><td></td></tr>
				<xsl:for-each select="rules/rule">
					<tr bgcolor="gray"><td colspan="3"><img src="clear.gif" height="1" width="1" /></td></tr>
					<tr><td><img src="clear.gif" height="1" width="25" /><xsl:value-of select="rulename" /></td><td><xsl:value-of select="condition" /></td><td><xsl:if test="lineno=''">Not found!</xsl:if><xsl:value-of select="lineno" /></td></tr>
				</xsl:for-each>
				<tr bgcolor="gray"><td colspan="3"><img src="clear.gif" height="1" width="1" /></td></tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>

