<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="row no-gutters">
			<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match='Zone'>
		<div class="col-md-4 col-lg-2" data-aos="fade-up" data-aos-duration="1700">
			<xsl:attribute name='data-aos-delay'>
				<xsl:value-of select='position() * 300'></xsl:value-of>
			</xsl:attribute>
			<div class="item">
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='title'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="box-img">
							<img>
							<xsl:attribute name='src'>
								<xsl:value-of select='SecondImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<p>
								<xsl:value-of select='Title'></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>