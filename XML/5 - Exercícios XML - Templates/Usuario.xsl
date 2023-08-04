<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
        <body>
            <h2>My CD Collection</h2>  
            <xsl:apply-templates/>  <!-- onde os templates será aplciado -->
        </body>
  </html>
</xsl:template>


<!--template primeiro a ser implementado -->
<xsl:template match="cd">                   <!--tag q será aplicada-->
  <p>
    <xsl:apply-templates select="title"/>   <!--tag filhos que serão escolhidos -->
    <xsl:apply-templates select="artist"/>  <!--tag filhos que serão escolhidos -->
  </p>
</xsl:template>


<xsl:template match="title">                <!--template segundo a ser implementado -->
  Title: 
    <span style="color:#ff0000">
            <xsl:value-of select="."/>      <!-- o ponto indica que ... -->
    </span>
  <br />
</xsl:template>

<xsl:template match="artist">               <!--template terceiro a ser implementado -->
  Artist: <span style="color:#00ff00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>