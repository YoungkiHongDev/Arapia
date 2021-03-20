<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("euc-kr");
%>

<jsp:useBean id = "resBean" class="noblesite_Project.ResisterBean"/>
<jsp:useBean id = "memMgr" class="noblesite_Project.MemberMgr"/>
<<jsp:setProperty name="resBean" property="*"/>
<%
	boolean inputchk = memMgr.inputRes(resBean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(inputchk == true)
	{
		out.println("<script>alert('계정이 등록 되었습니다.');location.href='login.jsp';</script>");
	}
	else
	{
		out.println("<script>alert('잘못된 입력입니다. 다시 시도하세요.');location.href='Resister.jsp';</script>");
	}
	
%>

</body>
</html>