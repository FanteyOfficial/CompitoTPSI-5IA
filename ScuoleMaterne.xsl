<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Scuole Materne</title>
            </head>
            <body>
                <h1>Scuole Materne</h1>
                <table border="1">
                    <tr>
                        <th>Nome</th>
                        <th>Comune</th>
                        <th>Provincia</th>
                        <th>Regione</th>
                        <th>Anno Inserimento</th>
                        <th>Data Ora Inserimento</th>
                        <th>Longitudine</th>
                        <th>Latitudine</th>
                    </tr>
                    <xsl:for-each select="ScuoleMaterne/ScuolaMaterna">
                        <tr>
                            <td>
                                <xsl:value-of select="Nome"/>
                            </td>
                            <td>
                                <xsl:value-of select="Comune"/>
                            </td>
                            <td>
                                <xsl:value-of select="Provincia"/>
                            </td>
                            <td>
                                <xsl:value-of select="Regione"/>
                            </td>
                            <td>
                                <xsl:value-of select="AnnoInserimento"/>
                            </td>
                            <td>
                                <xsl:value-of select="DataOraInserimento"/>
                            </td>
                            <td>
                                <xsl:value-of select="Longitudine"/>
                            </td>
                            <td>
                                <xsl:value-of select="Latitudine"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
