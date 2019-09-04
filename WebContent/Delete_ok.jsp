 <%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
    
<%
int num = Integer.parseInt(request.getParameter("num"));

try{

	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();
	
	Statement stmt = conn.createStatement(); 

	String sql = "DELETE FROM board WHERE b_no=" + num;
	stmt.executeUpdate(sql);	
	
	sql = "DELETE FROM comment WHERE c_memonum=" + num;
	stmt.executeUpdate(sql);
	
	conn.close();
	stmt.close();
	
}catch(Exception e){
	e.printStackTrace();
}
%>  

<script language="javascript">
	location.href="board.jsp";
</script>