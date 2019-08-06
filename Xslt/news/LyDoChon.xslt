<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-ly-do-chon">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
				</h2>
				<div class="row">
					<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News' >
		<div class="col-md-4" data-aos="fade-up" data-aos-duration="1700">
		<xsl:attribute name='data-aos-delay'>
			<xsl:value-of select='position() * 300'></xsl:value-of>
		</xsl:attribute>
			<div class="item">
				<div class="box-img">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="info">
					<h3>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h3>
					<a href="javascript:;">
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>