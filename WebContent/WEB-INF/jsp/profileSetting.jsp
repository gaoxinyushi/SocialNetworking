<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile Setting Page</title>
<link href="<c:url value="/resources/css/stylesheets_profilesetting.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Profile Setting Page</h1>
<p id="dtl">Social Media Web Application</p>
<div id ="right">
<form:form method="POST" action="/SocialNetworking/homePage" modelAttribute = "profileSettingModel">
<table >
                <tr><td><input type = "hidden" name="profileSetting_firstName" type="textbox" value = ${profileSetting_firstName}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_lastName" type="textbox" value = ${profileSetting_lastName}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_email" value = ${profileSetting_email}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_password" value = ${profileSetting_password}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_birthday" type="textbox" value = ${profileSetting_birthday}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_status" type="textbox" value = ${profileSetting_status}></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Home Page" class="container btn color-1 material-design"></td></tr>
            </table>  
            <div style="color:red">${errorOfregister}</div>
</form:form>

<%-- <form:form method="POST" action="/SocialNetworking/loginPage" modelAttribute = "profileSettingModel" enctype="multipart/form-data"> --%>
<!-- <table id = "db"> -->
                
<!--                 <tr><td><input type = "hidden" name="profileSetting_email" value = ${profileSetting_email}></td></tr> -->
<!--                 <tr><td><input type = "hidden" name="profileSetting_password" value = ${profileSetting_password}></td></tr> -->
<!--                <tr><td colspan="2" align="right"><input type="submit" value="delete" class="container btn color-1 material-design"></td></tr> -->
<!--             </table>   -->
<%-- </form:form> --%>

<form:form method="POST" action="/SocialNetworking/profile" modelAttribute = "profileSettingModel">
<table id="ppb">
                <tr><td><input type = "hidden" name="profileSetting_firstName" type="textbox" value = ${profileSetting_firstName}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_lastName" type="textbox" value = ${profileSetting_lastName}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_email" value = ${profileSetting_email}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_password" value = ${profileSetting_password}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_birthday" type="textbox" value = ${profileSetting_birthday}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_status" type="textbox" value = ${profileSetting_status}></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Profile Page" class="container btn color-1 material-design"></td></tr>
            </table>  
            <div style="color:red">${errorOfregister}</div>
</form:form>
</div>
<div id = "divide">
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>
</div>
<div id ="right2">
<div id = "zx">
<p>update profile</p>
<form:form method="POST" action="/SocialNetworking/profile" modelAttribute = "profileSettingModel" enctype="multipart/form-data">
<table >
                <tr><td>First Name: </td><td><input name="profileSetting_firstName" type="textbox" value = ${profileSetting_firstName}></td></tr>
                <tr><td>Last Name: </td><td><input name="profileSetting_lastName" type="textbox" value = ${profileSetting_lastName}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_email" value = ${profileSetting_email}></td></tr>
                <tr><td><input type = "hidden" name="profileSetting_password" value = ${profileSetting_password}></td></tr>
                <tr><td>Date of Birth: </td><td><input name="profileSetting_birthday" type="textbox" value = ${profileSetting_birthday}></td></tr>
                <tr><td>Status: </td><td><input name="profileSetting_status" type="textbox" value = ${profileSetting_status}></td></tr>
                <tr><td>Picture: </td><td><input name="profileSetting_picture" type="file" value = ${profileSetting_picture}></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Update" class="container btn color-1 material-design"></td></tr>
            </table>  
</form:form>
</div>
</div>


</body>
</html>