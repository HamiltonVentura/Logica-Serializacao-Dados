<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <body>
                <h2>Minha Coleção de Usuarios</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">livro</th>
                        <th style="text-align:left">ano</th>
                          <th style="text-align:left">status</th>
                             <th style="text-align:left">idade</th>
                    </tr>
                    <!-- Uso do for-each com pesquisa específica -->
                    <!-- uso do for each utilizando comparadores &lt; para menores -->
                    <!-- Pode-se usar o selct ou o if -->                    
                    
                    <xsl:for-each select="Usuarios/secao">
                        <xsl:choose>
                            <xsl:when test="ano &gt; 2000">
                                <tr bgcolor="red">
                                    <td style="color:blue;"><xsl:value-of select="nome"/></td>
                                    <td style="color:blue;"><xsl:value-of select="ano"/></td>
                                    <td style="color:blue;"><xsl:value-of select="status"/></td>
                                    <td style="color:blue;"><xsl:value-of select="idade"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr color="red">
                                    <td color="blue"><xsl:value-of select="nome"/></td>
                                    <td style="color:black;"><xsl:value-of select="ano"/></td>
                                    <td style="color:black;"><xsl:value-of select="status"/></td>
                                    <td style="color:black;"><xsl:value-of select="idade"/></td>
                                </tr>
                            </xsl:otherwise>                        
                        </xsl:choose>                   
                    </xsl:for-each>
                </table>                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>