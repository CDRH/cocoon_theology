<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" encoding="UTF-8" indent="no"/>
    
    <xsl:template name="maintemplate">
    <html>
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
                            <li>&#169; University of Nebraska&#8211;Lincoln</li>
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
    
</xsl:stylesheet>
