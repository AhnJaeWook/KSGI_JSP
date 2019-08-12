<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="user.UserDAO" %>    
<%
	String name = request.getParameter("name");
	String usr_id = request.getParameter("usr_id");
	String usr_pw = request.getParameter("usr_pw");
	String email = request.getParameter("email");
	String adr_email = request.getParameter("adr_email");
	String dremail = request.getParameter("dremail");
	PreparedStatement pstmt;
	
	try
	{
	
	UserDAO userdao = new UserDAO();	
	Connection conn = userdao.GetConnection();
	
	String SQL = "insert into user (usrid,usrpw,email) values(?,?,?)";
	pstmt = conn.prepareStatement(SQL);
	
	pstmt.setString(1, usr_id);
	pstmt.setString(2, usr_pw);
	
	if(adr_email != "direct")
	{
		pstmt.setString(3, String.format("%s@%s", email, adr_email));
	}
	else
	{
		pstmt.setString(3, String.format("%s@%s", email, dremail));
	}
	
	pstmt.execute();
	pstmt.close();
	
	}catch(SQLException e){
		
	}
	
%>