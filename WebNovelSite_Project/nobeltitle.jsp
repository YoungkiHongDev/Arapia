<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, noblesite_Project.*"%>
<jsp:useBean id="titlemgr" class="noblesite_Project.NobeltitleMgr"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무료웹소설</title>
</head>
<body>
<%@ include file="top.jsp" %>
<% Vector nbtitle = titlemgr.gettitleList(); 
%>

<div class="nobeltitle">
	<h1>무료웹소설</h1><p>
	<h4>정렬방식은 조회수가 가장 높은 순입니다.</h4><p>
	<hr class="nobletitle"><p><p>
	<ul class="freeranking">
		<li class="freerank">
			<span class = "spansort1 ranknum">순위</span>
			<span class = "spansort1 rankwriter">작가</span>
			<span class = "spansort1 ranktitle">제목</span>
			<span class = "spansort1 rankgenre">장르</span>
			<span class = "spansort1 rankclick">조회수</span>
		</li>
		<%if(nbtitle.size() > 0) {
			for(int i=0;i<nbtitle.size();i++) {
			NobleTitleBean titleBean = (NobleTitleBean)nbtitle.get(i);%>
		<li class="freerank">
			<a href="nobelboard.jsp?titleid=<%=titleBean.getTitleid()%>">
				<span class = "spansort1 ranknum"><%=i + 1%></span>
				<span class = "spansort1 rankwriter"><%=titleBean.getResnick() %></span>
				<span class = "spansort1 ranktitle"><%=titleBean.getNobeltitle() %></span>
				<span class = "spansort1 rankgenre"><%=titleBean.getNobelgenre() %></span>
				<span class = "spansort1 rankclick"><%=titleBean.getTotal_count() %></span>
			</a>
		</li>
		
		<%}
		}%>	
	</ul>
	<div>
		<%if(res_id != null) {%>
			<input type="button" value="글쓰기" onclick="location.href='nbtitleinput.jsp';">
		<%} %>
	</div>
</div>



<%@ include file="bottom.jsp"%>
</body>
</html>