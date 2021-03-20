<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, noblesite_Project.*"%>
    <% request.setCharacterEncoding("utf-8");%>
    <jsp:useBean id="contentmgr" class="noblesite_Project.NovelContentMgr"/>
    <jsp:useBean id="contentBean" class="noblesite_Project.NobleContentBean"/>
    <jsp:setProperty name="contentBean" property="*"/>
 

      
     <% String flag=request.getParameter("flag");
     	
    	boolean inputchk=false;
    	if(flag.equals("insert"))
    	{
    		inputchk=contentmgr.insertContent(contentBean);
    	}
    	else if(flag.equals("update"))
    	{
    		response.sendRedirect("nobeltitle.jsp");
    	}
    	else if(flag.equals("delete"))
    	{
    		response.sendRedirect("nobeltitle.jsp");
    	}
    	else
    	{
    		response.sendRedirect("nobelmgr.jsp");
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(inputchk) {%>
<script>
alert("정상 처리 되었습니다.");
location.href="nobelboard.jsp?titleid=<%=contentBean.gettitleid()%>";
</script>
<%}else {%>
<script>
alert("에러가 발생했습니다. 다시 시도하세요");
location.href="history.go(-1)";
</script>
<%} %>
</body>
</html>