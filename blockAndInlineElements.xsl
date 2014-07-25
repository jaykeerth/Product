<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--Inline Elements-->
	<xsl:template match="b">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="u">
		<u>
			<xsl:apply-templates/>
		</u>
	</xsl:template>
	<xsl:template match="i">
		<i>
			<xsl:value-of select="."/>
		</i>
	</xsl:template>
	<xsl:template match="pubMentioned">
		<i>
			<xsl:value-of select="."/>
		</i>
	</xsl:template>
	<xsl:template match="xref">
		<a name="{@id}"/>
		<xsl:if test="@type!='off'">
			<xsl:apply-templates/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="xrefText">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="hotText">
		<xsl:choose>
			<xsl:when test="../../@type='local'">
				<a href="{../../@dest}.html" target="itemArea">
					<xsl:value-of select="."/>
				</a>
			</xsl:when>
			<xsl:when test="../../@type='web'">
				<a href="{../../@dest}" target="newwin">
					<xsl:value-of select="."/>
				</a>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<!--Block Elements-->
	<xsl:template match="myElements">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="p">
		<p class="body">
			<xsl:apply-templates/>
		</p>
	</xsl:template>
	<xsl:template match="br">
		<br/>
	</xsl:template>
	<xsl:template match="ol">
		<ol>
			<xsl:apply-templates/>
		</ol>
	</xsl:template>
	<xsl:template match="ul">
		<ul>
			<xsl:apply-templates/>
		</ul>
	</xsl:template>
	<xsl:template match="li">
		<li>
			<xsl:apply-templates/>
		</li>
	</xsl:template>
	<xsl:template match="editor">
		<xsl:if test="/@showEdits = 'yes'">
			<p style="color:Red">
				<xsl:apply-templates/>
			</p>
		</xsl:if>
	</xsl:template>
	<xsl:template match="table">
		<table style="{@style}">
			<xsl:apply-templates/>
		</table>
	</xsl:template>
	<xsl:template match="tr">
		<tr style="{@style}">
			<xsl:apply-templates/>
		</tr>
	</xsl:template>
	<xsl:template match="td">
		<td style="{@style}">
			<xsl:apply-templates/>
		</td>
	</xsl:template>
	<xsl:template match="th">
		<td>
			<b>
				<xsl:apply-templates/>
			</b>
		</td>
	</xsl:template>
</xsl:stylesheet>
