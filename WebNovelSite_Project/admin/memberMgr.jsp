<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, noblesite_Project.*"%>
<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr" />

<html>
<head>
<title>Membership</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#B2CCFF" topmargin="100">

<%@ include file="adminTop.jsp" %>

<%Vector vResult= memMgr.getMemberList();%>

<table width="60%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table width="100%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">회원ID</font></td>
		<td align="center"><font color="#FFFFFF">비밀번호</font></td>
		<td align="center"><font color="#FFFFFF">이름</font></td>
		<td align="center"><font color="#FFFFFF">닉네임</font></td> 
		<td align="center"><font color="#FFFFFF">이메일</font></td>
		<td align="center"><font color="#FFFFFF">핸드폰 번호</font></td>
		<td align="center"><font color="#FFFFFF">주소</font></td>
		<td align="center"><font color="#FFFFFF">수정</font></td>
		</tr>
		<%
		for(int i=0; i<vResult.size(); i++){
		ResisterBean resBean = (ResisterBean)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=resBean.getResid()%></a></td>
		<td align="center"><%=resBean.getRespw()%></td>
		<td align="center"><%=resBean.getResname()%></td>
		<td align="center"><%=resBean.getResnick()%></td>
		<td align="center"><%=resBean.getResphone()%></td>
		<td align="center"><%=resBean.getResemail()%></td>
		<td align="center"><%=resBean.getResaddr()%></td>
		<td align="center"><a href="javascript:Update('<%=resBean.getResid()%>')">수정하기</a></td>
		<%}%>
		</table>
		
	</td>
	</tr>
</table>

<%@ include file="adminBottom.jsp" %>
<form name="update" method="post" action="memberUpdate.jsp">
	<input type=hidden name="resid">
	</form>
	
</body>
</html>