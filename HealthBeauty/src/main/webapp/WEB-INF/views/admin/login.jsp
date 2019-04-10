<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Panelo - Free Admin Template</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/style.css" />
</head>
<body>
<div id="loginpanelwrap">
  	
	<div class="loginheader">
    <div class="logintitle"><a href="#">网上银行后台管理系统</a></div>
    </div>

     
    <div class="loginform">
        <form action="login">
        <div class="loginform_row">
        <label>User:</label>
        <input type="text" class="loginform_input" name="name"  id="password"/>
        </div>
        <div class="loginform_row">
        <label>Password:</label>
        <input type="password" class="loginform_input" name="password" id="password"/>
        </div>
        <div class="loginform_row">
        <input type="submit" class="loginform_submit" value="Login" />
        </div> 
        </form>
        <div class="clear"></div>
    </div>
 

</div>

    	
</body>
</html>