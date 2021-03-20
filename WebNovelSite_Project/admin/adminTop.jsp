<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String admin_id = (String)session.getAttribute("loginid");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		ul {
			background-color: #FFDAB9;
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			margin-left:20%;
			margin-right:20%;
		}
		li {
			float: left;
			border-right: solid 1px white;
		}
		li:last-child { border-right: none; }
		li a {
			display: block;
			background-color: #FFDAB9;
			color: #000000;
			padding: 10px;
			text-decoration: none;
			text-align: center;
			font-weight: bold;
		}
		li a.current {
			background-color: #FF6347;
			color: white;
		}
		li a:hover:not(.current) {
			background-color: #CD853F;
			color: white;
		}
	</style>
</head>
<body>
<%if(admin_id == null) {%>
<script>
alert("로그인 해주세요");
location.href="adminLogin.jsp";
</script>
<%}%>
<body bgcolor="#B2CCFF">
	<ul>
		<li><a href="../main.jsp">Main Home</a></li>
		<li><a href="index.jsp">Admin Home</a></li>
		<li><a href="adminLogout.jsp">Admin Logout</a></li>
		<li><a href="memberMgr.jsp">Member Manage</a></li>
		<li><a href="memberRelease.jsp">Member Release</a></li>
	</ul>
</body>
</html>