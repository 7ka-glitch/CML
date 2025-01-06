<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        border-collapse: collapse;
                    }
                </style>
            </head>
            <body>
                <table border='1'>
                    <thead>
                        <tr>
                            <td>Продукт</td>
                            <td>Цена</td>
                        </tr>
                    </thead>
                    <xsl:for-each select="root/nproduct/product">
                        <xsl:sort select="price" data-type="number" order="ascending" />
                        
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td> 
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
