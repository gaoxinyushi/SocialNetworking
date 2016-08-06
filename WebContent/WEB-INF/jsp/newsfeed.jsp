<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NewsFeed Page</title>
<link href="<c:url value="/resources/css/stylesheets_homePage.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<div id = "doneh">
<h2>NewsFeed</h2>
<c:forEach items = "${list}" var = "item">
<div id="zx">
<table >
<div id="fs_fn">
<tr id="bnta">Group Name: ${item.key}</tr></div>
<div id="fs_im"><img src = ${pictureList[item.key]} alt="No Picture" width="100" height="100" /></div>
<c:forEach items = "${item.value }" var = "post">
<div id="zxl"><p id="pq">Post: ${post}</p></div>
</c:forEach>
</table>
</div>
</c:forEach>

<p>${errorOfnews }</p>
</div>
</body>
</html>