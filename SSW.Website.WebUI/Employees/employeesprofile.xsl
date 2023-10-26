<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
	<xsl:param name="EmpID" select ="'PA'"/>

  <xsl:template match="employees">


				<xsl:for-each select="employee">
					<xsl:if test="EmpID=$EmpID">
										<div style="margin-bottom:1em; font-size:10pt;font-family : Verdana, Arial;">
						<a href="employeesXML.aspx">SSW Employees</a> > <xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/>
					</div>
					</xsl:if>
				</xsl:for-each>
				<xsl:for-each select="employee">
					<xsl:if test="EmpID=$EmpID">
						<div style="padding:4px">
							<span style="font-weight:bold; color:Black;	font-family : Verdana, Arial;font-size :Small;">
									<h2><xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/></h2>
							</span>
						</div>		
						<xsl:if test="imagelarge!=''">
							<p align="center">
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="imagelarge"/>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/>
									</xsl:attribute>
								</img>
							</p>
						</xsl:if>
					
						<div style="margin-left:20px; margin-bottom:1em; font-size:10pt;font-family : Verdana, Arial;">
							<xsl:value-of select="description" disable-output-escaping="yes" />
						</div>
						<div style="margin-left:20px; margin-bottom:1em;font-size:10pt;font-family : Verdana, Arial;">
							<xsl:value-of select="description2" disable-output-escaping="yes" />
						</div>
						<div style="margin-left:20px; margin-bottom:1em; font-size:10pt;font-family : Verdana, Arial; font-weight: bold;">
							<xsl:value-of select="description3bold" disable-output-escaping="yes" />
						</div>
						<div style="margin-left:20px; margin-bottom:1em;font-size:10pt;font-family : Verdana, Arial;">
							<xsl:value-of select="description4" disable-output-escaping="yes" />
							<br/>
							<br/>
							NOTE: These emails are
								<i>
									protected from spam harvesting as per <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#AvoidMailTo">SSW Rules to Better Websites</a> on our rule
								</i>
							
						</div>
						<div style="margin-left:20px; margin-bottom:1em;font-size:10pt;font-family : Verdana, Arial;">
							<xsl:value-of select="extraLink1" disable-output-escaping="yes" />
						</div>
						<div style="margin-left:20px; margin-bottom:1em; font-size:10pt;font-family : Verdana, Arial;">
							<xsl:value-of select="descriptionprofile" disable-output-escaping="yes" />
						</div>
						<xsl:if test="imagecertification='/SSW/Images/mcp.gif'">
							<div style="margin-left:20px; margin-bottom:1em; font-size:12pt">
								<img alt="imagecertification">
									<xsl:attribute name="src">
										<xsl:value-of select="imagecertification"/>
									</xsl:attribute>
								</img>
							</div>
						</xsl:if>	
						
						<xsl:if test="imagelarge2!=''">
							<p align="center">
								<img alt="imagedrawn2">
									<xsl:attribute name="src">
										<xsl:value-of select="imagelarge2"/>
									</xsl:attribute>
								</img>
							</p>
						</xsl:if>

						<xsl:if test="blogname!=''">
							<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
								Be sure to check out <xsl:value-of select="FirstName"/>'s
								<a>
									<xsl:attribute name="href">
										http://blogs.ssw.com.au/<xsl:value-of select="blogname"/>
									</xsl:attribute>
									blog</a>.
							</div>
						</xsl:if>

					</xsl:if>					
				</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>