<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Sitemap for AenergyPH</title>
        <style>
          body { font-family: Arial, sans-serif; background: #f9f9f9; color: #333; padding: 20px; }
          h1 { color: #DF1024; }
          table { border-collapse: collapse; width: 100%; max-width: 900px; }
          th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
          th { background: #f2f2f2; }
          a { color: #DF1024; text-decoration: none; }
          a:hover { text-decoration: underline; }
        </style>
      </head>
      <body>
        <h1>AenergyPH Sitemap</h1>
        <table>
          <tr>
            <th>URL</th>
            <th>Last Modified</th>
            <th>Priority</th>
          </tr>
          <xsl:for-each select="s:urlset/s:url">
            <tr>
              <td><a><xsl:attribute name="href"><xsl:value-of select="s:loc"/></xsl:attribute><xsl:value-of select="s:loc"/></a></td>
              <td><xsl:value-of select="s:lastmod"/></td>
              <td><xsl:value-of select="s:priority"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
