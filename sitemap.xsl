<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:template match="/">
        <html>
        <head>
            <title>Mapa del sitio</title>
            <style>
                body { font-family: Arial, sans-serif; margin: 20px; }
                table { border-collapse: collapse; width: 100%; }
                th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
                th { background-color:rgb(255, 0, 0); color: white; }
            </style>
        </head>
        <body>
            <h2>Mapa del sitio</h2>
            <table>
                <tr>
                    <th>URL</th>
                    <th>Última modificación</th>
                    <th>Frecuencia de cambio</th>
                    <th>Prioridad</th>
                </tr>
                
                <xsl:for-each select="s:urlset/s:url">
                    <tr>
                        <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
                        <td><xsl:value-of select="s:lastmod"/></td>
                        <td><xsl:value-of select="s:changefreq"/></td>
                        <td><xsl:value-of select="s:priority"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

