<xsl:transform
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT"
    xmlns:prop="http://saxonica.com/ns/html-property"
    xmlns:style="http://saxonica.com/ns/html-style-property"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs prop"
    extension-element-prefixes="ixsl"
    version="2.0"
    >
    
    
    <xsl:template match="/root">
        <xsl:result-document href="#title" method="ixsl:replace-content">
            <xsl:value-of>Random Rota test at <xsl:value-of select="format-date(current-date(), '[D] [MNn] [Y]')"/></xsl:value-of>  
        </xsl:result-document> 
        <xsl:value-of select="concat(count(*), ' - ', child)"/>
    </xsl:template>
    
</xsl:transform>