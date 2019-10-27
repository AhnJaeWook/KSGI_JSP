<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="user.UserDAO" %>    
    
<!DOCTYPE html>
<html>
<head>
<title>111</title>
</head>	
<body>
	<div id="header">
		<a href="index.jsp"><div id="logo_">로고</div></a>
		<div id="topmenu" >
			<div id="tm_left"><a id="textset" href="News.jsp">VR 뉴스</a></div>
			<div id="tm_center"><a id="textset" href="board.jsp">커뮤니티</a></div>
			<div id="tm_right"><a id="textset" href="VR_Info.jsp">VR 기기 정보</a></div>			
		</div>		
		<div id="ur_box">
		<%
			UserDAO userDAO = new UserDAO();
			Connection conn = userDAO.GetConnection();
			String msg = (String)session.getAttribute("id");
			
			if(msg != null)
			{			
		%>
			<div>
				<div style="float:left"><%=msg %>님</div>
				<div style="float:left">|</div>			
				<a href="Logout.jsp"><div style="float:right">로그아웃</div></a>
				
			</div>
		<%
			}
			else
			{
		%>	
			<a href="l_Login.jsp"><div id="ur_login">로그인</div></a>
			<div id="ur_register"><a href="Join.jsp" id="bt_register">회원가입</a></div>
		<%
			}

		 	
		%>
		</div>			
	</div>
</body>
</html>
