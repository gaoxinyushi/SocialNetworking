<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Group Setting Page</title>
<link href="<c:url value="/resources/css/stylesheets_createChat.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Create Group Page</h1>
<p id="dtl">Social Media Web Application</p>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>

<form:form method="POST" action="/SocialNetworking/inbox" modelAttribute = "chatSettingsModel" >
<table>
    <tr>
    <td>
     <tr><td><input type = "hidden" name="chat_email" value = ${chat_email}></td></tr>
     <tr><td><input type = "hidden" name="chat_password" value = ${chat_password}></td></tr>
     <tr>
     <div id ="cm"> 
     <div id = "zx">
     <div id = "hm_bttn">Choose one friend</div>  
     <select name="partner">
   	 <option value="${partner}" selected="selected">${partner}</option>
   	 <c:forEach items="${friend}" var ="friend">
   	 	<option value="${friend}">${friend}</option>
   	 </c:forEach>
  	</select>
     </tr>
    <input type="submit" value="submit" class="container btn color-1 material-design"/>
    </div>
      	</div>
    </td>
    </tr>
</table> 
</form:form>

<div id="ccerr">
<td>${errorOfcreateChat }</td>
</div>
</body>
</html>