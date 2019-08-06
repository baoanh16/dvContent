<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match='Zone'>
		<xsl:if test='position()=1'>
			<section class="dichvuct-seo">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select='News' mode='ZoneNews1'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="dichvuct-dich-vu">
				<h2 class="title">
					<xsl:value-of select='Title'></xsl:value-of>
				</h2>
				<div class="container">
					<xsl:apply-templates select='News' mode='ZoneNews2'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="dichvuct-thuc-hien">
				<div class="container">
					<h2 class="title">
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select='News' mode='ZoneNews3'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews1'>
		<div class="col-md-6">
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
		</div>
		<div class="col-md-6">
			<h2 class="title">
				<xsl:value-of select='Title'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</h2>
			<div class="content">
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews2'>
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
				<h4>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h4>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews3'>
		<div class="col-lg-3">
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
					<span class="counter"></span>
					<h4>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h4>
					<p>
						<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>