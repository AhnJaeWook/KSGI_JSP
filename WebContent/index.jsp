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
	<div style="margin:auto;width:60%;height:100%">
		<div id="g_line"></div>	
		<div style="margin-top:15px;background-color:#E7E6E6;height:50px">
			<div style="margin-left:5px;font-size:20px;float:left;line-height:50px">공지사항</div>					
			<div style="margin-left:15px;float:left;line-height:50px;font-size:16px">내용</div>
			<div style="float:right;margin-right:10px;line-height:50px"><a href="#">자세히보기</a></div>
		</div>
		<div style="margin-top:15px;height:200px;background-color:#7F7F7F">
			<div><!-- 이미지 표시 영역 --></div>
			<div style="width:30px;float:left;font-size:30px;line-height:200px;color:white"><</div>
			<div style="width:30px;float:right;font-size:30px;line-height:200px;color:white">></div>
		</div>
		<div style="margin-top:20px;height:50px">
			<div style="margin-left:5px;font-size:24px;float:left;line-height:50px;height:50px">VR 뉴스</div>
			<div style="margin-right:10px;line-height:50px;text-align:right"><a href="#">더보기</a></div>
		</div>
		<div style="background-color:black;height:2px"></div>					

	</div>
</body>
</html>