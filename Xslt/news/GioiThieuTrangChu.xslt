<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-gioi-thieu">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
				</h2>
				<div class="row d-flex align-items-center">
					<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News'>
		<div class="col-md-6"  data-aos="fade-up" data-aos-duration="1700" data-aos-delay="300">
			<div class="content">
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</div><a class="btn-xemthem" href="#">Xem thêm</a>
		</div>
		<div class="col-md-6"  data-aos="fade-up" data-aos-duration="1700" data-aos-delay="600">
			<div class="content"><img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>