<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<section class="canhcam-boxes-4" bg-img="./Data/Sites/1/skins/default/img/content/introduce/I_bg_03.png">
        <div class="container">
          <h2 class="text-title">
		  	<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		  </h2>
          <div class="row" data-aos="fade-up" data-aos-duration="1000">
            <div class="col-lg-6">
              <div class="text-box mx-lg">
                <h3 class="title-text">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</h3>
                <p class="text-child">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
                <p class="text-child">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
              </div>
              <div class="btn-wrap text-lg-left text-sm-center"><a class="btn-more" href="/introduce.html">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
			  </a></div>
            </div>
          </div>
        </div>
      </section>
  </xsl:template>
  <!-- <xsl:template match="News">
	<h3 class="title-text">
		<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
	</h3>
	<p class="text-child">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</p>
	<p class="text-child">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</p>
  </xsl:template> -->
</xsl:stylesheet>
