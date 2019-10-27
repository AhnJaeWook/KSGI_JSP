 <%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
    
<%

int c_no = Integer.parseInt(request.getParameter("c_no"));
int num = Integer.parseInt(request.getParameter("num"));

try{
	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();
	
	Statement stmt = conn.createStatement(); 
	String sql = "SELECT c_name FROM comment WHERE c_no=" + c_no; 
	ResultSet rs = stmt.executeQuery(sql); 
	
	if(rs.next()){
		if(rs.getString(1).equals((String)session.getAttribute("id")))
		{		
			sql = "DELETE FROM comment WHERE c_no=" + c_no;
			stmt.executeUpdate(sql);	 		
			
		}
		else
		{
			%>
				<script language="javascript">
					alert('권한이 없습니다.');
					location.href="View.jsp?num=<%=num %>";
				</script>				
			<%
		}
	}	
	
	
	rs.close();
	stmt.close();
	conn.close();
	
}catch(Exception e){
	e.printStackTrace();
}
%>  

<script language="javascript">
	alert('성공적으로 삭제되었습니다.')
	location.href="View.jsp?num=<%=num %>";
</script>