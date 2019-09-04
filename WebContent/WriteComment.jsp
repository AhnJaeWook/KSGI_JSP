<%@page import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%
request.setCharacterEncoding("utf-8");

int num = Integer.parseInt(request.getParameter("num"));
String comment = request.getParameter("comment");
String name = (String) session.getAttribute("id");
String sql = "INSERT INTO comment (c_name,c_comment,c_memonum,c_date) VALUES (?,?,?,?)" ;

Date now = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
String date = sf.format(now);

PreparedStatement pstmt;

try{
	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();
	
	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, name);
	pstmt.setString(2, comment);
	pstmt.setInt(3, num);
	pstmt.setString(4, date);

	pstmt.execute();
	
	pstmt.close();	
	conn.close();
	
}catch(SQLException e){
	e.printStackTrace();
}
%>    

<script language="javascript">
	location.href="View.jsp?num=<%=num %>";
</script>
