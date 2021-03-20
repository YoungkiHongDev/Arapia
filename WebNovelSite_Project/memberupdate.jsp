<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*,noblesite_Project.*" %>
    <<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<%@ include file ="top.jsp" %>
<% ResisterBean resBean = memMgr.getMembers(res_id); %>

<div class="resistercontent">
<h2>회원정보 수정</h2>
<hr class="resline"><br>
	<div class = "resarea">
		<h3 style="margin-top:40px;margin-left:50px"><b>회원정보 입력</b></h3><br>
		<form name = "resupdateform" class="resform" method="post" action="memberupdateproc.jsp">
			<input name="respw" type="text" class="resinput" value="<%=resBean.getRespw()%>" placeholder="비밀번호"><br>
			<input name="respwchk" type="text" class="resinput" value="<%=resBean.getRespw()%>" placeholder="비밀번호확인"><br>
			<input name="resname" type="text" class="resinput" value="<%=resBean.getResname()%>" placeholder="이름"><br>
			<input name="resnick" type="text" class="resinput" value="<%=resBean.getResnick()%>" placeholder="닉네임"><br>
			<input name="resemail" type="text" class="resinput" value="<%=resBean.getResemail()%>" placeholder="이메일"><br>
			<input name="resphone" type="text" class="resinput" value="<%=resBean.getResphone()%>" placeholder="핸드폰번호"><br>
			<input name="resaddr"type="text" class="resinput" value="<%=resBean.getResaddr()%>" placeholder="주소"><br>
			<input type="button" class="resbutton1" value="정보수정" onclick="resupdatechk()">
			<input type="button" class="resbutton2" value="취소" onclick="location.href='main.jsp'">
			<input type="hidden" name="resid" value="<%=res_id%>">
		</form>
	</div>
</div>

<%@ include file ="bottom.jsp" %>
</body>
</html>