<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post Page</title>
<link href="<c:url value="/resources/css/stylesheets_post.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Post Page</h1>
<p id="dtl">Social Media Web Application</p>
<!-- <p id="logn">post</p> -->
<form:form method="POST" action="/SocialNetworking/groupList" modelAttribute = "postModel">
<table id = "donea">
    <tr>
    <td>
    <input type = "hidden" name="post_email" value=${post_email}>
	<input type = "hidden" name="post_password" value=${post_password}>
    <input type="submit" value=" Group List " class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/post" modelAttribute = "postModel">
<table id = "doneb">
    <tr>
    <td>
    <input type = "hidden" name="post_email" value=${post_email}>
	<input type = "hidden" name="post_password" value=${post_password}>
	<input type = "hidden" name="group_id" value=${group_id}>
    <input type="submit" value="Reload Post Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<table class="display" cellspacing="0" width="100%" id ="doned">
<tbody align = "center">
<div id = "move">
	<thead>
            <tr>
                <th>Picture</th>
                <th>User</th>
                <th>Time</th>
                <th>Post</th>
                <th>Liker</th>
                <th>Do you like?</th>
            </tr>
        </thead>
        </div>

	
			<div id = "donec">
			<c:forEach items = "${main}" var = "main">
			<form:form method="POST" action="/SocialNetworking/post" modelAttribute = "postModel">
	
			<input type = "hidden" name="post_email" value=${post_email}>
			<input type = "hidden" name="post_password" value=${post_password}>
			<input type = "hidden" name="group_id" value=${group_id}>
			<input type = "hidden" name="newliker" value=${post_email}>
			<input type = "hidden" name="post_id" value=${main.key}>
			<tr align="center">	
<!-- 					<div id = "zx">		 -->
				<td>
				<img src = ${picture[main.key]} alt="No Picture" width="50" height="50" />
				</td>
				<c:forEach items = "${main.value}" var = "info">
				<td>${info}</td>
				</c:forEach>
				<%-- <c:forEach items = "${liker[main.key]}" var = "liker"> --%>
				<td>${liker[main.key]}</td>
				<%-- </c:forEach> --%>
				<td><input type="submit" value="You like this post!" class="container btn color-1 material-design"/></td>
<!-- 			</div> -->
			</tr>
			</form:form>
			</c:forEach>
						
			</div>
	
</tbody>
</table>

<form:form method="POST" action="/SocialNetworking/post" modelAttribute = "postModel">
<table id = "donef">
    <tr>
    <td>
    		<input type = "hidden" name="post_email" value=${post_email}>
			<input type = "hidden" name="post_password" value=${post_password}>
			<input type = "hidden" name="group_id" value=${group_id}>
			<input type = "hidden" name="newliker" value=${newliker}>
<!-- 			<th>Your Post</th> -->
			<input name="text" type="textbox" style="width: 900px; height:50px">
			<div id = "doneg"><input type="submit" value="submit your post" class="container btn color-1 material-design"/>
			</div>
			
    </td>
    </tr>
</table> 
</form:form>


</body>
</html>