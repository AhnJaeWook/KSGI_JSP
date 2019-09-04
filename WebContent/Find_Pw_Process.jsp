<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import="user.UserDAO"%>  
<%@ page import="java.util.*" %>  
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<% 
	String p_name = request.getParameter("name");
	String p_email = request.getParameter("email");	
	String usr_id = request.getParameter("usr_id");
	
	/*
	UserDAO userDAO = new UserDAO();
	
	Connection conn = userDAO.GetConnection();
	
	String SQL = String.format("Select * from user where usrid='%s' and email='%s'", usr_id, p_email); //"Select * from user where usrid="

	PreparedStatement pstmt;
	
	try{
		pstmt = conn.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();		

			
	}catch(Exception e)
	{
		
	}
	*/
	Properties p = new Properties();
	p.put("mail.smtp.host","smtp.naver.com");

	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.socketFactory.fallback", "false");

	try
	{
		//Authenticator auth = new PasswordAuthentication("reloop15", "t4750138@");
		Session ses = Session.getDefaultInstance(p, null);
		
		MimeMessage msg = new MimeMessage(ses);
		msg.setSubject("메일");
		
		Address fromAddr = new InternetAddress("freedom_cars@naver.com");
		msg.setFrom(fromAddr);
		
		Address toAddr = new InternetAddress(p_email);
		msg.addRecipient(Message.RecipientType.TO, toAddr);
		
		msg.setContent("1234", "text/html;charset=UTF-8");
		
		Transport.send(msg);
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>        
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기</title>
</head>
<body>
	<div style="margin:auto;width:70%">
		<div id="fi_header" >
			<div style="font-size:24px;margin-left:5px">아이디/비밀번호 찾기</div>
			<div style="border:1px solid #AFABAB"></div>
		</div>
		<div id="fi_tab" style="margin-top:30px;height:140px">
			<a href="Find_Id.jsp">			
				<div style="background-color:#404040;width:46%;height:110px;float:left">			
					<div style="text-align:center;line-height:110px;color:white;font-size:26px">아이디 찾기</div>
				</div>
			</a>			
			<div style="border:3px solid #AFABAB;width:46%;height:110px;float:right">			
				<div style="text-align:center;line-height:110px;font-size:26px">비밀번호 찾기</div>
			</div>				
		</div>
		<div style="border:1px solid black"></div>
		<div style="margin-top:30px">
			<div style="color:blue;font-size:20px;text-align:center;height:50px">* 메일로 발송된 인증코드를 입력해주세요.</div>	
			<div style="background-color:#F2F2F2;width:500px;height:170px;margin:auto">			
				<div style="width:350px;height:136px;margin-left:75px;position:fixed;text-align:center;font-size:20px">					
					<div style="color:#5B9BD5;margin-top:17px;height:80px;line-height:80px"><%=p_email %></p>	
					<div style="width:70%;height:100%;float:left">						
						<div style="width:80%;height:35px;line-height:35px;background-color:white;float:left">
							<div style="border:1px solid black">
								<div style="margin:auto;width:90%;height:100%"><input name="ck_code" id="ck_code" style="width:100%;border:none" type="text" placeholder="인증코드"></div>
							</div>
						</div>
						<div style="background-color:black;font-size:20px;color:white;float:right;height:37px;width:20%;line-height:37px">확인</div>
					</div>
					<div style="width:90px;height:37px;background-color:blue;float:right;line-height:37px;color:white">재발송</div>
				</div>				
			</div>
		</div>
	</div>
</body>
</html>