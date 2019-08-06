<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!-- Begin Menu Father -->
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<!-- Title  -->
			<h4>
				<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
			</h4>

			<!-- Call Items -->
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>

	<!-- Items -->
	<xsl:template match="Zone">
		<nav class="list-group">
			<xsl:apply-templates select="Zone" mode="Second"></xsl:apply-templates>
		</nav>
	</xsl:template>
	<xsl:template match="Zone" mode="Second">
		<div class="list-group-item">
			<!-- Active -->
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>list-group-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<!-- URL -->
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
