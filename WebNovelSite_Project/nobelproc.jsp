<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("euc-kr"); %>
    <jsp:useBean id="titleBean" class="noblesite_Project.NobeltitleMgr"/>
   
    <% String flag=request.getParameter("flag");
    	boolean inputchk=false;
    	if(flag.equals("insert"))
    	{
    		inputchk=titleBean.insertTitle(request);
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
<%if(inputchk) {%>
<script>
alert("정상적으로 처리되었습니다.");
location.href="nobeltitle.jsp";
</script>
<%}else{ %>
<script>
alert("입력에 실패했습니다. 다시 시도해주세요.");
location.href="history.go(-1)";
</script>
<%} %>
</body>
</html>