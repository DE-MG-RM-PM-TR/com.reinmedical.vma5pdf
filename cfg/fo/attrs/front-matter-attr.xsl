<?xml version='1.0'?>

<!-- 
Copyright © 2004-2006 by Idiom Technologies, Inc. All rights reserved. 
IDIOM is a registered trademark of Idiom Technologies, Inc. and WORLDSERVER
and WORLDSTART are trademarks of Idiom Technologies, Inc. All other 
trademarks are the property of their respective owners. 

IDIOM TECHNOLOGIES, INC. IS DELIVERING THE SOFTWARE "AS IS," WITH 
ABSOLUTELY NO WARRANTIES WHATSOEVER, WHETHER EXPRESS OR IMPLIED,  AND IDIOM
TECHNOLOGIES, INC. DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
PURPOSE AND WARRANTY OF NON-INFRINGEMENT. IDIOM TECHNOLOGIES, INC. SHALL NOT
BE LIABLE FOR INDIRECT, INCIDENTAL, SPECIAL, COVER, PUNITIVE, EXEMPLARY,
RELIANCE, OR CONSEQUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO LOSS OF 
ANTICIPATED PROFIT), ARISING FROM ANY CAUSE UNDER OR RELATED TO  OR ARISING 
OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF IDIOM
TECHNOLOGIES, INC. HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 

Idiom Technologies, Inc. and its licensors shall not be liable for any
damages suffered by any person as a result of using and/or modifying the
Software or its derivatives. In no event shall Idiom Technologies, Inc.'s
liability for any damages hereunder exceed the amounts received by Idiom
Technologies, Inc. as a result of this transaction.

These terms and conditions supersede the terms and conditions in any
licensing agreement to the extent that such terms and conditions conflict
with those set forth herein.

This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
    version="2.0">

    <xsl:attribute-set name="__frontmatter">
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>
    
    <!--This block builds a grey box with rounded corners-->
    <xsl:attribute-set name="__rm__frontmatter__title__box">
        <xsl:attribute name="background-color">lightgray</xsl:attribute>
        <xsl:attribute name="border-style">solid</xsl:attribute> 
        <xsl:attribute name="border-width">10</xsl:attribute> 
        <xsl:attribute name="border-color">lightgray</xsl:attribute> 
        <xsl:attribute name="fox:border-radius">10pt</xsl:attribute> 
        <xsl:attribute name="padding">5pt</xsl:attribute> 
        <xsl:attribute name="width">495pt</xsl:attribute> 
    </xsl:attribute-set>
    <!--This block frames the Title Box in white to separate it from background image fragments-->
    <xsl:attribute-set name="__rm__frontmatter__title_box_frame">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">147mm</xsl:attribute>
        <xsl:attribute name="background-color">lightgrey</xsl:attribute>
        <xsl:attribute name="border-style">solid</xsl:attribute> 
        <xsl:attribute name="border-width">4</xsl:attribute> 
        <xsl:attribute name="border-color">white</xsl:attribute> 
        <xsl:attribute name="fox:border-radius">14pt</xsl:attribute> 
        <xsl:attribute name="padding-left">15pt</xsl:attribute>
        <xsl:attribute name="padding-right">15pt</xsl:attribute> 
        <xsl:attribute name="padding-top">0pt</xsl:attribute> 
        <xsl:attribute name="padding-bottom">0pt</xsl:attribute>
        <xsl:attribute name="width">495pt</xsl:attribute> 
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
        <!--<xsl:attribute name="space-before.conditionality">retain</xsl:attribute>-->
        <xsl:attribute name="space-before">0mm</xsl:attribute>
        <xsl:attribute name="font-size">20pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">120%</xsl:attribute>
        <xsl:attribute name="color">white</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__subtitle" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">18pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">140%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">36pt</xsl:attribute>
        <xsl:attribute name="font-size">11pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">normal</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">210mm</xsl:attribute>
        <xsl:attribute name="bottom">20mm</xsl:attribute>
        <xsl:attribute name="right">20mm</xsl:attribute>
        <xsl:attribute name="left">20mm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container_content">
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__mainbooktitle">
        <!--<xsl:attribute name=""></xsl:attribute>-->
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__booklibrary">
        <!--<xsl:attribute name=""></xsl:attribute>-->
    </xsl:attribute-set>
    
    <!--Rein Medical sets-->
    <xsl:attribute-set name="__rm__ArtNr">
        <!--<xsl:attribute name="left">12mm</xsl:attribute>--> 
        <xsl:attribute name="space-before">3mm</xsl:attribute>
        <xsl:attribute name="color">white</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute> 
    </xsl:attribute-set>
    
    <!--<xsl:attribute-set name="__rm__revision__date">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">256mm</xsl:attribute>
        <xsl:attribute name="left">95mm</xsl:attribute> 
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="background-color">white</xsl:attribute>
    </xsl:attribute-set>-->
    
    <!--<xsl:attribute-set name="__rm__HandbArtNr">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">256mm</xsl:attribute>
        <xsl:attribute name="left">40mm</xsl:attribute> 
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
    </xsl:attribute-set>-->
    
    <xsl:attribute-set name="__rm__Title_Credits">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">256mm</xsl:attribute>
        <xsl:attribute name="left">30mm</xsl:attribute> 
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="background-color">white</xsl:attribute>
    </xsl:attribute-set>
    
    <!--<xsl:attribute-set name="__rm__frontmatter__language">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">256mm</xsl:attribute>
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="left">83mm</xsl:attribute> 
        <xsl:attribute name="text-align">left</xsl:attribute>
        <!-\-<xsl:attribute name="font-weight">bold</xsl:attribute>-\->
    </xsl:attribute-set>--> 
  
    <!--Rein Medical ENDE-->
    

  <xsl:attribute-set name="back-cover">
    <xsl:attribute name="force-page-count">end-on-even</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__back-cover">
    <xsl:attribute name="break-before">even-page</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="bookmap.summary">
    <xsl:attribute name="font-size">9pt</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>