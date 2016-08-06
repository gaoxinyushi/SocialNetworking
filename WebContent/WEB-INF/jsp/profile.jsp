<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile Page</title>
<link href="<c:url value="/resources/css/stylesheets_profile.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Profile Page</h1>
<p id="dtl">Social Media Web Application</p>
<div id ="right">
<form:form method="POST" action="/SocialNetworking/homePage" modelAttribute = "profileModel">
<table id = "hbb">
    <tr>
    <td>
    <input type = "hidden" name="profile_email" value=${profile_email}>
	<input type = "hidden" name="profile_password" value=${profile_password}>
    <input type="submit" value="home Page" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
<form:form method="POST" action="/SocialNetworking/profileSetting" modelAttribute = "profileModel">
<table id = "psb">
    <tr>
    <td>
    <input type = "hidden" name="profile_email" value=${profile_email}>
	<input type = "hidden" name="profile_password" value=${profile_password}>
    <input type="submit" value="Profile Setting" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>

<form:form method="POST" action="/SocialNetworking/resetpassword" modelAttribute = "profileModel">
<table id = "rpb">
    <tr>
    <td>
    <input type = "hidden" name="profile_email" value=${profile_email}>
	<input type = "hidden" name="profile_password" value=${profile_password}>
    <input type="submit" value="resetpassword" class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
</div>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<div id ="right">
<div id = pp >
<div id = "zx">
<img src = ${picture} alt="No Picture" width="100" height="100" / >
<tr >
        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profile_email:  </td>
        <td >${profile_email}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </td>
    </tr>
   <tr>
        <td>FirstName: </td>
        <td>${firstName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </td>
    </tr>
    <tr>
        <td>LastName:</td>
        <td>${lastName}&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
    </tr>
     <tr>
        <td>Birthday: </td>
        <td>${birthday}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
     <tr >
        <td>Status:   </td>
        <td>${status}</td>
    </tr>
<%-- <div>${profile_email} </div> --%>
<%-- <div>${firstName}</div> --%>
<%-- <div>${lastName}</div> --%>
<%-- <div>${birthday} </div> --%>
<%-- <div>${status}</div> --%>

</div>
    </div> 
     </div> 

</body>
</html>