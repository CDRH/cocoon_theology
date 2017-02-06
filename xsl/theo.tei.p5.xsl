<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0">
  
  <!--<xsl:output method="xhtml" indent="no" encoding="UTF-8"/>-->
  
  
  <xsl:include href="template.xsl" />
  

  <xsl:template match="/">
    
    <xsl:call-template name="maintemplate" />
    
  </xsl:template>
  

  <xsl:template match="body">
    <xsl:choose>
      <xsl:when test="/TEI/@xml:id = 'theo.postilla'">
        <!--<xsl:apply-templates match="head[1]"/>-->
        <xsl:apply-templates select="div1[@type='introduction']"/>
        
      </xsl:when>
      <xsl:otherwise><xsl:apply-templates/></xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="pb">
    <xsl:choose>
      <xsl:when test="starts-with(@facs, 'theo.postilla')">
          <div class="postillaimage"><a class="postilla" rel="prettyPhoto[pp_gal]">
            <xsl:attribute name="href">
              <xsl:text>images/theo.postilla.001/large/</xsl:text>
              <xsl:value-of select="@facs"/>
              <xsl:text>.jpg</xsl:text>
            </xsl:attribute>
            <img>
              <xsl:attribute name="src">
                <xsl:text>images/theo.postilla.001/thumbs/</xsl:text>
                <xsl:value-of select="@facs"/>
                <xsl:text>.jpg</xsl:text>
              </xsl:attribute>
            </img>
          </a></div>
      </xsl:when>
      <xsl:otherwise>
        <span class="pageImage">
          <a href="images/{/TEI/@xml:id}/{@xml:id}.jpg">
            <img src="images/{/TEI.2/@xml:id}/thumbs/{@xml:id}.jpg"/>
          </a>
        </span>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
  
  

  <xsl:template match="teiHeader"/>


  <xsl:template match="docAuthor">
    <p class="author">
      <xsl:apply-templates/>
    </p>
  </xsl:template>


  <xsl:template match="byline">
    <p class="byline">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="docDate">
    <p class="author">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  

  <xsl:template match="text[.//pb]">
    <div class="main">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  
  <xsl:template match="head">
    <xsl:choose>
      <xsl:when test="//div1/head[not(@type)]">
        <xsl:choose>
          <xsl:when test="preceding::head">
            <h2>
              <xsl:apply-templates/>
            </h2>
          </xsl:when>
          <xsl:otherwise>
            <h1>
              <xsl:apply-templates/>
            </h1>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:when test="div1/head[@type='sub']">
        <h1 class="sub">
          <xsl:apply-templates/>
        </h1>
      </xsl:when>
      <xsl:when test="//div2/head">
        <h2>
          <xsl:apply-templates/>
        </h2>
      </xsl:when>
      <xsl:when test="//div3/head">
        <h3>
          <xsl:apply-templates/>
        </h3>
      </xsl:when>
      <xsl:when test="//div4/head">
          <h4>
            <xsl:apply-templates/>
          </h4>

      </xsl:when>
      <xsl:otherwise>
        <h2><xsl:apply-templates/></h2>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
  


  
<xsl:template match="ab">
  <p><xsl:apply-templates/></p>
</xsl:template>




  <xsl:template match="milestone">
    <div class="separator">
      <xsl:text/>
    </div>
  </xsl:template>


  <xsl:template match="sp">
    <div class="speakerSection">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="speaker">
    <p class="speaker">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="xref[@n]">
    <a href="{@n}">
      <xsl:apply-templates/>
    </a>
  </xsl:template>

  <xsl:template match="letter">
    <blockquote>
      <xsl:apply-templates/>
    </blockquote>
  </xsl:template>

  <xsl:template match="lb">
    <xsl:apply-templates/>
    <br/>
  </xsl:template>

  <xsl:template match="hi[@rend='roman']">
    <span class="roman">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="hi[@rend='italic']">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>


  <xsl:template match="hi[@rend='italics']">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>

  <xsl:template match="hi[@rend='underline']">
    <u>
      <xsl:apply-templates/>
    </u>
  </xsl:template>

  <xsl:template match="hi[@rend='bold']">
    <b>
      <xsl:apply-templates/>
    </b>
  </xsl:template>

  <xsl:template match="hi[@rend='quoted']">
    <xsl:text>"</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>"</xsl:text>
  </xsl:template>

  <xsl:template match="hi[@rend='underline']">
    <u>
      <xsl:apply-templates/>
    </u>
  </xsl:template>

  <xsl:template match="hi[@rend='super']">
    <sup>
      <xsl:apply-templates/>
    </sup>
  </xsl:template>

  <xsl:template match="hi[@rend='subscript']">
    <sub>
      <xsl:apply-templates/>
    </sub>
  </xsl:template>

  <xsl:template match="hi[@rend='center']">
    <center>
      <xsl:apply-templates/>
    </center>
  </xsl:template>

  <xsl:template match="hi[@rend='smallCaps']">
    <span class="smallcaps">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="hi[@rend='right']">
    <div class="right">
      <xsl:apply-templates/>
    </div>
  </xsl:template>


  

  <xsl:template match="item">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="item/label">
    <strong>
      <xsl:apply-templates/>
    </strong>
  </xsl:template>





  <xsl:template match="figure[@entity]">

    <div class="image_large_16x9">
      <img src="{@entity}.jpg" alt="{@entity}"/>
    </div>
    <p class="figDesc">
      <small>
        <xsl:apply-templates select="figDesc"/>
      </small>
    </p>

  </xsl:template>

  
  <xsl:template match="term | foreign | emph | title[not(@level='a')] | biblScope[@type='volume']">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>

  <xsl:template match="revisionDesc">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="publicationStmt">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="sourceDesc">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="note[not(ancestor::teiHeader)]">
    <p class="footNote" id="{@xml:id}.note">
      <small><xsl:apply-templates/>&#160;<a href="#{@xml:id}.ref" class="footnote">[back]</a></small>
    </p>
  </xsl:template>

  <xsl:template match="bibl">
    <p class="bibl">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="ref">
    <xsl:choose>
      <xsl:when test="@type='link'">
        <a href="{@target}.html">
          <xsl:apply-templates/>
        </a>
        <xsl:text> </xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text> </xsl:text>
        <a href="#{@target}.note" id="{@target}.ref" class="footnote">
          <sup>
            <xsl:choose>
              <xsl:when test="descendant::text()">
                <xsl:apply-templates/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@n"/>
              </xsl:otherwise>
            </xsl:choose></sup></a>
        <xsl:text> </xsl:text>
      </xsl:otherwise>
    </xsl:choose>



  </xsl:template>



  <xsl:template match="notesStmt">
    <p class="top">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="table">
    <table>
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match="row">
    <tr>
      <xsl:apply-templates/>
    </tr>
  </xsl:template>

  <xsl:template match="cell">
    <td>
      <xsl:apply-templates/>
    </td>
  </xsl:template>


  
</xsl:stylesheet>
