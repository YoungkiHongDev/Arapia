<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memMgr" class="noblesite_Project.MemberMgr" />
<jsp:useBean id="resBean" class="noblesite_Project.ResisterBean" />
<jsp:setProperty name="resBean" property="*" />
<%
    boolean flag = memMgr.memberUpdate(resBean);
%>

<%
if(flag){
%>
		<script>
		alert("성공적으로 수정하였습니다");
		location.href="index.jsp";
		</script>
<%
	}else{
%>
		<script>
		alert("수정도중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
	  }
%>
