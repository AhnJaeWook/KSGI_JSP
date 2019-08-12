<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="user.UserDAO" %>

<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String title = request.getParameter("title");
String memo = request.getParameter("memo");
String writepw = request.getParameter("writepw");

PreparedStatement pstmt;

try{  
	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();	
	
	String sql = "INSERT INTO table1 ( b_, c2) VALUES ( ?, ?)";
	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, name);
	pstmt.setString(2, title);
	//pstmt.setString(3, memo);
	//pstmt.setString(4, writepw);

	pstmt.execute();
	
	pstmt.close();	
	conn.close();
	
}catch(SQLException e){
	e.printStackTrace();
}

%>

<script language="javascript">
location.href="index.jsp";
</script>