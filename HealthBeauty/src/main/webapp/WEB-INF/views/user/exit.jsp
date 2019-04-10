<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>ϵͳ��Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<link rel="stylesheet" href="assets/css/pintuer.css">
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

.error-container {
	background: #fff;
	border: 1px solid #0ae;
	text-align: center;
	width: 450px;
	margin: 250px auto;
	font-family: Microsoft Yahei;
	padding-bottom: 30px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.error-container h1 {
	font-size: 16px;
	padding: 12px 0;
	background: #0ae;
	color: #fff;
}

.errorcon {
	padding: 35px 0;
	text-align: center;
	color: #0ae;
	font-size: 18px;
}

.errorcon i {
	display: block;
	margin: 12px auto;
	font-size: 30px;
}

.errorcon span {
	color: red;
}

h4 {
	font-size: 14px;
	color: #666;
}

a {
	color: #0ae;
}
</style>
</head>
<body class="no-skin" onload="delayClose()">
	<div class="error-container">
		<h1>ϵͳ-��Ϣ��ʾ</h1>
		<div class="errorcon">
			<i class="icon-smile-o"></i>�˳��ɹ� <span style="display:none;"><i
				class="icon-frown-o"></i>����ʧ��!</span>

		</div>
		<h4 class="smaller">ҳ�潫�Զ��ر�</h4>

	</div>

	<script type="text/javascript">
		function delayClose(){
			setTimeout('closeWebPage()', 2000);
		}
		function closeWebPage() {
			if (navigator.userAgent.indexOf("MSIE") > 0) {//close IE  
				if (navigator.userAgent.indexOf("MSIE 6.0") > 0) {
					window.opener = null;
					window.close();
				} else {
					window.open('', '_top');
					window.top.close();
				}
			} else if (navigator.userAgent.indexOf("Firefox") > 0) {//close firefox  
				window.location.href = 'about:blank ';
			} else {//close chrome;It is effective when it is only one.  
				window.opener = null;
				window.open('', '_self');
				window.close();
			}
		}
	</script>
</body>
</html>
