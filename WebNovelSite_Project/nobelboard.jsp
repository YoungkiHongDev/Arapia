<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, noblesite_Project.*"%>
<jsp:useBean id="titlemgr" class="noblesite_Project.NobeltitleMgr"/>
<jsp:useBean id="contentmgr" class="noblesite_Project.NobelContentMgr"/>
<% request.setCharacterEncoding("euc-kr");
	String titleid = request.getParameter("titleid");
   NobleTitleBean nbtitle = titlemgr.getTitle(titleid);
   int totalclick = contentmgr.total_click(titleid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%@ include file = "top.jsp" %>
<% Vector nblist = contentmgr.ContentList(titleid);%>
<div class="nbboard">
	<img class="nbimg" src="<%=nbtitle.getNobelimg()%>">
	
	<div class="nbtitletext">
		<span class="spansort1"><h3><strong><%=nbtitle.getNobeltitle() %></strong></h3></span>
		<div>무료웹소설 > <b><%=nbtitle.getNobelgenre() %></b> </div>
		<div>글 <h4 class="inlinetext"><%=nbtitle.getResnick() %></h4></div>
		<div>작품등록일 : <%=nbtitle.getNobeldate() %> </div><p><p>
		<span>연재수 : <%=nblist.size() %> 회</span>&nbsp;&nbsp;&nbsp;&nbsp;
		<span>조회수 : <%=totalclick %> </span>
		<hr class="boardhdline"><p>
	
		<div class="introduce">
			<b>소개</b><p><p><p>
			<%=nbtitle.getIntroduce() %><p><p><p>
		<hr class="introduceline">
		</div>
		
		<div class="titlesort">
			<span class="spansort1 nbtitle"><b>제목</b></span>
			<span class="spansort1 nbdate"><b>날짜</b></span>
			<span class="spansort1 nbclick"><b>조회수</b></span>
		</div>
		<p><p><p><p><p><p>
		<% 
			if(nblist.size() == 0)
			{%>
			<h4 style="margin-left:200px;">등록된 소설이 없습니다.</h4>
			<%} else{ %>
		<ul class="nblist">
		 <% for(int i=0;i<nblist.size();i++) {
			NobleContentBean nbcont = (NobleContentBean)nblist.get(i);%>
			<a href="nobelcontent.jsp?titleid=<%=titleid %>&contentid=<%=nbcont.getcontentid() %>">
			
				<li style="border-bottom:1px solid lightgray; width:910px;">
					<span class="spansort1 nbnum"><%=nblist.size() - i %></span>
					<span class="spansort1 nbtitletext"><%=nbcont.getcontenttitle() %></span>
					<span class="spansort1 nbdate"><%=nbcont.getContentdate() %></span>
					<span class="spansort1 nbclick"><%=nbcont.getClick() %></span>
				</li>
			</a>
			<%} 
			} %>
		</ul>
		
		</div>
		<%if((res_id != null) && (res_id.equals(nbtitle.getResid()))) {%>
		<div style="margin-left:840px;margin-top:20px;">
			<input type="button" value="글쓰기" style="width:70px;height:35px;background:lightblue;border:1px solid lightblue;" onclick="location.href='nbcontentinsert.jsp?titleid=<%=nbtitle.getTitleid() %>';">
		</div>
		<%} %>
</div>

<%@ include file = "bottom.jsp" %>
</body>
</html>