<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tin-tuc">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select='/NewsList/ZoneTitle'></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col-lg-6">
						<div class="big-news">
							<xsl:apply-templates select='/NewsList/News' mode='BigNews'></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="side-news">
							<xsl:apply-templates select='/NewsList/News' mode='SideNews'></xsl:apply-templates>
						</div>
					</div>
					<xsl:apply-templates select='/NewsList/News' mode='SmallNews'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode='BigNews'>
		<xsl:if test="position()=1">
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
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='SideNews'>
		<xsl:if test="position()>1 and position() &lt; 5">
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
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='SmallNews'>
		<xsl:if test="position()>4">
			<div class="col-lg-4">
				<div class="small-news">
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
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>