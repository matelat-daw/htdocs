<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
  <html>
    <ul>
    <xsl:apply-templates />
    </ul>
  </html>
  <xsl:template match="nombre">
      <li><xsl:value-of select="nombre"></xsl:value-of></li>
  </xsl:template>
</xsl:stylesheet>