<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<body>
		<xsl:for-each select="root/table">
			<xsl:if test="Columns/column/@type = 'int' or Columns/Column/DataType/@type = 'int'">
				<table border="1">
					<tbody>
						<tr>
							<th>
								<xsl:attribute name="colspan">
									<xsl:value-of select="count(Columns/*)"/>
								</xsl:attribute>
								<xsl:value-of select="@name"/>
							</th>
						</tr>
						<tr>
							<xsl:for-each select="Columns/*">
								<td><xsl:value-of select="@name"/></td>
							</xsl:for-each>
						</tr>
					</tbody>
				</table>
			</xsl:if>
		</xsl:for-each>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet> 
