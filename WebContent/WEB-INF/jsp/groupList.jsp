<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Group List Page</title>
<link href="<c:url value="/resources/css/stylesheets_groupList.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Group List Page</h1>
<p id="dtl">Social Media Web Application</p>
<!-- <p id="logn">group list</p> -->
<c:choose>
<c:when test = "${createInvalid != 'yes'}">
<form:form method="POST" action="/SocialNetworking/groupSetting" modelAttribute = "groupListModel">
<table id = "donea">
    <tr>
    <td>
    <input type = "hidden" name="groupList_email" value=${groupList_email}>
	<input type = "hidden" name="groupList_passwod" value=${groupList_passwod}>
	<input type = "hidden" name="process_group" value=${process_group}>
    <input type="submit" value=" New Group" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
</c:when>
<c:otherwise>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${errorOfGroupList }</td>
</c:otherwise>
</c:choose>
<form:form method="POST" action="/SocialNetworking/homePage" modelAttribute = "groupListModel">
<table id = "doneb">
    <tr>
    <td>
    <input type = "hidden" name="groupList_email" value=${groupList_email}>
	<input type = "hidden" name="groupList_passwod" value=${groupList_passwod}>
	<input type = "hidden" name="process_group" value=${process_group}>
    <input type="submit" value="Home Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<div id = "finn">
<c:forEach items="${groupList}" var="list">
<div id ="zx">
	<tr>	
	<c:forEach items = "${list.value }" var = "image">
	<div id="fs_fn"><tr id="bnta">Group Name: ${image.key} </tr></div>
		<c:forEach items = "${image.value}" var= "item">
			<div id = "pic"><img src = ${item.value} alt="No Picture" width="100" height="100" /></div>
			<c:choose>
			<c:when test = "${item.key == 'yes'}">
			
			<form:form method="POST" action="/SocialNetworking/groupSetting" modelAttribute = "groupListModel">
				<table id = "plate" >		
					<tr>
					<td>
					<input type = "hidden" name="groupList_email" value=${groupList_email}>
					<input type = "hidden" name="groupList_passwod" value=${groupList_passwod}>
					<input type = "hidden" name="process_group" value=${list.key}>
					<input type="submit" value="Edit" class="container btn color-1 material-design"/>
					</td>
					</tr>
				</table> 
			</form:form>
			</c:when>
			</c:choose>
			<form:form method="POST" action="/SocialNetworking/post" modelAttribute = "groupListModel">
				<table id = "plat">		
					<tr>
					<td>
					<input type = "hidden" name="groupList_email" value=${groupList_email}>
					<input type = "hidden" name="groupList_passwod" value=${groupList_passwod}>
					<input type = "hidden" name="process_group" value=${list.key}>
					<input type="submit" value="Post" class="container btn color-1 material-design"/>
					</td>
					</tr>
				</table> 
			</form:form>
			<c:choose>
			<c:when test = "${item.key == 'yes'}">
			<form:form method="POST" action="/SocialNetworking/groupList" modelAttribute = "groupListModel">
				<table id = "platd">
					<tr>
					<td>
					<input type = "hidden" name="groupList_email" value=${groupList_email}>
					<input type = "hidden" name="groupList_passwod" value=${groupList_passwod}>
					<input type = "hidden" name="process_group" value=${list.key}>
					<input type="submit" value="Delete" class="container btn color-1 material-design"/>
					</td>
					</tr>
				</table> 
			</form:form>
			</c:when>
			</c:choose>
		</c:forEach>
	</tr>
	</c:forEach>
	</div>
</c:forEach>
</div>


</body>
</html>