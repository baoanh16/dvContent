<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-tin-tuc"  data-aos="fade-up" data-aos-duration="1700">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
				</h2>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
					</div>
				</div>
				<div class="navigation">
					<div class="btn-prev mdi mdi-chevron-left"></div>
					<div class="btn-next mdi mdi-chevron-right"></div>
				</div>
				<div class="pagination"></div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News'>
		<div class="swiper-slide">
			<div class="news-item">
				<div class="box-img">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="info">
					<time>
						<xsl:value-of select='CreatedDate'></xsl:value-of>
					</time>
					<h4>
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='title'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select='Title'></xsl:value-of>
						</a>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h4>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>