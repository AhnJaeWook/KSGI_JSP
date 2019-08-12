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
<title>아이디 중복확인</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		Connection conn = userDAO.GetConnection();
		
		String SQL = "select usrid from user where usrid='" + usr_id + "'";
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		
		ResultSet rs = pstmt.executeQuery();	
		
		rs.last();
		
		if(rs.getRow() > 0)
		{
	%>
		<div style="margin:auto;color:red">이미 사용중인 아이디입니다.</div>
	<%
		}
		else if(rs.getRow() == 0)
		{		
		
	%>	
		<div style="margin:auto;color:blue">사용가능한 아이디입니다.</div>
	<%
		}
	%>	
	
</body>
</html>