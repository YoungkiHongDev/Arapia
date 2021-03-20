<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%
    	String nickname = (String)session.getAttribute("loginnick");
    %>
 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<%@include file="top.jsp"%>
<%if(res_id == null) {%>
<script>
alert("잘못된 접근입니다.");
location.href="login.jsp";
</script>
<%} %>
<div class="nobelcontent">
	<div class="inputarea">
		<form enctype="multipart/form-data" name="nobeltitle" method="post" action="nobelproc.jsp?flag=insert" style="margin:40px;">
			<input type="text" name="nobeltitle" class="inputstyle" placeholder="제목을 입력하세요"><p>
			<textarea rows="3" cols="97" name="introduce"></textarea><p>
			장르 : 
			<select name="genre">
				<option value="fantasy">판타지</option>
				<option value="muhyup">무협</option>
				<option value="fusionfantasy">퓨전판타지</option>
				<option value="gamefantasy">게임판타지</option>
				<option value="hyundaifantasy">현대판타지</option>
			</select><p>
			이미지 : <input type="file" name="nobelimg"><p>
			<input type="hidden" name="resid" value="<%=res_id%>">
			<input type="hidden" name="resnick" value="<%=nickname%>">
			<input type="submit" value="등록" style="margin-left:350px;">
			<input type="button" value="취소" onclick="location.href='nobeltitle.jsp';">
		</form>
	</div>
</div>

<%@ include file="bottom.jsp" %>
</body>
</html>