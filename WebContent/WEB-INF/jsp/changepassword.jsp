<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change Password</title>
<link href="<c:url value="/resources/css/stylesheets_changepassword.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Reset Password Page</h1>
<p id="dtl">Social Media Web Application</p>
<p id="logn">Reset Password</p>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>

<form:form method="POST" action="/SocialNetworking/profile" modelAttribute = "registerModel">
<table id="lgn">
    <tr>
    <td>
    <tr><td>new Password: </td><td><input name="register_password" type="password"></td></tr>
    <input type = "hidden" name="register_email" value=${register_email}>
        <input type = "hidden" name="firstName" value=${firstName}>
            <input type = "hidden" name="lastName" value=${lastName}>
                <input type = "hidden" name="birthday" value=${birthday}>
                    <input type = "hidden" name="status" value=${status}>
             
                    
    
    <div id = "final"><input type="submit" value="change password" class="container btn color-1 material-design"/>
    </div>
    <div id="cherr" style="color:red">${errorOfinsert}</div>
     <div id="cherr2" style="color:red">${errorOfinsert2}</div>
    </td>
    </tr>
</table> 
</form:form>


</body>
</html>