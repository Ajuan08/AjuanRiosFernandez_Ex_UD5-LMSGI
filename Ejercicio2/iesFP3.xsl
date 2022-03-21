<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <nombre><b>Nombre y apellidos: Antonio Juan Rios Fernandez</b></nombre>
        <BR></BR>
        <ul>
            <xsl:for-each select="ies/ciclos/ciclo">
            <li><xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>) </li>
            </xsl:for-each>
        </ul>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>