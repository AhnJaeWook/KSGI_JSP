<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%
	String msg = request.getParameter("msg");
	if(msg == null) msg = null;
%>    
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/Login.css">
	<style type="text/css">
		html, body {height:100%;}		
	</style>	
	<title>로그인 페이지</title>
</head>
<body>
	<div style="width:500px;height:150px;margin:auto">
		<div style="width:300px;height:100px;margin-left:100px;margin-top:25px;background-color:gray;position:absolute">
			<a href="index.jsp"><div style="font-size:40px;color:white;text-align:center;line-height:100px">로고</div></a>
		</div>
	</div>
	<div id="frame">
		<div id="low_frame">
			<div id="l_title_frame">
				<div id="login_title">로그인</div>
				<%
					if(msg != null && msg.equals("no"))
					{
				%>
				<div id="login_fail">실패</div>
				<% 
					}
				%>				
			</div>
			<div id="guide_line"></div>
			<form method="post" action="Login.jsp">
				<div id="txt_area">
					<div id="low_txt_area">
						<div id="id_area">
							<div id="input_frame"><input name="usrid" id="input_box" type="text" placeholder="아이디"></div>
						</div>
	
						<div id="pw_area">
							<div id="input_frame"><input name="usrpw" id="input_box" type="password" placeholder="비밀번호"></div>
						</div>
					</div>	
					<input type="submit" name="bt_login" id="bt_login" value="로그인">
				</div>
			</form>
			<div id="info_area">
				<div id="chek_">
					<input id="idcheck" type="checkbox">
					<label for="idcheck">아이디 저장</label>
				</div>
				<div id="help_">
					<a href="Find_Id.jsp"><div id="find_account">아이디/비밀번호 찾기</div></a>
					<a href="Join.jsp"><div id="register">회원가입</div></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>