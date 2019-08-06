<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<section class="home-ly-do-chon">
				<div class="container">
					<h2 class="title">
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select='News' mode='ZoneNews1'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="home-gioi-thieu">
				<div class="container">
					<h2 class="title">
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<div class="row d-flex align-items-center">
						<xsl:apply-templates select='News' mode='ZoneNews2'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="about-doi-ngu">
				<div class="container">
					<h2 class="title">
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select='News' mode='ZoneNews3'></xsl:apply-templates>
						</div>
					</div>
					<div class="navigation">
						<div class="btn-prev mdi mdi-chevron-left"></div>
						<div class="btn-next mdi mdi-chevron-right"></div>
					</div>
					<div class="pagination"></div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=4">
			<section class="home-cam-nhan">
				<div class="container">
					<h2 class="title"><xsl:value-of select='Title'></xsl:value-of></h2>
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
							<xsl:apply-templates select='News' mode='ZoneNews4'></xsl:apply-templates>
						</div>
					</div>
					<div class="pagination"></div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews1'>
		<div class="col-md-4">
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
	<xsl:template match='News' mode='ZoneNews2'>
		<div class="col-md-6">
			<div class="content">
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</div><a class="btn-xemthem" href="#">Xem thêm</a>
		</div>
		<div class="col-md-6">
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
	<xsl:template match='News' mode='ZoneNews3'>
		<div class="swiper-slide">
			<div class="news-item">
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
					<p>
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews4'>
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