<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/employees">
		<html>
			<body>
				<xsl:for-each select="employee">
					<a>
						<xsl:attribute name="name">
							<xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/>
						</xsl:attribute>
					</a>
					<div style="background-color:#ff0033; color:#ff0033; padding:0.1px">
						.
					</div>
					
					<div style="background-color:#FFFFFF; color:#FFFFFF; padding:1px"/>
					<div style="background-color:#cccccc; color:white; padding:0.1px">
						<span style="color:black; font-size:10pt;">

							<xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/>
						</span>
					</div>
					<div style="margin-left:20px; margin-bottom:1em; font-size:10pt"/>
					<xsl:if test="imagedrawn">
						<xsl:element name="img">
							
							<xsl:attribute name="width">79</xsl:attribute>
							<xsl:attribute name="align">right</xsl:attribute>
							<xsl:attribute name="src">
								<xsl:value-of select="imagedrawn"/>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/>
							</xsl:attribute>
						</xsl:element>
					</xsl:if>
					
					<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
						<xsl:value-of select="description" disable-output-escaping="yes"/>
					</div>
					<!-- Removed by AGT, Date: 27/11/2007
					<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
						<xsl:value-of select="description2" disable-output-escaping="yes"/>
					</div>
					
					<div style="margin-left:20px; margin-bottom:1em; font-size:10pt; font-weight: bold;">
						<xsl:value-of select="description3bold" disable-output-escaping="yes"/>
					</div>
					<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
						<xsl:value-of select="description4" disable-output-escaping="yes"/>
					</div>
					-->
					<xsl:if test="imagecertification!=''">
						<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
							<img alt="imagecertification">
								<xsl:attribute name="src">
									<xsl:value-of select="imagecertification"/>
								</xsl:attribute>
							</img>
						</div>
					</xsl:if>
					
					<!-- Removed by ZV, Date: 20/10/2007
					<xsl:if test="descriptionprofile!='' and imagedrawn!=''">
					!-->
						<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
							
							<a>
								<xsl:attribute name="href">
									employeesprofile.aspx?EmpID=<xsl:value-of select="EmpID"/>
								</xsl:attribute>
								More about <xsl:value-of select="FirstName"/>&#32;<xsl:value-of select="Surname"/>
							</a>
							<!-- Removed by AGT, Date: 28/11/2007
							<xsl:value-of select="FirstName"/>'s personal profile and photo can be found here
							<a>
								<xsl:attribute name="href">
									employeesprofile.aspx?EmpID=<xsl:value-of select="EmpID"/>
								</xsl:attribute>
								personal profile
							</a>.
							-->
						</div>
					<!-- Old code is removed by ZV, Date: 20/10/2007 !-->
					<!--
					</xsl:if>
					<xsl:if test="blogname!=''">
						<div style="margin-left:20px; margin-bottom:1em; font-size:10pt">
							Be sure to check out <xsl:value-of select="FirstName"/>'s
							<a>
								<xsl:attribute name="href">
									http://blogs.ssw.com.au/<xsl:value-of select="blogname"/>
								</xsl:attribute>
								blog
							</a>.
						</div>
					</xsl:if>
					!-->
					<br clear="all" />
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

