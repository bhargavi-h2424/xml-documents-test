<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Luca's Loaves Products</title>
            <link rel="stylesheet" type="text/css" href="style.css"/>
        </head>
        <body>
            <h1>Luca's Loaves Product List</h1>
            <div class="product-list">
                <!-- Loop through each bread item in the XML -->
                <xsl:for-each select="lucaLoaves/bread">
                    <div class="bread-item">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><xsl:value-of select="description"/></p>
                        <p class="price">$<xsl:value-of select="price"/></p>
                    </div>
                </xsl:for-each>
            </div>
            
            <!-- Display media (GIF and audio) -->
            <div class="media">
                <img src="bread.gif" alt="Bread GIF"/><br/>
                <audio controls="controls">
                    <source src="{media/audio/@src}" type="audio/mpeg"/>
                </audio>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
