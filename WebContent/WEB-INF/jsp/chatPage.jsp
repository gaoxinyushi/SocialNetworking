<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chat Page</title>
<link href="<c:url value="/resources/css/stylesheets_history.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
setInterval(function()
		{
			var prefix = "http://localhost:8080/SocialNetworking/chatPage/";
			var chatID = "${chat_id}";
			var wholeThing = prefix.concat(chatID);
			$('#test').load(wholeThing);
		}, 300);
</script>
</head>

<body>
<h1>Chat Page</h1>
<p id="dtl">Social Media Web Application</p>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<!-- <p id="logn">chat</p> -->
<div id="test"></div>
<form:form method="POST" action="/SocialNetworking/chatPage" modelAttribute = "MessageModel"> 
<table id="tp">
    <tr>
    <td>
    <input id ="message_email" type = "hidden" name="message_email" value=${message_email}>
	<input id = "message_password" type = "hidden" name="message_password" value=${message_password}>
	<input id = "chat_id" type = "hidden" name="chat_id" value=${chat_id}>
	<input id = "message" name="message" type="textbox" style="width: 700px; height:50px">
  <div id = "tpp">  <input type="submit" value="Send message" class="container btn color-1 material-design" />
    </div>
    </td>
    </tr>
</table> 
</form:form>
<div id="yy">
<tr>${messageOfError}</tr>
</div>
</body>
</html>