<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tuyendung-ct">
			<div class="noidung">
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<h2>
								<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
								<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'>
								</xsl:value-of>
							</h2>
							<div class="attributes-list row">
								<xsl:apply-templates select='/NewsDetail/NewsAttributes'></xsl:apply-templates>
							</div>
							<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
							<a class="btn-apply" href="javascript:;">Nộp hồ sơ<span class="mdi mdi-chevron-right"></span></a>
							<div class="form-apply">
								<iframe frameborder="0">
									<xsl:attribute name='src'>
										<xsl:value-of select='/NewsDetail/ApplyUrl'></xsl:value-of>
									</xsl:attribute>
								</iframe>
							</div>
						</div>
						<div class="col-md-3 tuyendung">
							<h3>TUYỂN DỤNG KHÁC</h3>
							<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='NewsAttributes'>
		<div class="attr-item col-lg-6">
			<div class="row">
				<div class="col-6 col-sm-6">
					<p class="attr-title">
						<xsl:choose>
							<xsl:when test="position()=1">
								<span class="mdi mdi-tag"></span>
							</xsl:when>
							<xsl:when test="position()=2">
								<span class="mdi mdi-account"></span>
							</xsl:when>
							<xsl:when test="position()=3">
								<span class="mdi mdi-format-list-bulleted"></span>
							</xsl:when>
							<xsl:when test="position()=4">
								<span class="mdi mdi-briefcase"></span>
							</xsl:when>
							<xsl:when test="position()=5">
								<span class="mdi mdi-key"></span>
							</xsl:when>
							<xsl:when test="position()=6">
								<span class="mdi mdi-school"></span>
							</xsl:when>
							<xsl:when test="position()=7">
								<span class="mdi mdi-calendar-today"></span>
							</xsl:when>
							<xsl:when test="position()=8">
								<span class="mdi mdi-cake-variant"></span>
							</xsl:when>
						</xsl:choose>
						<xsl:value-of select='Title'></xsl:value-of>
					</p>
				</div>
				<div class="col-6 col-sm-6">
					<p class="attr-content">
						<xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='NewsOther'>
		<div class="item">
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='title'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				<time>
					<xsl:value-of select='BriefContent'></xsl:value-of>
				</time>
				<p>
					<xsl:value-of select='Title'></xsl:value-of>
				</p>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>