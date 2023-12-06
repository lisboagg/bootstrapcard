<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">
		<xsl:for-each select="/noticias/item">
			<div id="wrapper">
				<article class="card" role="article">
					<a href="{link}">
						<div class="card-text">
							<div class="card-meta">
								<xsl:value-of select="category"/>
							</div>
							<h2 class="card-title">
								<xsl:value-of select="title"/>
							</h2>
						</div>
						<img class="card-image" src="{enclosure/@url}"></img>
					</a>
				</article>
			</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
