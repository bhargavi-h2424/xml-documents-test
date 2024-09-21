<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Bryan's Café Menu</title>
            <link rel="stylesheet" type="text/css" href="style.css"/>
        </head>
        <body>
            <h1>Bryan's Café Menu</h1>
            <div class="menu-list">
                <!-- Loop through each menu item in the XML -->
                <xsl:for-each select="bryansCafe/menuItem">
                    <div class="menu-item">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><xsl:value-of select="description"/></p>
                        <p class="price">$<xsl:value-of select="price"/></p>
                    </div>
                </xsl:for-each>
            </div>
            
            <!-- Display media (GIF and audio) -->
            <div class="media">
                <img src="betroot.gif" alt="Menu GIF"/><br/>
                <audio controls="controls">
                    <source src="{media/audio/@src}" type="audio/mpeg"/>
                </audio>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
