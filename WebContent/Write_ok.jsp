<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("utf-8");

String url = "jdbc:mysql://localhost:3306/ex";
String id = "root";
String pw = "1234!";
String name = request.getParameter("name");
String title = request.getParameter("title");
String memo = request.getParameter("memo");
String writepw = request.getParameter("writepw");

PreparedStatement pstmt;

try{  
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = DriverManager.getConnection(url,id,pw);
	
	String sql = "INSERT INTO table1 ( c1, c2) VALUES ( ?, ?)";
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