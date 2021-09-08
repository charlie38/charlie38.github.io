<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet  version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/">
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
                        <th>School homepage address</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="//foaf:title"/></td>
                        <td><xsl:value-of select="//foaf:name"/></td>
                        <td><xsl:value-of select="//foaf:givenname"/></td>
                        <td><xsl:value-of select="//foaf:family_name"/></td>
                        <td><xsl:value-of select="//foaf:nick"/></td>
                        <td><xsl:value-of select="//foaf:mbox_sha1sum"/></td>
                        <td><xsl:value-of select="//foaf:homepage/@rdf:resource"/></td>
                        <td><xsl:value-of select="//foaf:schoolHomepage/@rdf:resource"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

