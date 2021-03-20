<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr" />
<%@ page import ="java.util.*,noblesite_Project.*" %>
<%
	String admin_id = request.getParameter("admin_id");
	String admin_passwd = request.getParameter("admin_passwd");
	boolean loginchk = memMgr.loginCheck(admin_id, admin_passwd);
	ResisterBean temp = memMgr.getMembers(admin_id);
	if((loginchk == true) && (temp.getResgrade().equals("admin")))
	{
		session.setAttribute("loginid", admin_id);
%>

   <script>
   location.href="index.jsp";
   </script>

<%}else{%>

   <script>
   alert("입력한 정보가 정확하지 않습니다.");
   location.href="adminLogin.jsp";
   </script>

<%}%>