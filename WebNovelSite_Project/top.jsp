<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String res_id = (String)session.getAttribute("loginid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>즐거운 소설세상 아라피아</title>
</head>
<body>
<div id="container">
<header id="header">

	<div class="logo">
		<a href="main.jsp"><img src="img\Logo.PNG" class="img-rounded" alt="Arapia" width="150" height="50"></a>
	</div>

	<form name="mainsearch" method="get" action="#">
		<div class="search">
		<select name="s_search" width="150" height="60" style="margin-left:-350px; margin-top:18px;">
		  <option value="title" selected>작품명</option>
		  <option value="writer">작가명</option>
		</select>
		    <input type="text" size="35" placeholder="검색어 입력" width="150" height="50">
		    <input type="submit" value="검색" width="150" height="60">
		</div>
	</form>
	
	<div class="topbtn">
	<%if(res_id == null) {%>
		<input type="button" value="로그인" onclick="location.href='login.jsp'">
	<%} else{%>
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<%}%>
	</div>

	
	

	
	<div class="nav">
	   <div class="navitem"><a href="nobeltitle.jsp">무료웹소설</a></div>
	   <div class="navitem"><a href="#">베스트</a></div>
	   <div class="navitem"><a href="#">완결작품</a></div>
	   <div class="navitem"><a href="#">고객센터</a></div>
	   <div class="navitem"><a href="admin/adminLogin.jsp">관리자 홈</a></div>
	</div>
	
</header>

