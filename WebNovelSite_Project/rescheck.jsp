<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr"/>
<% request.setCharacterEncoding("euc-kr");
   String resid = request.getParameter("resid");
   boolean chkid = memMgr.chkid(resid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b><%=resid %></b>
<%
	if(chkid == true)
		out.print("는 이미 존재 하는 아이디 입니다. 다시 입력하세요.<p>");
	else
		out.print("는 사용할수 있는 아이디 입니다.<p>");
%>
<a href="javascript:this.close();">닫기</a>
</body>
</html>