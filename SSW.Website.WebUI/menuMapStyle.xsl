<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <body>
    <!--<h3>Site Map</h3>-->
    <xsl:apply-templates select="//wwwMenuGroup"/> 
    </body>
    </html>
  </xsl:template>

  <xsl:template match="wwwMenuGroup">
    <div>
   <!-- <img src="Images/Validation/SmallRedBall.gif" width="8" height="8" border="0" />-->
    <h2><xsl:value-of select="@text"/><br /></h2>
    </div>
    <br />
    <blockquote>
     <xsl:apply-templates select="wwwMenuPages"/><br />
    </blockquote>
    <br />
  </xsl:template>
   
  <xsl:template match="wwwMenuPages">
     
     <xsl:element name="a">
	<xsl:attribute name="href"><xsl:value-of select="@Location"/></xsl:attribute>
	<xsl:value-of select="@text"/>
     </xsl:element>
     
     <br />
   </xsl:template>

</xsl:stylesheet>

