<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String msg = request.getParameter("msg");
%>    
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
	<div id="header">
		<div id="logo_">로고</div>
		<div id="topmenu" >
			<div id="tm_left">VR 뉴스</div>
			<div id="tm_center"><a href="board.jsp">커뮤니티</a></div>
			<div id="tm_right">VR 기기 정보</div>			
		</div>		
		<div id="ur_box">
		<%
			if(msg != null)
			{			
		%>
			<div><%=msg %>님 안녕하세요.</div>
		<%
			}
			else
			{
		%>	
			<a href="l_Login.jsp"><div id="ur_login">로그인</div></a>
			<div id="ur_register"><a href="Join.jsp" style="color:black;text-decoration:none">회원가입</a></div>
		<%
			}
		%>
		</div>		
	</div>
	<div id="body_center">
		<div id="g_line"></div>
		<div id="notice">
			<div id="nt_txt">공지사항</div>					
			<div id="nt_content">내용</div>
			<div id="nt_view"><a href="#">자세히보기</a></div> 
		</div> 
		<div id="newspanel">			
			<div id="np_larrow" onmouseover="larrow_MouseOver()" onmouseleave="larrow_MouseLeave()" onclick="larrow_Click()"><</div>
			<div id="bck_image"></div>
			<!-- <div style="float:left"><img src="img/newspanel/np_1.png" width="500px"></div> -->
			<div id="np_rarrow" onmouseover="rarrow_MouseOver()" onmouseleave="rarrow_MouseLeave()" onclick="rarrow_Click()">></div>
		</div>
		<div id="newsarea">
			<div id="news_title">VR 뉴스</div>
			<div id="news_more"><a href="#">더보기</a></div>
		</div>
		<div style="background-color:black;height:2px"></div>					

	</div>
</body>
</html>