<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xs" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" name="html"/>
    <xsl:template match="/">
        <xsl:call-template name="displayLaptopsPage"/>
    </xsl:template>
    <xsl:template name="displayLaptopsPage">
        <xsl:variable name="lapPage" select="'laptops'"/>
        <xsl:result-document format="html" href="../HTML/{$lapPage}.html">
            <html>
                <head>
                    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
                    <title> Laptops </title>
                    <style type="text/css">
                        .auto-style1{
                            text-align:center;
                        }</style>
                    <script type="text/javascript">
                        // Popup window code
                        function newPopup(url) {
                        popupWindow = window.open(
                        url,'popUpWindow','height=300,width=700,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
                        }
                    </script>
                </head>
                <body>
                    <table align="center" style="width: 100%">
                        <tr>
                            <td>
                                <xsl:call-template name="header"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <xsl:call-template name="globalNav"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 339px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 181px" valign="top"> Laptops<br/> By
                                            Price Range <xsl:call-template name="laptopHierarchy"/>
                                        </td>
                                        <td>
                                            <table style="width: 100%">
                                                <xsl:call-template name="allLaptops">
                                                  <xsl:with-param name="brand" select="'Dell'"/>
                                                </xsl:call-template>
                                                <xsl:call-template name="allLaptops">
                                                  <xsl:with-param name="brand" select="'Toshiba'"/>
                                                </xsl:call-template>
                                                <xsl:call-template name="allLaptops">
                                                  <xsl:with-param name="brand" select="'HP'"/>
                                                </xsl:call-template>
                                                <xsl:call-template name="allLaptops">
                                                  <xsl:with-param name="brand" select="'Apple'"/>
                                                </xsl:call-template>
                                                <xsl:call-template name="allLaptops">
                                                    <xsl:with-param name="brand" select="'Lenovo'"/>
                                                </xsl:call-template>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="footer"/>
                            </td>
                        </tr>
                    </table>
                </body>
            </html>
        </xsl:result-document>

        <xsl:for-each select="//laptop">
            <xsl:variable name="lapId" select="@id"/>
            <xsl:result-document format="html" href="../HTML/{$lapId}.HTML">
                <html>
                    <head>
                        <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
                        <title>
                            <xsl:value-of select="//laptop[@id=$lapId]/title"/> Specs </title>
                        <style type="text/css">
                            .auto-style1{
                                text-align:center;
                            }
                            .auto-style3{
                                border-width:5px;
                            }</style>
                        <script type="text/javascript">
                            // Popup window code
                            function newPopup(url) {
                            popupWindow = window.open(
                            url,'popUpWindow','height=630,width=950,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
                            }
                        </script>
                    </head>
                    <body>
                        <table align="center" style="width: 100%">
                            <tr>
                                <td>
                                    <xsl:call-template name="header"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <xsl:call-template name="globalNav"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 339px">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 181px" valign="top"> 
                                                <b>Laptops</b>
                                                <br/>
                                                <b>By Price Range</b>
                                                <xsl:call-template name="laptopHierarchy"/>
                                            </td>
                                            <td>
                                                <table align="center"
                                                  style="width: 75%; margin-right: 0px">
                                                  <xsl:call-template name="eachLaptop">
                                                  <xsl:with-param name="lapId" select="$lapId"/>
                                                  </xsl:call-template>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:call-template name="footer"/>
                                </td>
                            </tr>
                        </table>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="header">
        <img src="../HTML/images/header.jpg" height="155" width="1290"/>
    </xsl:template>

    <xsl:template name="footer">
        <img src="../HTML/images/footer.jpg" height="55" width="1290"/>
    </xsl:template>

    <xsl:template name="globalNav">
        <a href="home.html">
            <img id="img1" alt="Home" height="20"
                onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'../HTML/images/button41.jpg')"
                onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'../HTML/images/button3F.jpg')"
                onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'../HTML/images/button40.jpg')"
                onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'../HTML/images/button40.jpg')"
                src="../HTML/images/button3F.jpg" style="border: 0" width="100"/>
            <!-- MSComment="ibutton" fp-style="fp-btn: Embossed Rectangle 1" fp-title="Home" -->
        </a>
        <a href="laptops.html">
            <img id="img2" alt="Laptops" height="20"
                onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'../HTML/images/button44.jpg')"
                onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'../HTML/images/button42.jpg')"
                onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'../HTML/images/button43.jpg')"
                onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'../HTML/images/button43.jpg')"
                src="../HTML/images/button42.jpg" style="border: 0" width="100"/>
            <!-- MSComment="ibutton" fp-style="fp-btn: Embossed Rectangle 1" fp-title="Laptops" -->
        </a>
        <a href="mobiles.html">
            <img id="img3" alt="Mobile Phones" height="20"
                onmousedown="FP_swapImg(1,0,/*id*/'img3',/*url*/'../HTML/images/button47.jpg')"
                onmouseout="FP_swapImg(0,0,/*id*/'img3',/*url*/'../HTML/images/button45.jpg')"
                onmouseover="FP_swapImg(1,0,/*id*/'img3',/*url*/'../HTML/images/button46.jpg')"
                onmouseup="FP_swapImg(0,0,/*id*/'img3',/*url*/'../HTML/images/button46.jpg')"
                src="../HTML/images/button45.jpg" style="border: 0" width="100"/>
            <!-- MSComment="ibutton" fp-style="fp-btn: Embossed Rectangle 1" fp-title="Mobile Phones" -->
        </a>
        <a href="about.html">
            <img id="img4" alt="About" height="20"
                onmousedown="FP_swapImg(1,0,/*id*/'img4',/*url*/'../HTML/images/button4A.jpg')"
                onmouseout="FP_swapImg(0,0,/*id*/'img4',/*url*/'../HTML/images/button48.jpg')"
                onmouseover="FP_swapImg(1,0,/*id*/'img4',/*url*/'../HTML/images/button49.jpg')"
                onmouseup="FP_swapImg(0,0,/*id*/'img4',/*url*/'../HTML/images/button49.jpg')"
                src="../HTML/images/button48.jpg" style="border: 0" width="100"/>
            <!-- MSComment="ibutton" fp-style="fp-btn: Embossed Rectangle 1" fp-title="Reviews" -->
        </a>
    </xsl:template>

    <xsl:template name="laptopHierarchy">
        <xsl:for-each select="//laptopBase/categories/category/category">
            <xsl:call-template name="doOneLine">
                <xsl:with-param name="indent" select="'15'"/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="doOneLine">
        <xsl:param name="indent"/>
        <p style="margin-left: {$indent}px;margin-top:0px;margin-bottom:0px;">
            <b><xsl:value-of select="title"/></b>
        </p>
        <xsl:for-each select="itemId">
            <xsl:variable name="currItemId" select="."/>
            <p style="margin-left: {number($indent)+15}px;margin-top:0px;margin-bottom:0px;">
                <a href="{$currItemId}.html">
                    <xsl:value-of select="//laptop[@id=$currItemId]/title"/>
                </a>
            </p>
        </xsl:for-each>
        <xsl:for-each select="category">
            <xsl:call-template name="doOneLine">
                <xsl:with-param name="indent" select="number($indent)+15"/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="allLaptops">
        <xsl:param name="brand"/>
        <tr>
            <td colspan="5">
                <h4>
                    <xsl:value-of select="$brand"/>
                </h4>
            </td>
        </tr>
        <tr>
            <xsl:for-each select="//laptop[brand=$brand]">
                <xsl:sort select="releaseDate" data-type="text" order="descending"/>
                <td class="auto-style1" style="width: 220px">
                    <a href="{@id}.html">
                        <img src="../HTML/images/{@id}/main.jpg" height="125" width="130"/>
                    </a>
                </td>
            </xsl:for-each>
        </tr>
        <tr>
            <xsl:for-each select="//laptop[brand=$brand]">
                <xsl:sort select="releaseDate" data-type="text" order="descending"/>
                <td class="auto-style1" style="width: 220px">
                    <a href="{@id}.html">
                        <xsl:value-of select="title"/>
                    </a> &#160; &#160; &#160; <a href="JavaScript:newPopup('{title}.html');"> [...]
                            <xsl:call-template name="showLaptops">
                            <xsl:with-param name="lapId" select="@id"/>
                        </xsl:call-template>
                    </a>
                </td>
            </xsl:for-each>
        </tr>
    </xsl:template>

    <xsl:template name="eachLaptop">
        <xsl:param name="lapId"/>
        <tr>
            <td align="center" style="width: 215px">
                <img alt="" height="150" src="../HTML/images/{$lapId}/main.jpg" width="150"/>
            </td>
            <td align="center" style="width: 447px">
                <p style="text-align: left; width: 330px">
                    <b>
                        <xsl:value-of select="//laptop[@id=$lapId]/brand"/>&#160;<xsl:value-of
                            select="//laptop[@id=$lapId]/title"/>
                    </b>
                    <br/>
                    <xsl:value-of select="//laptop[@id=$lapId]/description"/>
                    <br/>
                    <b>Release date: </b><xsl:value-of
                        select="//laptop[@id=$lapId]/releaseDate"/>
                    <br/>
                    <b>Cost: </b><xsl:value-of select="//laptop[@id=$lapId]/cost"/>$</p>
            </td>
            <td align="center" style="width: 250px" rowspan="28">
                <b>Other laptops from same manufacturer:</b>
                <br/>
                <xsl:for-each select="//laptop">
                    <xsl:choose>
                        <xsl:when
                            test="brand=//laptop[@id=$lapId]/brand and title!=//laptop[@id=$lapId]/title">
                            <a href="{@id}.html">
                                <img src="../HTML/images/{@id}/main.jpg" height="125" width="130"/>
                            </a>
                            <br/>
                            <a href="{@id}.html">
                                <b>
                                    <xsl:value-of select="brand"/>&#160;<xsl:value-of select="title"
                                    />
                                </b>
                            </a>
                            <br/>
                            <br/>
                            <br/>
                        </xsl:when>
                    </xsl:choose>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Display</b>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Screen size</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/display/size"/>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Resolution</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/display/resolution"
                /></td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Processor</b>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3" style="width: 215px">Processor</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/processor"/>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3" style="width: 215px">Operating System</td>
            <td align="left" class="auto-style3" style="width: 447px">
                <xsl:value-of
                    select="//laptop[@id=$lapId]/specifications/operatingSystem"/>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Memory</b>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Hard Disk</td>
            <td align="left" style="width: 447px" class="auto-style3">         
                <xsl:value-of
                    select="//laptop[@id=$lapId]/specifications/memory/hardDisk"/>              
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">RAM</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/memory/ram"/> GB
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Graphics</b>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Size</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/graphics"
                /></td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Appearance</b>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Size</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/dimensions"
                /></td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Battery</b>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Battery Type</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/battery/type"
                /></td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Stand-by Time</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/battery/standbyTime"/>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Camera</b>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3" style="width: 215px">Camera</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/camera"/>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Connectivity</b>
            </td>
        </tr>
        <tr>   
            <td align="center" class="auto-style3" style="width: 215px">Connectivity</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/connectivity"/>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Color Availability</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:value-of select="//laptop[@id=$lapId]/specifications/colorAvailability"/>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>Source</b>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px" class="auto-style3">Source</td>
            <td align="left" style="width: 447px" class="auto-style3">
                <xsl:variable name="sourceId" select="//laptop[@id=$lapId]/sources/sourceRefId"/>
                <xsl:value-of select="//source[@id=$sourceId]/url"/>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <b>More Pics</b>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3" colspan="2">
                <a href="JavaScript:newPopup('{$lapId}_sec_other1.html');">
                    <img alt="" height="150" src="../HTML/images/{$lapId}/other1.jpg" width="150"
                    />&#160; <xsl:call-template name="showPics">
                        <xsl:with-param name="secId"
                            select="//sections/section[@id='sec_other1']/@id"/>
                        <xsl:with-param name="lapId" select="$lapId"/>
                    </xsl:call-template>
                </a>
                <a href="JavaScript:newPopup('{$lapId}_sec_other2.html');">
                    <img alt="" height="150" src="../HTML/images/{$lapId}/other2.jpg" align="150"
                    />&#160; <xsl:call-template name="showPics">
                        <xsl:with-param name="secId"
                            select="//sections/section[@id='sec_other2']/@id"/>
                        <xsl:with-param name="lapId" select="$lapId"/>
                    </xsl:call-template>
                </a>
                <a href="JavaScript:newPopup('{$lapId}_sec_other3.html');">
                    <img alt="" height="150" src="../HTML/images/{$lapId}/other3.jpg" width="150"
                    />&#160; <xsl:call-template name="showPics">
                        <xsl:with-param name="secId"
                            select="//sections/section[@id='sec_other3']/@id"/>
                        <xsl:with-param name="lapId" select="$lapId"/>
                    </xsl:call-template>
                </a>
                <a href="JavaScript:newPopup('{$lapId}_sec_other4.html');">
                    <img alt="" height="150" src="../HTML/images/{$lapId}/other4.jpg" width="150"/>
                    <xsl:call-template name="showPics">
                        <xsl:with-param name="secId"
                            select="//sections/section[@id='sec_other4']/@id"/>
                        <xsl:with-param name="lapId" select="$lapId"/>
                    </xsl:call-template>
                </a>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="showPics">
        <xsl:param name="secId"/>
        <xsl:param name="lapId"/>
        <xsl:result-document format="html" href="../HTML/{$lapId}_{$secId}.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta content="en-us" http-equiv="Content-Language"/>
                    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
                    <title> Photos of <xsl:value-of select="//laptop[@id=$lapId]/title"/>
                    </title>
                    <style type="text/css">
                        .auto-style1{
                            text-align:center;
                        }</style>
                </head>
                <body>
                    <xsl:for-each select="//section[@id=$secId]">
                        <xsl:variable name="myId" select="@id"/>
                        <xsl:variable name="nextId" select="@nextSectionRefId"/>
                        <xsl:variable name="picId" select="title"/>
                        <table style="width: 100%">
                            <tr>
                                <td class="auto-style1" style="width: 75px">
                                    <xsl:if test="//section[@nextSectionRefId=$myId]">
                                        <a
                                            href="{$lapId}_{//section[@nextSectionRefId=$myId]/@id}.html">
                                            <h2>&lt;&lt;</h2>
                                            <br/>
                                        </a>
                                    </xsl:if>
                                </td>
                                <td class="auto-style1" style="width: 749px">
                                    <img alt="other1" src="../HTML/images/{$lapId}/{$picId}"
                                        height="600" width="800"/>
                                </td>
                                <td class="auto-style1" style="width: 75px">
                                    <xsl:if test="@nextSectionRefId">
                                        <a href="{$lapId}_{//section[@id=$nextId]/@id}.html">
                                            <h2>&gt;&gt;</h2>
                                            <br/>
                                        </a>
                                    </xsl:if>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>

    <xsl:template name="showLaptops">
        <xsl:param name="lapId"/>
        <xsl:result-document format="html" href="../HTML/{//laptop[@id=$lapId]/title}.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta content="en-us" http-equiv="Content-Language"/>
                    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
                    <title>
                        <xsl:value-of select="//laptop[@id=$lapId]/brand"/> Laptops </title>
                    <style type="text/css">
                        .auto-style1{
                            text-align:center;
                        }</style>
                    <script language="Javascript">
                        
                        function redirectToMobilePage(url){
                        window.opener.location.href=url;
                        self.close();
                        }
                        
                    </script>
                </head>
                <body>
                    <xsl:for-each select="//laptop[@id=$lapId]">
                        <xsl:variable name="myId" select="@id"/>
                        <xsl:variable name="nextId" select="@nextIdRef"/>
                        <table style="width: 100%">
                            <tr>
                                <td class="auto-style1" style="width: 75px">
                                    <xsl:if test="//laptop[@nextIdRef=$myId]">
                                        <a href="{//laptop[@nextIdRef=$myId]/title}.html">
                                            <h2>&lt;&lt;</h2>
                                            <br/>
                                        </a>
                                    </xsl:if>
                                </td>
                                <td class="auto-style1" style="width: 750px">
                                    <table>
                                        <tr>
                                            <td align="center" style="width: 215px">
                                                <img alt="" height="150"
                                                  src="../HTML/images/{$lapId}/main.jpg" width="150"
                                                />
                                            </td>
                                            <td align="center" style="width: 335px">
                                                <p style="text-align: left; width: 330px">
                                                  <b>
                                                  <xsl:value-of
                                                  select="//laptop[@id=$lapId]/brand"
                                                  />&#160;<xsl:value-of
                                                  select="//laptop[@id=$lapId]/title"/>
                                                  </b>
                                                  <br/>
                                                  <xsl:value-of
                                                  select="//laptop[@id=$lapId]/description"/>
                                                  <br/>
                                                  <b>Release date: </b><xsl:value-of
                                                  select="//laptop[@id=$lapId]/releaseDate"/>
                                                  <br/>
                                                  <b>Cost: </b><xsl:value-of
                                                  select="//laptop[@id=$lapId]/cost"/>$</p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="auto-style1" style="width: 75px">
                                    <xsl:if test="@nextIdRef">
                                        <a href="{//laptop[@id=$nextId]/title}.html">
                                            <h2>&gt;&gt;</h2>
                                            <br/>
                                        </a>
                                    </xsl:if>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <a href="JavaScript:redirectToMobilePage('{$lapId}.html');">
                                        Go to <xsl:value-of select="//laptop[@id=$lapId]/title"/>'s page
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
