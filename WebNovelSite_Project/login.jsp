<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script language="JavaScript" src="script.js"></script>
<title>Insert title here</title>
</head>
<body>

<div id="container">
	<div class="loginlogo">
		<a href="main.jsp"><img src="img/Logo.PNG" style="width:200px;height:70px"></a><br>
	</div>
	
		<h1 class="loginfont">LOGIN</h1>
		
	<div class="logcontent">
		<div class="loginarea">
			<form class="loginform" name="logform" method="post" action="loginproc.jsp">
				<input class="loginid" type="text" name="logid" placeholder="아이디"><br>
				<input class="loginpw" type="password" name="logpw" placeholder="비밀번호">
				<input class="loginbtn" type="button" value="로그인" onclick="logincheck()">
			</form>
			<a href="Resister.jsp" class="restxt">회원가입</a>
		</div>
	</div>

<jsp:include page="bottom.jsp"/>
</div>
</body>
</html>