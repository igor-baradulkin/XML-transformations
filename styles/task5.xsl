<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:copy>
            <root>
                <xsl:apply-templates select="root/table">
                    <xsl:sort select="count(Columns/*)" order="ascending"/>
                    <xsl:sort select="Columns/*/@name" data-type="text"/>
                </xsl:apply-templates>
            </root>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>