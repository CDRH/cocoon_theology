<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" encoding="UTF-8" indent="no"/>


  <xsl:template match="TEI.2">
    <html>
      <head>
        <title>14th Century Oxford Theology Online</title>
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
      </head>
      <body>
        <div class="works_background">
          <div class="sidebar">
            <div class="side_nav">
              <ul>
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li>
                  <a href="works.html">Works</a>
                </li>
                <li>
                  <a href="about.html">About</a>
                </li>
                <li>
                  <a href="links.html">Links</a>
                </li>
              </ul>
              
              <!-- <a href="works.html" class="selected">Works</a> -->
            </div>
          </div>
          <div class="works">

            <h2 align="center" class="style7">14th Century Oxford Theology Online</h2>
            <h3 align="center">project director Stephen E. Lahey</h3>
          </div>
          <div class="text_box">



            <xsl:apply-templates/>




          </div>
          <div class="works_footer">
            <a href="http://www.unl.edu">
              <img src="images/unl_logo.png" border="0"/>
            </a>
            <div class="works_footer2">
              <ul>
                <li>&#169;2008 University of Nebraska&#8211;Lincoln</li>
                <li>
                  <a href="http://cdrh.unl.edu">Center for Digital Research in the Humanities</a>
                </li>
              </ul>
            </div>
          </div>
        </div>

      </body>
    </html>

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

  <xsl:template match="div1/head[not(@type)]">

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

  </xsl:template>


  <xsl:template match="text[.//pb]">
    <div class="main">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  <!--  
  <xsl:template match="text[not(.//pb)]">
    <div class="body">
      <xsl:apply-templates />
    </div>
  </xsl:template>
-->
  <xsl:template match="div1/head[@type='sub']">
    <h1 class="sub">
      <xsl:apply-templates/>
    </h1>
  </xsl:template>

  <xsl:template match="div2/head">
    <h2>
      <xsl:apply-templates/>
    </h2>
  </xsl:template>

  <xsl:template match="div3/head">
    <h3>
      <xsl:apply-templates/>
    </h3>
  </xsl:template>

  <xsl:template match="div4/head">
    <h4>
      <xsl:apply-templates/>
    </h4>
  </xsl:template>

  <xsl:template match="pb">

    <span class="pageImage">
      <a href="images/{/TEI.2/@id}/{@id}.jpg">
        <img src="images/{/TEI.2/@id}/thumbs/{@id}.jpg"/>
      </a>
    </span>

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

  <xsl:template match="body">
    <xsl:apply-templates/>
  </xsl:template>
  <!--  
  <xsl:template match="list">
    <ul>
      <xsl:apply-templates select="./item" />
    </ul>
  </xsl:template>
  
  <xsl:template match="item">
  <li><xsl:apply-templates/></li>
  </xsl:template>
  -->

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

  <!--
<xsl:template match="title[@rend='bold']">
<strong><xsl:apply-templates/></strong>
</xsl:template>

<xsl:template match="title[@rend='underline']">
<u>&#160;<xsl:apply-templates/></u>&#160;
</xsl:template>

<xsl:template match="title[@rend='sub']">
<sub><xsl:apply-templates/></sub>
</xsl:template>

<xsl:template match="title[@rend='quoted']">
<xsl:text>"</xsl:text><xsl:apply-templates/><xsl:text>"</xsl:text>
</xsl:template>

<xsl:template match="title[@type='main']">
<center><b><xsl:apply-templates/></b></center>
</xsl:template>

<xsl:template match="title[@level='j' or @level='m']">
  <em><xsl:apply-templates/></em>
</xsl:template>
-->
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
    <p class="footNote" id="{@id}.note">
      <small><xsl:apply-templates/>&#160;<a href="#{@id}.ref" class="footnote">[back]</a></small>
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
        <a href="{@target}">
          <xsl:apply-templates/>
        </a>
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
            </xsl:choose>
          </sup>
        </a>
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
