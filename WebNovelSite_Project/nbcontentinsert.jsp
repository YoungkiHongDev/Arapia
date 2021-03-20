><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@ page import="java.util.*, noblesite_Project.*"%>
    <jsp:useBean id="titlemgr" class="noblesite_Project.NobeltitleMgr"/>
    <% 
    	String titleid = request.getParameter("titleid");
       NobleTitleBean nbtitle = titlemgr.getTitle(titleid);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="top.jsp" %>
<%if(res_id == null) {%>
<script>
alert("잘못된 접근입니다.");
location.href="login.jsp";
</script>
<%} %>
<% Date today = new Date(); 
SimpleDateFormat date = new SimpleDateFormat("yyyy.MM.dd"); 
   String sdate = date.format(today);%>
<div class="nobelcontent">

	<div class="nbcontinput">
			<div style="margin : 30px;">
				<form name="nbinput" action="nbqmgr.jsp?flag=insert" method="post">
					
					<h4><b>제목 : <%=nbtitle.getNobeltitle()%></b></h4>
					<h4><b>장르 : <%=nbtitle.getNobelgenre()%></b></h4><p/>
					<input name="contenttitle" style="width:720px;height:30px;font-size:16px; padding:10px;" type="text" placeholder="제목을 입력하세요"><p>
					<textarea name="nobelcontent"rows="20" cols="97" style="padding:10px;" placeholder="내용을 입력하세요"></textarea><p>
					<input type="hidden" name="resnick" value="<%=nbtitle.getResnick()%>">
					<input type="hidden" name="nobeltitle" value="<%=nbtitle.getNobeltitle()%>">
					<input type="hidden" name="genre" value="<%=nbtitle.getNobelgenre()%>">
					<input type="hidden" name="titleid" value="<%=nbtitle.getTitleid()%>">
					<input type="hidden" name="contentdate" value="<%=sdate%>">
					<input style="margin-top:20px;margin-left:350px" type="submit" value="등록">
					<input type="button" value="취소" onclick="location.href='nobelboard.jsp?titleid=<%=nbtitle.getTitleid()%>';">		
				</form>
			</div>
		</div>
	</div>
<%@ include file="bottom.jsp" %>
</body>
</html>