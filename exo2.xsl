<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" omit-xml-declaration="yes" />
    <xsl:template match="/">
        <html>
            <body>
                <h1>My homepage</h1>
                <table border="1">
                    <tr bgcolor="#9acd32">
                    <th>Title</th>
                    <th>Name</th>
                    <th>Given Name</th>
                    <th>Family Name</th>
                    <th>Nickname</th>
                    <th>Encrypted email address</th>
                    <th>Homepage address</th>
                    </tr>
                    <xsl:for-each select="//foaf:Person">
                    <tr>
                    <td><xsl:value-of select="foaf:title"/></td>
                    <td><xsl:value-of select="foaf:name"/></td>
                    <td><xsl:value-of select="foaf:givenname"/></td>
                    <td><xsl:value-of select="foaf:family_name"/></td>
                    <td><xsl:value-of select="foaf:nick"/></td>
                    <td><xsl:value-of select="foaf:mbox_sha1sum"/></td>
                    <td><xsl:value-of select="@rdf:homepage"/></td>
                    <td><xsl:value-of select="@rdf:schoolHomepage"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

