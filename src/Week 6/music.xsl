<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
    <body>
    <h2>Musidex</h2>
    <xsl:apply-templates/>
    </body>
    </html>
</xsl:template>

<xsl:template match="song">
    <p>
    <!-- <xsl:apply-templates select="title"/> -->
    <!-- <xsl:apply-templates select="artist"/>
    <xsl:apply-templates select="album"/> -->
    <xsl:apply-templates select="genre"/>
    </p>
</xsl:template>

<xsl:template match="title">
    Song Title: <span class="title"><xsl:value-of select="."/></span>
    <br />
</xsl:template>

<xsl:template match="artist">
    Artist: <span class="artist"><xsl:value-of select="."/></span>
    <br />
</xsl:template>

<xsl:template match="album">
    Album: <span class="album"><xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="genre">
    <a><span class="genre"><xsl:value-of select="."/></span></a>
</xsl:template>

</xsl:stylesheet>