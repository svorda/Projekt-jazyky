<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" />
   <xsl:template match="/">
      [
      <xsl:for-each select="email/label/system_lab">
         
        <!-- Ověření zda jsou důležité emaily zapnuté, jestli nejsou tak to vyhodí hlášku že není email kompletně nastaven, protože by postrádala aplikce smysl kdyby funkce byla vypnuta pro zobrazování důležitých emailů -->
<xsl:choose>
         	<xsl:when test="starred ='Show'">
         {
         		Konfigurace:
			"Důležitý": "<xsl:value-of select="starred" />",
			"Důležité emaily": "<xsl:value-of select="important" />",
			"Chat": "<xsl:value-of select="chats" />",
			"Odeslané emaily": "<xsl:value-of select="sent_mail" />",
			"Úschovna": "<xsl:value-of select="darts" />",
			"Všechny emaily": "<xsl:value-of select="all_mail" />",
			"Spam": "<xsl:value-of select="spam" />",
			"Koš": "<xsl:value-of select="trash" />",		
			}
         <xsl:if test="position() != last()" />
         </xsl:when>
         <xsl:otherwise>
		  {
			"Email není kompletně nastaven"
      } <xsl:if test="position() != last()">,</xsl:if>
    </xsl:otherwise>
    </xsl:choose>
   
      </xsl:for-each>     
      ]

   </xsl:template>
</xsl:stylesheet>