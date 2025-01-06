<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    h2{
                        margin-left: 320px;
                    }
                    table {
                        border-collapse: collapse;
                        width: 50%;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 10px;
                        text-align: center;
                    }
                </style>
            </head>
            <body>
                <h2>Аттестация студентов</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Имя студента</th>
                            <th>Предмет</th>
                            <th>Оценка</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <xsl:for-each select="students/student">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="subject"/></td>
                                <td>
                                    <xsl:attribute name="style">
                                   
                                        <xsl:choose>
                                            <xsl:when test="grade &lt; 4">
                                                background-color: red;
                                            </xsl:when>
                                            <xsl:when test="grade &gt; 8">
                                                background-color: green;
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:attribute>
                                    <xsl:value-of select="grade"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
