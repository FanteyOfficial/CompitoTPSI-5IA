<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Scuole Materne</title>
            </head>
            <body>
                <style>
                    body {
                        display: flex;
                        justify-content: center;
                    }
                    h1 {
                        text-align: center;
                        color: white;
                    }
                    table {
                        border-collapse: collapse;
                        border-color: black;
                        width: 100%;
                    }
                    th, td {
                        text-align: left;
                        padding: 8px;
                    }
                    tr:nth-child(even){background-color: #f2f2f2}
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }

                    .container {
                        background-color: gray;
                        padding: 10px;
                        border-radius: 10px;
                        width: 80%;
                    }
                </style>
                <div class="container">
                    <h1>Scuole Materne</h1>
                    <table border="1">
                        <tr>
                            <th>Classe</th>
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
                                    <xsl:value-of select="Comune/Classe"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Nome"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Comune/@codiceComune"/>
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
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
