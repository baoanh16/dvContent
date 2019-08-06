<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-cam-nhan"  data-aos="fade-up" data-aos-duration="1700">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
				</h2>
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
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
					</div>
				</div>
				<div class="pagination"></div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News'>
		<div class="swiper-slide">
			<div class="complaint">
				<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
			</div>
			<div class="article">
				<xsl:value-of select='Title'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>