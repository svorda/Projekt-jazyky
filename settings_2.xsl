<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" />
   <xsl:template match="/">
      {
<xsl:for-each select="email/label/categories">
         "Categories":
         {
			"Kategorie": "<xsl:value-of select="categ" />",
			"Sociální sítě": "<xsl:value-of select="social" />",
			"Akce": "<xsl:value-of select="promotions" />",
			"Updaty": "<xsl:value-of select="updates" />",
			"Fora": "<xsl:value-of select="forums" />"
			}
         <xsl:if test="position() != last()" />
      </xsl:for-each>
            }
   </xsl:template>
</xsl:stylesheet>