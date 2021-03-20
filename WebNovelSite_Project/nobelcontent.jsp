<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, noblesite_Project.*"%>
    <jsp:useBean id="contentmgr" class="noblesite_Project.NobelContentMgr"/>
    <% request.setCharacterEncoding("euc-kr");
	String contentid = request.getParameter("contentid");
	String titleid = request.getParameter("titleid");
 	 NobleContentBean nbcont = contentmgr.getView(contentid);
 	 Vector nbsize = contentmgr.ContentList(titleid);
 	 int size = nbsize.size();
 	 int click = nbcont.getClick() + 1;
 	 contentmgr.ClickCount(click, contentid);
 	 int totalclick = contentmgr.total_click(Integer.toString(nbcont.gettitleid()));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<%@include file="top.jsp" %>

<div class="nobelcontent">
	<img class="nbimg" src="img/cover1.PNG">
	<div class="nbtitletext">
		<span class="spansort1"><h3><strong><%=nbcont.getNobeltitle() %></strong></h3></span>
		<div>무료웹소설 > <b><%=nbcont.getGenre() %></b> </div>
		<div>글 <h4 class="inlinetext"><%=nbcont.getResnick() %></h4></div>
		<div>등록일 : <%=nbcont.getContentdate() %> </div><p><p>
		<div>연재 : <%=size%> 회</div>
		<div>조회수 : <%=totalclick %></div>
		<hr class="boardhdline" style="margin-top:20px;"><p>
		<div class="contentarea">
			<h5><b><%=nbcont.getNobeltitle() %></b></h5><p>
			<h4><b><%=nbcont.getcontenttitle() %></b></h4><p><p>
			
			<div class="dclickbox">
				<span class="spansort1" style="width:70px;margin-left:440px;margin-top:10px;">작성</span>
				<span class="spansort1 wdate"><%=nbcont.getContentdate() %></span>
				<span class="spansort1" style="width:80px;">조회수</span>
				<span class="spansort1 contentclick"><%=nbcont.getClick() %></span>
			</div>
			
			<div class="nbtextarea">
				<div class="nbtextcontent">
					<%=nbcont.getNobelcontent() %>
				</div>
			</div>
			
			<div class="replyarea">
				<input type="button" value="목록" style="margin-top:10px;" onclick="location.href='nobelboard.jsp?titleid=<%=nbcont.gettitleid()%>';">
				<hr class="introduceline"><p>
				<div class="titlesort" style="margin-left:0px;">
					<span class="spansort1 nbtitle"><b>제목</b></span>
					<span class="spansort1 nbdate"><b>날짜</b></span>
					<span class="spansort1 nbclick"><b>조회수</b></span>
				</div>
			</div>
			<ul class="nblist" style="margin-left:-50px;">
			 <% if(size > 0){
			 	for(int i=0;i<size;i++) {
			nbcont = (NobleContentBean)nbsize.get(i);%>
			<a href="nobelcontent.jsp?titleid=<%=Integer.parseInt(titleid)%>&contentid=<%=nbcont.getcontentid() %>">
				<li style="border-bottom:1px solid lightgray; width:910px;">
					<%if(Integer.parseInt(contentid) == nbcont.getcontentid()){ %>
					<span class="spansort1 nbnum" style="color:blue"><b><%=nbsize.size() - i %></b></span>
					<%} else{%>
					<span class="spansort1 nbnum"><%=nbsize.size() - i %></span>
					<%} %>
					<span class="spansort1 nbtitletext"><%=nbcont.getcontenttitle() %></span>
					<span class="spansort1 nbdate"><%=nbcont.getContentdate() %></span>
					<span class="spansort1 nbclick"><%=nbcont.getClick() %></span>
				</li>
			</a>
			<%} 
			}%>
			</ul>	
		</div>
	

	</div>
</div>

<%@include file="bottom.jsp" %>
</body>
</html>