<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>History Page</title>
<link href="<c:url value="/resources/css/stylesheets_history.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h2>All Chat History</h2>
<div id="dj">
<div id = "zx">
<c:forEach items = "${list}" var = "item">
<p>${item} </p>
</c:forEach>
</div>
</div>
</body>
</html>