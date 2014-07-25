<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xs" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" name="html"/>
    <xsl:template match="/">
        <xsl:call-template name="displayIndexPage"/>
    </xsl:template>
    <xsl:template name="displayIndexPage">
        <xsl:result-document format="html" href="../HTML/home.html">
            <html>
                <head>
                    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
                    <title>WhatsYourNewDevice</title>
                    <style type="text/css">
                        .auto-style1{
                            font-size:medium;
                            font-weight:bold;
                        }</style>
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
                                <table align="center" style="height: 330px; width: 850px">
                                    <tr>
                                        <td colspan="9" style="height: 26px" class="auto-style1"
                                            >Laptops</td>
                                    </tr>
                                    <tr>
                                        <td
                                            style="border-width: 0px; height: 160px; text-align: center; width: 250px"
                                            > &#160;</td>
                                        <td
                                            style="border-width: 0px; height: 160px; text-align: center; width: 250px">
                                            <a href="../HTML/ID004.html">
                                                <img alt="" height="120"
                                                    src="../HTML/images/ID004/main.jpg" width="201"
                                                    style="margin-right: 0px"/>
                                            </a>
                                        </td>
                                        <td
                                            style="border-width: 0px; height: 160px; text-align: center; width: 250px"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;">
                                            <a href="../HTML/ID006.html">
                                                <img alt="" height="124"
                                                    src="../HTML/images/ID006/main.jpg" width="200"/>
                                            </a>
                                        </td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;">
                                            <a href="../HTML/ID013.html">
                                                <img align="middle" alt="" height="119"
                                                    src="../HTML/images/ID013/main.jpg" width="200"/>
                                            </a>
                                        </td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 250px; text-align: center;" colspan="3"
                                            ><a href="../HTML/ID004.html">EliteBook</a></td>
                                        <td style="width: 250px; text-align: center;" colspan="3">
                                            <a href="../HTML/ID006.html">Precision</a></td>
                                        <td style="width: 250px; text-align: center;" colspan="3"
                                            ><a href="../HTML/ID013.html">Satellite Notebook</a></td>
                                    </tr>
                                    <tr>
                                        <td colspan="9" style="height: 25px" class="auto-style1"
                                            >Mobile Phones</td>
                                    </tr>
                                    <tr>
                                        <td
                                            style="border-width: 0px; height: 160px; text-align: center; width: 250px"
                                            > &#160;</td>
                                        <td
                                            style="border-width: 0px; height: 160px; text-align: center; width: 250px">
                                            <a href="../HTML/mob13.html">
                                                <img alt="" height="120"
                                                  src="../HTML/images/mob13/main.jpg" width="201"
                                                  style="margin-right: 0px"/>
                                            </a>
                                        </td>
                                        <td
                                            style="border-width: 0px; height: 160px; text-align: center; width: 250px"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;">
                                            <a href="../HTML/mob01.html">
                                                <img alt="" height="124"
                                                  src="../HTML/images/mob01/main.jpg" width="200"/>
                                            </a>
                                        </td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                        <td style="height: 160px; width: 250px; text-align: center;">
                                            <a href="../HTML/mob02.html">
                                                <img align="middle" alt="" height="119"
                                                  src="../HTML/images/mob02/main.jpg" width="200"/>
                                            </a>
                                        </td>
                                        <td style="height: 160px; width: 250px; text-align: center;"
                                            > &#160;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 250px; text-align: center;" colspan="3"
                                            ><a href="../HTML/mob13.html">Lumia 1520</a></td>
                                        <td style="width: 250px; text-align: center;" colspan="3">
                                            <a href="../HTML/mob01.html">G Flex</a></td>
                                        <td style="width: 250px; text-align: center;" colspan="3"
                                            ><a href="../HTML/mob02.html">Note 3 Neo</a></td>
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
</xsl:stylesheet>
