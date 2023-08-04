<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <body>
                <h2>Minha Coleção de Livros</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">livro</th>
                        <th style="text-align:left">ano</th>
                          <th style="text-align:left">status</th>
                    </tr>
                    <!-- <xsl:for-each select="biblioteca/secao[ano='1999']"></xsl:for-each> -->
                    <xsl:for-each select="biblioteca/secao">
                    <xsl:sort select="ano"/> 
                        <tr>
                            <td><xsl:value-of select="nome"/></td>
                            <td><xsl:value-of select="ano"/></td>
                            <td><xsl:value-of select="status"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>