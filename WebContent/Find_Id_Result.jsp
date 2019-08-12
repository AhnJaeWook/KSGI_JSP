<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>    
<%@ page import="user.UserDAO"%>    

<% 
	String p_name = request.getParameter("name");
	String p_email = request.getParameter("email");	
	String usr_id = null;
	
	UserDAO userDAO = new UserDAO();
	
	Connection conn = userDAO.GetConnection();
	
	String SQL = String.format("Select * from user where usrid='%s' and email='%s'", p_name, p_email); //"Select * from user where usrid="

	PreparedStatement pstmt;
	
	try{
		pstmt = conn.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			usr_id = rs.getString(1);
		}
			
	}catch(Exception e)
	{
		
	}
%>        
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div style="margin:auto;width:70%">
		<div id="fi_header" >
			<div style="font-size:24px;margin-left:5px">아이디/비밀번호 찾기</div>
			<div style="border:1px solid #AFABAB"></div>
		</div>
		<div id="fi_tab" style="margin-top:30px;height:140px">			
			<div style="background-color:#404040;width:46%;height:110px;float:left">			
				<div style="text-align:center;line-height:110px;color:white;font-size:26px">아이디 찾기</div>
			</div>
			<a href="#">
				<div style="border:3px solid #AFABAB;width:46%;height:110px;float:right">			
					<div style="text-align:center;line-height:110px;font-size:26px">비밀번호 찾기</div>
				</div>	
			</a>		
		</div>
		<div style="border:1px solid black"></div>
		<div style="margin-top:30px">
			<div style="color:blue;font-size:20px;text-align:center;height:50px">* 회원가입 시 입력한 이름과 이메일(인증받은) 정보를 입력해 주시기 바랍니다.</div>	
			<div style="background-color:#F2F2F2;width:500px;height:170px;margin:auto">			
				<div style="width:350px;height:136px;margin-left:75px;position:fixed;text-align:center;font-size:20px">
					<p>입력된 정보로 확인된 아이디는</p>
					<p style="color:#5B9BD5"><%=usr_id %></p>
					<p>입니다.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>