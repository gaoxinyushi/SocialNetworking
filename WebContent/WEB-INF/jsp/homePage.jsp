<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link href="<c:url value="/resources/css/stylesheets_homePage.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
setInterval(function()
		{
			var prefix = "http://localhost:8080/SocialNetworking/newsfeed/";
			var chatID = "${home_email}";
			var wholeThing = prefix.concat(chatID);
			$('#news').load(wholeThing);
		}, 1000);
</script>
</head>
<body>
<h1>Home Page</h1>
<p id="dtl">Social Media Web Application</p>
<form:form method="POST" action="/SocialNetworking/profile" modelAttribute = "homeModel">
<table id = "donea">
    <tr>
    <td>
    <input type = "hidden" name="home_email" value=${home_email}>
	<input type = "hidden" name="home_password" value=${home_password}>
    <input type="submit" value="Profile Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/friendList" modelAttribute = "homeModel">
<table id = "doneb">
    <tr>
    <td>
    <input type = "hidden" name="home_email" value=${home_email}>
	<input type = "hidden" name="home_password" value=${home_password}>
    <input type="submit" value="Friend List Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/friendSearch" modelAttribute = "homeModel">
<table  id = "donec">
    <tr>
    <td>
    <input type = "hidden" name="home_email" value=${home_email}>
	<input type = "hidden" name="home_password" value=${home_password}>
    <input type="submit" value="Friend Search Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/groupList" modelAttribute = "homeModel">
<table  id = "doned">
    <tr>
    <td>
    <input type = "hidden" name="home_email" value=${home_email}>
	<input type = "hidden" name="home_password" value=${home_password}>
    <input type="submit" value="Group Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/inbox" modelAttribute = "homeModel">
<table  id = "donee">
    <tr>
    <td>
    <input type = "hidden" name="home_email" value=${home_email}>
	<input type = "hidden" name="home_password" value=${home_password}>
    <input type="submit" value="Inbox Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/loginPage" modelAttribute = "homeModel">
<table  id = "donef">
    <tr>
    <td>
    <input type = "hidden" name="home_email" value=${home_email}>
	<input type = "hidden" name="home_password" value=${home_password}>
    <input type="submit" value="sign out" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<div id="news"></div>

</body>
</html>