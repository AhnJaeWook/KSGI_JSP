<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 
	<style type="text/css">
		html, body {height:100%;}		
	</style>
	<link rel= "stylesheet" type="text/css" href="http://localhost:8080/BBS/css/index.css"/>
<title>메인 페이지</title>
</head>
<body>
	<script language="javascript">
		function homeclick()
		{
			document.getElementById("frame").src = "index.jsp";
		}
	</script>
	<div style="width:100%;margin-bottom:15px">
		<div style="width:100px;height:30px;background-color:white">로고</div>
		<div id="topmenu" >
			<div id="tm_left">VR 뉴스</div>
			<div id="tm_center"><a href="board.jsp">커뮤니티</a></div>
			<div id="tm_right">VR 기기 정보</div>			
		</div>		
		<div id="ur_box">
			<a href="#"><div id="ur_login">로그인</div></a>
			<div id="ur_register"><a href="#" style="color:black;text-decoration:none">회원가입</a></div>
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
			<div><!-- 이미지 표시 영역 --></div>
			<div id="np_larrow"><</div>
			<div id="np_rarrow">></div>
		</div>
		<div id="newsarea">
			<div id="news_title">VR 뉴스</div>
			<div id="news_more"><a href="#">더보기</a></div>
		</div>
		<div style="background-color:black;height:2px"></div>					

	</div>
</body>
</html>