<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <<jsp:useBean id="nbtitle" class="noblesite_Project.NoveltitleMgr"/>
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


<div class="nobelcontent">
	<div class="inputarea">
		<form name="nobeltitle" enctype="multipart/form-data" method="post" action="nobelproc.jsp?flag=insert" style="margin:40px;">
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
			<input type="hidden" value="<%=res_id%>">
			<input type="hidden" value="<%=nickname%>">
			<input type="submit" value="등록" style="margin-left:350px;">
			<input type="button" value="취소" onclick="location.href='nobeltitle.jsp';">
		</form>
	</div>
</div>

<%@ include file="bottom.jsp" %>
</body>
</html>