<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr" />
<jsp:useBean id="resBean" class="noblesite_Project.ResisterBean" />
<jsp:setProperty name="resBean" property="*" />
<%
    boolean flag = memMgr.memberUpdate(resBean);
%>

<html>
<head>
<title>회원수정 처리</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<html>
<body bgcolor="#FFFFCC">
<br><br>
<center>
<%
if(flag){
	  out.println("<b>성공적으로 수정되었습니다..</b><p>");
	  out.println("<a href=index.jsp>처음으로</a>");
	}else{
	  out.println("<b>다시 입력하여 주십시오.</b><p>");
	  out.println("<a href=update.jsp>다시 입력</a>");
	}
%>
</center>
</body>
</html>