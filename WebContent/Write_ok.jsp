<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.*" %>

<%
request.setCharacterEncoding("utf-8");

String title = request.getParameter("title");
String memo = request.getParameter("memo");

PreparedStatement pstmt;

Date now = new Date();

SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");

String date = sf.format(now);

try{  
	UserDAO userDAO = new UserDAO();
	Connection conn = userDAO.GetConnection();	
	
	String sql = "INSERT INTO board ( b_name, b_title, b_content, b_date, b_attri) VALUES ( ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, (String)session.getAttribute("id"));
	pstmt.setString(2, title);
	pstmt.setString(3, memo);
	pstmt.setString(4, date);	
	pstmt.setString(5, "Normal");
	
	pstmt.execute();
	
	
	sql = String.format("Select * from board where b_name='%s' and b_title='%s' and b_date='%s'", (String)session.getAttribute("id")
			,title, date);
	
	
	pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.last())
	{
		int no = rs.getInt(1);		
%>
		<script language="javascript">
			location.href="View.jsp?num=<%=no%>";
		</script>
<%	
	}
	rs.close();
	pstmt.close();	
	conn.close();
	
}catch(SQLException e){
	e.printStackTrace();
}

%>

<script language="javascript">
	//location.href="index.jsp";
</script>