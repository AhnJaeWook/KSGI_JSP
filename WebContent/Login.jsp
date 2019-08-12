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
%>
	<form name="form" method="post" action="index.jsp">
		<input name="msg" type="hidden" value="<%=usrid%>">
	</form>
<%
    	}
    	else
    	{    		
%>

	<form name="form" method="post" action="l_Login.jsp">
		<input name="msg" type="hidden" value="no">
	</form>	
	
<%
    	}	
    }
%>

<script type="text/javascript">
	document.form.submit();
</script>
