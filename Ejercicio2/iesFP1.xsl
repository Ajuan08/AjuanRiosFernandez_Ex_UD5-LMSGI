<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <nombre><b>Nombre y apellidos: Antonio Juan Rios Fernandez</b></nombre>
        <BR></BR>
            <xsl:for-each select="ies/ciclos/ciclo">
            <BR></BR>
            "<xsl:value-of select="nombre"/>"
            </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>