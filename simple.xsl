<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="simple.xml" --><!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>


<xsl:template match="/breakfast_menu">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Food Chart</title>
</head>

<body>
<table border="1">
<tr>
<th> Name </th>
<th> Price </th>
<th> Description</th>
<th> Calories </th>
</tr>
<xsl:for-each select="food">
<tr>
<td> <xsl:value-of select="name" /> </td>
<td><xsl:value-of select="price" /></td>
<td><xsl:value-of select="description" /></td>
<td><xsl:value-of select="calories" /></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>

</xsl:template>

</xsl:stylesheet>