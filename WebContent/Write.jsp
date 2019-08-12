<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			html, body {height:100%;}		
		</style>
		<link rel= "stylesheet" type="text/css" href="http://localhost:8080/BBS/css/write.css"/>
		<title>게시판 글쓰기</title>
	</head>
	<body>
		<script language="javascript">
			function CheckMemo()
			{
				var form = document.mwrite;			

				
				if (!form.memo.value)
				{
					alert("내용을 적어주세요");
					return;
				}
				
				if (!form.title.value)
				{
					alert("제목을 입력해주세요");
					return;
				}
				
				form.submit();
			}
		</script>
		<form style="width:60%;margin:auto" name="mwrite" method=post action="Write_ok.jsp">
			<table align="center" border="0">
				<tr>
					<td style="margin-bottom:5px;text-align: center;"><h1>커뮤니티</h1><td>
				</tr>		
				<tr>
					<td><div id="g_line"></div><td>
				</tr>
				<tr>
					<td><p style="margin-bottom:5px;">게시글 등록 페이지입니다</p></td>
				</tr>
				<tr>
					<td><input style="width:80%;" name="title" type="text" placeholder="제목을 입력해주세요"></td>
				</tr>
				<tr>
				 	<td colspan=2>
				 		<textarea name="memo" rows="30" cols="85" placeholder="내용을 입력해주세요"></textarea>
					</td>
				</tr>	
				<tr align="right">
					<td colspan=2>
						<input type="button" value="작성" onclick="CheckMemo()">
						<input type="button" value="취소" onclick="location.href='javascript:history.back()';">
					</td>
				</tr>
			</table>
		 </form>
	</body>
</html>