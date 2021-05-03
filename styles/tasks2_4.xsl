<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>

    <xsl:template match="table[not(Columns)]">
        <xsl:element name="table">
            <xsl:attribute name="name">
                <xsl:value-of select="@name"/>
            </xsl:attribute>
            <xsl:attribute name="schema">
                <xsl:value-of select="@schema"/>
            </xsl:attribute>
            <Columns>
                <xsl:apply-templates select="column|Column"/>
            </Columns>
        </xsl:element>
    </xsl:template>

    <xsl:template match="table[Columns[not(*)]]"/>

    <xsl:template match="table/Columns/*[@name=../../@name]/@name|table/*[@name=../@name]/@name">
        <xsl:attribute name="name">
            <xsl:value-of select="concat(../@name, '_1')"/>
        </xsl:attribute>
    </xsl:template>

<!--    <xsl:template match="/">-->
<!--        <xsl:copy>-->
<!--        <root>-->
<!--            <xsl:apply-templates select="root/table">-->
<!--                <xsl:sort select="count(Columns/*)" order="ascending"/>-->
<!--                <xsl:sort select="Columns/*/@name" data-type="text"/>-->
<!--            </xsl:apply-templates>-->
<!--        </root>-->
<!--        </xsl:copy>-->
<!--    </xsl:template>-->

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
