<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="dich-vu">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select='/ZoneList/ZoneTitle'></xsl:value-of>
				</h2>
				<div class="row">
					<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='Zone'>
		<div class="col-md-6 col-lg-4">
			<div class="dich-vu-item">
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
					<p>
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='title'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select='Title'></xsl:value-of>
						</a>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>