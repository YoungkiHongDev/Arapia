<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
</head>
<body bgcolor="#B2CCFF" topmargin="100">
	<table width="60%" align="center" bgcolor="#EAEAEA">
		<tr bordercolor="#FFFF99">  
		<td height="190">
		
			<form method="post" action="adminLoginProc.jsp">
				<table width="30%" border="0" align="center">
						<h2 align="center">Administrator Login</h3>
					<tr>
						<td><input type="text" name="admin_id" placeholder="Admin ID" style="width:100%; height:25px; font-size:15px;"></td>
					</tr>
					<tr>
						<td><input type="password" name="admin_passwd" placeholder="Admin PW" style="width:100%; height:25px; font-size:15px;"></td>
					</tr>
					<tr>
						<td>
						<input type="submit" value="login" style="font-size:25px; width:100%;">
						</td>
					</tr>
				</table>
			</form>
			
		</td>
		</tr>
	</table>
</body>
</html>