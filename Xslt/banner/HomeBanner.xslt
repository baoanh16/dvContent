<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="banner-home">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
			<div class="pagination"></div>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="box-img">
				<!-- <a> -->
					<!-- <xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute> -->
					<img class="lazyload">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					</img>
				<!-- </a> -->
			</div>
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="caption">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>