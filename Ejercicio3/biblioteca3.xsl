<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <nombre><b>Nombre y apellidos: Antonio Juan Rios Fernandez</b></nombre>
        <table border="1">
        <xsl:for-each select="bib/libro">
                <tr>
                    <td><xsl:value-of select="precio"/></td>
                        
                    <xsl:sort select="precio" order="descending" data-type="text"></xsl:sort>
                                <td>
                                    <xsl:value-of select="precio"/>
                                </td>
                            
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
                       
                </tr>
        </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>