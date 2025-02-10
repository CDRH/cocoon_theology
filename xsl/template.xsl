<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" encoding="UTF-8" indent="no"/>
    
    <xsl:template name="maintemplate">
    <html class="page" lang="en">
        <head>
            <title>14th Century Oxford Theology Online</title>
            <link rel="stylesheet" href="css/style.css" type="text/css"/>
            
            <!-- JQuery -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"> &#160; </script>
            
            <!-- Pretty Photo Image Viewer -->
            <link rel="stylesheet" href="js/prettyPhoto_compressed_3.1.3/css/prettyPhoto.css" type="text/css" media="screen" charset="utf-8" />
            <script src="js/prettyPhoto_compressed_3.1.3/js/jquery.prettyPhoto.js"> &#160; </script>
            <script src="js/script.js"> &#160; </script>
            
        </head>
        <body>
          <header>
            <div class="site-title sr-only">
              <div class="style7">14th Century Oxford Theology Online</div>
            </div>
            <div class="sidebar">
              <nav class="side_nav">
                <ul>
                  <li>
                    <a href="http://theology.unl.edu/index.html">Home</a>
                  </li>
                  <li>
                    <a href="http://theology.unl.edu/works.html">Works</a>
                  </li>
                  <li>
                    <a href="http://theology.unl.edu/about.html">About</a>
                  </li>
                  <li>
                    <a href="http://theology.unl.edu/links.html">Links</a>
                  </li>
                </ul>
              </nav>
            </div>
          </header>
        <main>
            <div class="works_background">
                <div class="works">
                    <h1 class="sr-only">Works</h1>
                    <p class="style7">14th Century Oxford Theology Online</p>
                    <p>project director Stephen E. Lahey</p>
               </div>
               <div class="text_box">
                   <xsl:apply-templates/> 
                </div>
            </div>                  
        </main>
        <footer>
            <div class="works_footer">
              <div class="unl-logo">
                <a href="http://www.unl.edu">
                    <img src="images/unl_logo.png" alt="University of Nebraska–Lincoln logo"/>
                </a>
              </div>
              <p><xsl:text>&#169;</xsl:text> <a href="http://www.unl.edu">University of Nebraska–Lincoln</a></p>
              <p><a href="http://cdrh.unl.edu">Center for Digital Research in the Humanities</a></p>
          </div>
        </footer>
        </body>
    </html>
    
    </xsl:template>
    
</xsl:stylesheet>
