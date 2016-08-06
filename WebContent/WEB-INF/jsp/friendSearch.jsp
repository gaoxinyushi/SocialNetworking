<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Friend Search Page</title>
<link href="<c:url value="/resources/css/stylesheets_friendSearch.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/button_stylesheets.css" />" rel="stylesheet">
</head>
<body>
<h1>Friend Search Page</h1>
<!-- <p id="dtl">Social Media Web Application</p> -->
<!-- <p id="srch_ttl">search friend</p> -->
<form:form method="POST" action="/SocialNetworking/homePage" modelAttribute = "friendSearchModel">
<table id="hm_bttn">
    <tr>
    <td>
    <input type = "hidden" name="friendSearchModel_email" value=${friendSearchModel_email}>
	<input type = "hidden" name="friendSearchModel_password" value=${friendSearchModel_password}>
	<input type = "hidden" name="friendSearchModel_search_email" value=${friendSearchModel_search_email}>
	<input type = "hidden" name="friendSearchModel_search_yes" value=${friendSearchModel_search_yes}>
    <input type="submit" value="Home Page"  class="container btn color-1 material-design"/>
    </td>
    </tr>
</table> 
</form:form>
<HR style="FILTER: alpha(opacity=100,finishopacity=4,style=3)" width="90%" color=#000000 SIZE=3>

<form:form method="POST" action="/SocialNetworking/friendSearch" modelAttribute = "friendSearchModel">
<!-- <div id="cont"> -->
<table id="lgn_fs">
    <tr>
    <td>
    <input type = "hidden" name="friendSearchModel_email" value=${friendSearchModel_email}>
	<input type = "hidden" name="friendSearchModel_password" value=${friendSearchModel_password}>
	<input type = "hidden" name="friendSearchModel_search_yes" value="no">
	<tr><td>Friend Email: </td><td><input name="friendSearchModel_search_email" type="textbox" value = ${friendSearchModel_search_email}></td></tr>
   <div id = "search">
   <input id="srch_bttn" type="submit" value="Search" class="container btn color-1 material-design"/>
   </div>
    <div id="srcherr" style="color:red">${errorOfSearch}</div>
    </td>
    </tr>
</table> 
<!-- </div> -->
</form:form>
<div id = "ptk">
<c:choose>
<c:when test = "${friendSearchModel_search_email != null && friendSearchModel_search_yes == 'yes'}"> 
<div id="zx">
<table id = "movee">
<tr><td>First Name: </td><td><label>${friendSearch_firstName}</label></td></tr>
<tr><td>Last Name: </td><td><label>${friendSearch_lastName}</label></td></tr>
<tr><td>Date of Birth: </td><td><label>${friendSearch_birthday}</label></td></tr>
<tr><td>Status: </td><td><label>${friendSearch_status}</label></td></tr>
</table>
<div id = "ptd"><img class="pict_fs" src = ${friendSearch_picture} alt="No picture" width="100" height="100" / ></div></table> 
<form:form method="POST" action="/SocialNetworking/friendSearch" modelAttribute = "friendSearchModel">
<table id="lgng">
				<input type = "hidden" name="friendSearchModel_email" value=${friendSearchModel_email}>
				<input type = "hidden" name="friendSearchModel_password" value=${friendSearchModel_password}>               
                <input type = "hidden" name="friendSearchModel_search_email" value = ${friendSearchModel_search_email}>              
                <input type = "hidden" name="friendSearchModel_search_yes" value= ${friendSearchModel_search_yes}>    	
                <tr><td colspan="2" align="right"><input type="submit" value="Add Friend" class="container btn color-1 material-design"></td></tr>
            </table> </div>
</form:form>



</c:when>
</c:choose>
</div>

</body>
</html>