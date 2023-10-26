<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method = "html" encoding="ISO-8859-1" indent = "no" />
	<xsl:template match="/opml">
		<h1><xsl:value-of select="head/title" /></h1>
		<ul>
			<xsl:apply-templates select="body"/>
		</ul>
	</xsl:template>

	<xsl:template match = "outline" >
		<li><a><xsl:attribute name="href">callto://<xsl:value-of select = "@skypeName" /></xsl:attribute><xsl:value-of select = "@skypeName" /></a><br />- <xsl:value-of select = "@title" /></li>
		<xsl:apply-templates />
	</xsl:template>
</xsl:stylesheet>
