<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*,noblesite_Project.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#B2CCFF">

<%@ include file="adminTop.jsp" %>
<%
	String resid = request.getParameter("resid");
	ResisterBean resBean= memMgr.getMembers(resid);
%>
	 
	<table width="60%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table width="100%" align="center" bgcolor="#FFFF99" border="1">
		<form name="resForm" method="post" action="memberUpdateProc.jsp">
		<tr align="center" bgcolor="#996600"> 
		<td colspan="3"><font color="#FFFFFF"><b> 
		<%=resBean.getResid()%>
		회원님의 정보를 수정합니다.</b></font> </td>
		</tr>
		<tr> 
		<td>아이디</td>
		<td><%=resBean.getResid()%></td>
		</tr>
		<tr> 
		<td>비밀번호</td>
		<td><input type="text" name="respw" value="<%=resBean.getRespw()%>"></td>
		</tr>
		<tr> 
		<td>이름</td>
		<td><input type="text" name="resname" value="<%=resBean.getResname()%>"></td>
		</tr>
		<tr> 
		<td>닉네임</td>
		<td><input type="text" name="resnick" value="<%=resBean.getResnick()%>"></td>
		</tr>
		<tr> 
		<td>이메일</td>
		<td><input type="text" name="resemail" value="<%=resBean.getResphone()%>"></td>
		</tr>
		<tr> 
		<td>핸드폰</td>
		<td><input type="text" name="resphone" value="<%=resBean.getResemail()%>"></td>
		</tr>
		<tr> 
		<td>주소</td>
		<td><input type="text" name="resaddr" value="<%=resBean.getResaddr()%>"></td>
		</tr>
		<tr> 
		<td colspan="2" align="center"><input type="submit" value="수정완료"> 
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
		<input type="reset" value="다시쓰기"> 
		</td>
		</tr>
		<input type="hidden" name="resid" value="<%=resid%>">
		</form>
		</table>

	</td>
	</tr>
	</table>
	
	<%@ include file="adminBottom.jsp" %>

</body>
</html>