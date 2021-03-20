<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr" />
<jsp:useBean id="resBean" class="noblesite_Project.ResisterBean" />
<jsp:setProperty name="resBean" property="*" />
<%
	boolean updatechk = memMgr.memberUpdate(resBean);
%>

<% if(updatechk == true){ %>
<script>
alert("성공적으로 수정되었습니다.");
location.href="main.jsp";
</script>
<%} else { %>
<script>
alert("업데이트에 실패했습니다.");
history.go(-1);
</script>
<%}%>

