<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <!-- <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" /> -->
    <xsl:template match="tei:TEI">
                     <div class="row">
                         <div class="col">
                             <h4>About the manuscript page:</h4>
                             <xsl:value-of select="//tei:sourceDesc"/>
                             <xsl:value-of select="//tei:licence"/> <!-- You can change the way the metadata is visualised as well-->
                         </div>
                         <div class="col">
                             <ul>
                                 <li>Total number of modifications: 
                                     <b><xsl:value-of select="count(//tei:del | //tei:add)" /></b>
                                     <ul>
                                         <li>Additions:
                                             <b><xsl:value-of select="count(//tei:add)" /></b>
                                         </li>
                                         <li>Deletions:
                                             <b><xsl:value-of select="count(//tei:del)" /></b>
                                         </li>
                                        <li>Superscript:
                                            <b><xsl:value-of select="count(//tei:hi[@rend='sup'])" /></b>
                                        </li>
                                     </ul>
                                 </li>
                             </ul>
                        </div>
                     </div>
        <hr/>
    </xsl:template>
</xsl:stylesheet>
