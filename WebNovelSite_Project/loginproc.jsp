<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.*,noblesite_Project.*" %>
    <jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr"/>
    
<%
	String loginid = request.getParameter("logid");
	String loginpw = request.getParameter("logpw");
	boolean loginCheck = memMgr.loginCheck(loginid,loginpw); 
%>
<%
   if(loginCheck == true){
	  ResisterBean resBean = memMgr.getMembers(loginid);
	  session.setAttribute("loginid",loginid);
	  response.sendRedirect("main.jsp");
	  session.setAttribute("loginnick",resBean.getResnick());
   }else{
      response.sendRedirect("loginerror.jsp");
   }
%>
