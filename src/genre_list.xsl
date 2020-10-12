<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
    <body>
    <h1><xsl:value-of select="catalog/header"/></h1>
    <h1>list</h1>
      <table>
        <xsl:apply-templates select="catalog/song">
        <xsl:sort select="genre" order="ascending" data-type="string" />
        </xsl:apply-templates>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="song">

  <tr>
    <!--<xsl:apply-templates select="title[@language='english']"/>
    <xsl:apply-templates select="artist"/>
    <xsl:apply-templates select="links/overview[@type='general']"/>
    <xsl:apply-templates select="images"/>-->
    <xsl:apply-templates select="genre"/>
    
  </tr>
</xsl:template>

<xsl:template match="genre">

  <td>
    <xsl:value-of select="."/>
    <a href="genre1.html">&gt;</a>
  </td>
</xsl:template>

<!--<xsl:template match="title[@language='english']">
  <td>
    <xsl:value-of select="."/>
  </td>
</xsl:template>-->
 <!--<ul>My data to filter details
    <xsl:for-each select="catalog/song">
    <xsl:sort select="genre" data-type="string" order="descending"/>
    <xsl:choose>
    <xsl:when test="genre">
    <li class="too-much">$<xsl:value-of select=""/> <xsl:value-of select="city"/>, <xsl:value-of select="state"/> <xsl:value-of select="country" /> <em><xsl:value-of select="@date"/></em> </li>
    </xsl:when>
    <xsl:otherwise>
    <li>$<xsl:value-of select="price"/> <xsl:value-of select="city"/>, <xsl:value-of select="state"/> <xsl:value-of select="country" /> <em><xsl:value-of select="@date"/></em> </li>
    </xsl:otherwise>
    </xsl:choose>
    </xsl:for-each>
</ul>-->

<!--<xsl:template match="history">old data
  <td>
    <xsl:value-of select="year"/>
    <xsl:text>&#160;</xsl:text>
    <xsl:value-of select="year/@era"/>
  </td>
  <td>
    <xsl:value-of select="./dynasty"/>
    <xsl:text>&#160;dynasty</xsl:text>
  </td>
</xsl:template>-->

<!--<xsl:template match="links/overview[@type='general']">
  <td>
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="./@url"/>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </a>
  </td>
</xsl:template>

<xsl:template match="images">
  <td>
    <xsl:value-of select="image[@type='jpg'][position() = last()]"/>
  </td>
</xsl:template>-->

</xsl:stylesheet>
