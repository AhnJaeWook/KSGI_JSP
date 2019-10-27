<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="user.UserDAO" %>
<%
	String usr_id = request.getParameter("usr_id");
	
%>    
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		html, body {height:100%;}		
	</style>
<title>아이디 중복확인</title>
</head>
<body>
	<script type="text/javascript">
		function idcheckdone()
		{
			opener.document.getElementById('idcheck').value="true";
			self.close();
		}
	</script>
	<%
		UserDAO userDAO = new UserDAO();
		Connection conn = userDAO.GetConnection();
		
		String SQL = "select * from user where usrid='" + usr_id + "'";
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		
		ResultSet rs = pstmt.executeQuery();	
		
		rs.last();
		
		if(rs.getRow() > 0)
		{
	%>
		<div style="margin-bottom:10px;color:red;text-align:center">이미 사용중인 아이디입니다.</div>
		<div style="margin:auto;width:42.67px"><input type="button" value="확인" onclick="self.close()"></div>
	<%
		}
		else if(rs.getRow() == 0)
		{		
		
	%>	
		<div style="margin-bottom:10px;color:blue;text-align:center">사용가능한 아이디입니다.</div>
		<div style="margin:auto;width:42.67px"><input type="button" value="확인" onclick="idcheckdone()"></div>		
	<%
		}	
		%>	
		
</body>
</html>