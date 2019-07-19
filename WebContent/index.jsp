<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/index.css"/>
	<style type="text/css">
		html, body {height:100%;}		
	</style>
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
		<div class="topmenu">
			<div style="text-align:left;flex:1">VR 뉴스</div>
			<div style="text-align:center;flex:1"><a href="board.jsp">커뮤니티</a></div>
			<div style="text-align:right;flex:1">VR 기기 정보</div>			
		</div>		
		<div style="position:absolute;top:10px;right:10px">
			<a href="#"><div style="float:left;width:60px;height:25px;text-align:center;border:1px solid black;line-height:25px;color:black;text-decoration:none">로그인</div></a>
			<div style="margin-left:10px;float:right;line-height:25px"><a href="#" style="color:black;text-decoration:none">회원가입</a></div>
		</div>		
	</div>
	<div style="margin:auto;width:60%;height:100%">
		<div style="background-color:black;height:1px"></div>	
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