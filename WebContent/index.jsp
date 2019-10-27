<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="user.UserDAO" %> 
<!DOCTYPE html>
<html>
<head> 
	<style type="text/css">
		html, body {height:100%;}		
	</style>
	<link rel= "stylesheet" type="text/css" href="css/index.css"/>
<title>메인 페이지</title>
</head>
<body onload="body_onLoad()">
	<script type="text/javascript" src="js/index.js"></script>	
	<%@include file="Header.jsp"%>
	<div id="body_center">
		<div id="g_line"></div>
		<%			
			
			try
			{	
				
				String SQL = "Select * from board where b_attri='Notice'";				
				
			 	PreparedStatement ptst = conn.prepareStatement(SQL);
			 	ResultSet rs = ptst.executeQuery();	
				
			 	if(rs.next())
			 	{
			 		int no = rs.getInt(1);
			 		String title = rs.getString(3);
		 	
		%>
		<div id="notice">
			<div id="nt_txt">공지사항</div>					
			<div id="nt_content"><%=title %></div>
			<div id="nt_view"><a id="textset" href="View.jsp?num=<%=no%>">자세히보기</a></div> 
		</div> 
		<%
			 	}
			}catch(Exception e)
			{
				
			}
		%>
		<div id="newspanel">			
			<div id="np_larrow" onmouseover="larrow_MouseOver()" onmouseleave="larrow_MouseLeave()" onclick="larrow_Click()"><</div>
			<div id="bck_image"></div>
			<!-- <div style="float:left"><img src="img/newspanel/np_1.png" width="500px"></div> -->
			<div id="np_rarrow" onmouseover="rarrow_MouseOver()" onmouseleave="rarrow_MouseLeave()" onclick="rarrow_Click()">></div>
		</div>
		<div id="newsarea">
			<div id="news_title">VR 뉴스</div>			
			<div id="news_more"><a id="textset" href="News.jsp">더보기</a></div>
		</div>		
		<div style="background-color:black;height:2px"></div>					
		<%@include file="NewsList.jsp"%>
	</div>
</body>
</html>