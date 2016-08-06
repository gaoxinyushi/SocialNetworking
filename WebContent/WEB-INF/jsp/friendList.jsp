<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.util.Map"%>
<%@page import="java.lang.String"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Friend List Page</title>
<link href="<c:url value="/resources/css/stylesheets_friendList.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">

</head>
<body>
<h1>Friend List Page</h1>
<p id="dtl">Social Media Web Application</p>
<!-- <p id="logn">Your Friend</p> -->
<form:form method="POST" action="/SocialNetworking/homePage" modelAttribute = "friendListModel">
<table id = "psb">
    <tr>
    <td>
    <input type = "hidden" name="friendList_email" value=${friendList_email}>
	<input type = "hidden" name="friendList_password" value=${friendList_password}>
	<input type = "hidden" name="friendList_process_email" value=${friendList_process_email}>
	<input type = "hidden" name="friendList_process" value=${friendList_process}>
    <input type="submit" value="Home Page"  class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<c:forEach items="${friendList}" var="list">

	    <tr>

<!-- 	        <td>friend email</td>   -->
<%-- 	        <td>${list.key}</td> --%>
	        <c:forEach items="${list.value}" var="insideList">
	         	
	        <tr>
	
		        <c:forEach items="${insideList.value}" var = "deepList">
		        
		        	        <div id = "fin">
		        	        	<div id="zx">
		        <img src = ${deepList.key} alt="No Picture" width="100" height="100" />
		        
			        <c:forEach items="${deepList.value}" var = "finalList">
		       
		        		<tr>
		        		<p>${finalList.key}&nbsp;:&nbsp;&nbsp;&nbsp;${finalList.value}</p>
		        		<p></p>
		        		</tr>
		        		
		       		 </c:forEach>
		        </c:forEach>
		     </div>
	        </tr>
	        <c:choose>
	        	<c:when test = "${insideList.key == 'no'}">
	        	<div id = "rightup">
	        	<form:form method="POST" action="/SocialNetworking/friendList" modelAttribute = "friendListModel">
	        		<input type = "hidden" name="friendList_email" value=${friendList_email}>
					<input type = "hidden" name="friendList_password" value=${friendList_password}>
					<input type = "hidden" name="friendList_process_email" value=${list.key}>
					<input type = "hidden" name="friendList_process" value="add">
					<input type="submit" value="Add Friend"  class="container btn color-1 material-design"/>
	        	</form:form>
	        	</div>
	        	<div id = "right">
	        	<form:form method="POST" action="/SocialNetworking/friendList" modelAttribute = "friendListModel">
	        		<input type = "hidden" name="friendList_email" value=${friendList_email}>
					<input type = "hidden" name="friendList_password" value=${friendList_password}>
					<input type = "hidden" name="friendList_process_email" value=${list.key}>
					<input type = "hidden" name="friendList_process" value="delete">
					<input type="submit" value="Delete Request"  class="container btn color-1 material-design"/>
	        	</form:form>
	        	</div>
	        	</c:when>
	        	<c:otherwise>
	        	<div id = "rightdown">
	        	<form:form method="POST" action="/SocialNetworking/friendList" modelAttribute = "friendListModel">
	        		<input type = "hidden" name="friendList_email" value=${friendList_email}>
					<input type = "hidden" name="friendList_password" value=${friendList_password}>
					<input type = "hidden" name="friendList_process_email" value=${list.key}>
					<input type = "hidden" name="friendList_process" value="delete">
					<input type="submit" value="Delete Friend"  class="container btn color-1 material-design"/>
	        	</form:form>
	        		</div>
	        	</c:otherwise>
	        </c:choose>

	        </c:forEach>

	    </tr>
	    </div>
	</c:forEach>

</body>
</html>