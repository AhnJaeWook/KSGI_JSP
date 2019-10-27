<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>    

<%
	int num = Integer.parseInt(request.getParameter("num"));
%>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			html, body {height:100%;}		
		</style>
		<link rel= "stylesheet" type="text/css" href="http://localhost:8080/BBS/css/write.css"/>
		<link rel= "stylesheet" type="text/css" href="css/index.css"/>
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
		<div id="header">
			<a href="index.jsp"><div id="logo_">로고</div></a>
			<div id="topmenu" >
				<div id="tm_left"><a id="textset" href="News.jsp">VR 뉴스</a></div>
				<div id="tm_center"><a id="textset" href="board.jsp">커뮤니티</a></div>
				<div id="tm_right"><a id="textset" href="VR_Info.jsp">VR 기기 정보</a></div>			
			</div>		
			<div id="ur_box">
			<%
				String msg = (String)session.getAttribute("id");
				UserDAO userDAO = new UserDAO();
				Connection conn = userDAO.GetConnection();
				
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
		<div style="margin:auto;width:50%">
			<div id="g_line"></div>
			<div style="font-size:24px;margin-left:5px">커뮤니티</div>
			<% 				
				String SQL = "Select * from board where b_no=" + num;
				
				conn = userDAO.GetConnection();
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				
				ResultSet rs = pstmt.executeQuery();
				
				if(rs.next())
				{
					String title = rs.getString(3);
					String content = rs.getString(4);					
			%>
			<form name="mwrite" method=post action="Modify_ok.jsp?num=<%=num%>">
				<table align="center" border="0" width="100%">	
					<tr>
						<td><div id="g_line"></div><td>
					</tr>
					<tr>
						<td><p style="margin-bottom:5px;">게시글 등록 페이지입니다</p></td>
					</tr>
					<tr>
						<td><input style="width:100%;" name="title" type="text" value="<%=title %>"></td>
					</tr>
					<tr>
					 	<td colspan=2>
					 		<textarea name="memo" style="width:100%" rows="30"><%=content %></textarea>
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
			 <%
				}
			 %>
		 </div>
	</body>
</html>