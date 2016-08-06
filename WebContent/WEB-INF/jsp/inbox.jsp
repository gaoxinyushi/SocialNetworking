<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inbox Page</title>
<link href="<c:url value="/resources/css/stylesheets_inbox.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Inbox Page</h1>
<p id="dtl">Social Media Web Application</p>
<!-- <p id="logn">chat</p> -->
<form:form method="POST" action="/SocialNetworking/homePage" modelAttribute = "inboxModel">
<table id="hm_bttn">
    <tr>
    <td>
    <input type = "hidden" name="inbox_email" value=${inbox_email}>
	<input type = "hidden" name="inbox_password" value=${inbox_password}>
	<input type = "hidden" name="process_chat" value=${process_chat}>
	
    <input type="submit" value="Home Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/inbox" modelAttribute = "inboxModel">
<table id="rl_bttn">
    <tr>
    <td>
    <input type = "hidden" name="inbox_email" value=${inbox_email}>
	<input type = "hidden" name="inbox_password" value=${inbox_password}>
	<input type = "hidden" name="process_chat" value=${process_chat}>
    <input type="submit" value="Reload Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<c:choose>
<c:when test = "${createInvalid != 'yes' }">
<form:form method="POST" action="/SocialNetworking/createChat" modelAttribute = "inboxModel">
<table id="cnm_bttn">
    <tr>
    <td>
    <input type = "hidden" name="inbox_email" value=${inbox_email}>
	<input type = "hidden" name="inbox_password" value=${inbox_password}>
	<input type = "hidden" name="process_chat" value=${process_chat}>
    <input type="submit" value="Create New Message" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
</c:when>
<c:otherwise>
<div id ="error">
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${errorOfInboxList }</td>
</div>
</c:otherwise>
</c:choose>
<div id = "kp">
<c:forEach items="${inboxList}" var="list">
<div id= "zx">
	<tr>	
	<c:forEach items = "${list.value }" var = "name">
		<c:forEach items = "${name.value}" var= "image">
		<div id="td">	<tr>Name: ${name.key}</tr> </div>
			
			<img src = ${image.value} alt="No Picture" width="100" height="100" />
			<c:choose>
			<c:when test = "${image.key == 'yes'}">			
			<form:form method="POST" action="/SocialNetworking/inbox" modelAttribute = "inboxModel">
				<table id = "delete">		
					<tr>
					<td>
					<input type = "hidden" name="inbox_email" value=${inbox_email}>
					<input type = "hidden" name="inbox_password" value=${inbox_password}>
					<input type = "hidden" name="process_chat" value=${list.key}>
					<input type="submit" value="delete" class="container btn color-1 material-design"/>
					</td>
					</tr>
				</table> 
			</form:form>
			</c:when>
			</c:choose>
			<form:form method="POST" action="/SocialNetworking/chatPage" target = "_blank" modelAttribute = "inboxModel">
				<table id = "chat">		
					<tr>
					<td>
					<input type = "hidden" name="inbox_email" value=${inbox_email}>
					<input type = "hidden" name="inbox_passwod" value=${inbox_passwod}>
					<input type = "hidden" name="process_chat" value=${list.key}>
					<input type="submit" value="chat" class="container btn color-1 material-design"/>
					</td>
					</tr>
				</table> 
			</form:form>
		</c:forEach>
	</tr>
	</c:forEach>
	</div>
</c:forEach>
</div>
</body>
</html>