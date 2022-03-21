<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <th>Nombre y Apellidos: Antonio Juan Rios Fernandez</th>
        <h1><b>IES Nuestra Sra. de los Remedios</b></h1>
        <table border="1">
            <tr>
            <th>Nombre</th>
            <th>Año</th>
            </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                        <xsl:choose>
                            <xsl:when test="decretoTitulo/@año &gt; 2009">
                                <td bgcolor="green">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año &lt; 2009">
                                <td bgcolor="red">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año =2009">
                                <td bgcolor="blue">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </xsl:when>
                        </xsl:choose>
                </tr>
        </xsl:for-each>
    </table>
    </xsl:template>
</xsl:stylesheet>