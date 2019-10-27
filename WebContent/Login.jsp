 <%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.util.*, java.text.*" %>


<%
	String usrid = request.getParameter("usrid");
	String usrpw = request.getParameter("usrpw");

	String SQL = "SELECT * FROM user WHERE usrid='" + usrid + "'";

	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();
	
	PreparedStatement pstmt = conn.prepareStatement(SQL);	
    ResultSet rs = pstmt.executeQuery(); 	
%>

<%
	
    if(rs.next())
    {
    	String get_pw = rs.getString(2);	
    	
    	if(get_pw.equals(usrpw))    	
    	{
    		session.setAttribute("id",usrid); 
    		//session.setAttribute("name", )
%>
<script type="text/javascript">
	location.href="index.jsp";
</script>	
<%    		    		   	
    	}
    	else   		
    	{
%>
<script type="text/javascript">
	alert('아이디나 비밀번호가 틀렸습니다.');
	history.back(-1);
</script>
<%
    	}
    		
    }
%>

