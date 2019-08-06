<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tuyendung-2">
			<div class="container">
				<h4>
					<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
				</h4>
				<div class="row">
					<div class="col">
						<div class="table-main">
							<table>
								<thead>
									<tr>
										<th>STT</th>
										<th>Vị trí tuyển dụng</th>
										<th>Số lượng</th>
										<th>Hạn nộp hồ sơ</th>
									</tr>
								</thead>
								<tbody>
									<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News'>
		<tr>
			<td>
				<xsl:value-of select='position()'></xsl:value-of>
			</td>
			<td>
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
			</td>
			<td>
				<xsl:value-of select='SubTitle'></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select='BriefContent'></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>