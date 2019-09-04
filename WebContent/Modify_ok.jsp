<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="user.UserDAO" %>

<%
request.setCharacterEncoding("utf-8");

String name = (String)session.getAttribute("id");
String title = request.getParameter("title");
String memo = request.getParameter("memo");
String writepw = request.getParameter("writepw");
String dbpw = null;
int num = Integer.parseInt(request.getParameter("num"));

PreparedStatement pstmt;

try{
	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();	

	Date now = new Date();

	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");

	String date = sf.format(now);			
	
	String sql = "UPDATE board SET b_name=?, b_title=?, b_content=?, b_date=? Where b_no=" + num;

	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, memo);
	pstmt.setString(4, date);
	
	pstmt.execute();
	
	pstmt.close();			
	conn.close();
				
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
<script language="javascript">
location.href="javascript:history.go(-2)";
</script>
