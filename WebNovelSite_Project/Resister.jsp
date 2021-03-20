<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<%@ include file ="top.jsp" %>


<div class="resistercontent">
<h2>아라피아 회원가입</h2>
<hr class="resline"><br>
	<div class = "resarea">
		<h3 style="margin-top:40px;margin-left:50px"><b>회원정보 입력</b></h3><br>
		<form name = "resinputform" class="resform" method="post" action="memberinsert.jsp">
			<input name="resid" type="text" class="resinput" placeholder="아이디 입력">
			<input type="button" value="id중복확인" class="idchkbtn" onclick="idCheck(this.form.resid.value)"><br>
			<input name="respw" type="password" class="resinput" placeholder="비밀번호입력"><br>
			<input name="respwchk" type="password" class="resinput" placeholder="비밀번호확인"><br>
			<input name="resname" type="text" class="resinput" placeholder="이름 입력"><br>
			<input name="resnick" type="text" class="resinput" placeholder="닉네임 입력"><br>
			<input name="resemail" type="text" class="resinput" placeholder="이메일 입력"><br>
			<input name="resphone" type="text" class="resinput" placeholder="핸드폰번호 입력"><br>
			<input name="resaddr"type="text" class="resinput" placeholder="주소 입력"><br>
			<input type="button" class="resbutton1" value="회원가입" onclick="resinfochk()">
			<input type="button" class="resbutton2" value="취소" onclick="location.href='main.jsp'">
		</form>
	</div>
</div>

<%@ include file ="bottom.jsp" %>
</body>
</html>