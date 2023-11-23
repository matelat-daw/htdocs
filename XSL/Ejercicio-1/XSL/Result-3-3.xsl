﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*"/>
  <xsl:template match="cifp">
    <html>
      <h1>
        <xsl:value-of select="@nombre"/>
      </h1>
      <table border="1">
      <tr>
        <th>Nombre del Ciclo</th>
        <th>Grado</th>
        <th>Año del Título</th>
      </tr>
        <xsl:apply-templates/>
      </table>
    </html>
  </xsl:template>
  <xsl:template match="ciclo">
    <tr>
      <td>
        <xsl:value-of select="nombre"/>
      </td>
      <td>
        <xsl:value-of select="grado"/>
      </td>
      <td>
        <xsl:value-of select="decretoTitulo/@año"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>