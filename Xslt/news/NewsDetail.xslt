<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tin-tuc-ct">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<article>
							<h1 class="title">
								<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
							</h1>
							<time>
								<xsl:value-of select='/NewsDetail/CreatedDate'></xsl:value-of>
							</time>
							<div class="fullcontent">
								<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'>
								</xsl:value-of>
							</div>
							<div class="sharing">
								<div class="fb-like" data-width="" data-layout="button_count" data-action="like"
									data-size="small" data-show-faces="false" data-share="true">
									<xsl:attribute name='data-href'>
										<xsl:value-of select='/NewsDetail/Url'></xsl:value-of>
									</xsl:attribute>
								</div>
							</div>
						</article>
					</div>
					<div class="col-lg-3">
						<div class="news-other">
							<h2>
								<xsl:value-of select='/NewsDetail/NewsOtherText'></xsl:value-of>
							</h2>
							<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="news-item">
			<div class="news-image">
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
			<div class="news-content">
				<time>
					<xsl:value-of select='CreatedDate'></xsl:value-of>
				</time>
				<p class="news-title">
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
				</p>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>