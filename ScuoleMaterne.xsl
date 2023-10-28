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
                        font-family: Arial, sans-serif;
                        background-color: #f2f2f2;
                        margin: 0;
                        padding: 0;
                    }
                    
                    .container {
                        background-color: white;
                        padding: 20px;
                        border-radius: 10px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        width: 80%;
                        margin-top: 20px;
                    }
                    
                    h1 {
                        text-align: center;
                        color: #4CAF50;
                    }
                    
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        margin-top: 20px;
                    }
                    
                    th, td {
                        text-align: left;
                        padding: 12px;
                    }
                    
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    
                    table, th, td {
                        border: 1px solid #ddd;
                    }
                    
                    table th, table td {
                        border: 1px solid #ddd;
                    }
                    
                    table th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    
                    table tr:hover {
                        background-color: #f5f5f5;
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
