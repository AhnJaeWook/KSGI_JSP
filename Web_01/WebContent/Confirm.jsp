<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	html, body{height:100%;}
</style>
<title>회원가입</title>
</head>
<body>
	<script type="text/javascript">
		function goworkpage()
		{
			var frm_regi = document.getElementById('frm_regi');
			var idcheckdone = document.getElementById('idcheck').value;
			var val_name = document.getElementById('name').value;
			var val_usrid = document.getElementById('usr_id').value;
			var val_usrpw = document.getElementById('usr_pw').value;
			var val_email = document.getElementById('email').value;
			
			if(val_name == "" || val_usrid == "" || val_usrpw == "" || val_email == "")
				alert('비어있는 정보가 있습니다.');
			else
			{				
				if(idcheckdone == "true")			
					frm_regi.submit();			
				else
					alert('아이디 중복체크를 완료해주세요');
			}
		}
		
		function passcheck()
		{
			var ori_text = document.getElementById("usr_pw")
			var chk_text = document.getElementById("usr_pw_ck");
			var table = document.getElementById("confirm_table");
			
			if(ori_text.value == chk_text.value)
			{
				//table.rows[7].cells[2].innerHTML = "비밀번호가 일치합니다."";
			}
			
		}
		function idcheck(){
			var id_text = document.getElementById("usr_id");
			var url = 'idcheck.jsp?usr_id=' + id_text.value;
			var Setting = 'toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200';
			open(url,"아이디 중복확인",Setting);
		}

	</script>
	<input id="idcheck" type="hidden" value="false">
	<div style="margin:auto;width:90%;height:100px">
		<div style="margin-top:10px">
			<div style="float:left;width:122px"><img src="./img/register/register_1_2.png"/></div>
			<div style="float:left;margin-left:14%;height:51px;line-height:151px"><img src="./img/register/arrow.png"/></div>				
			<div style="float:right;width:122px"><img src="./img/register/register_3_1.png"/></div>
			<div style="float:right;margin-right:14%;height:51px;line-height:151px"><img src="./img/register/arrow.png"/></div>
			<div style="margin:auto;width:122px"><img src="./img/register/register_2_1.png"/></div>
		</div>		
		<form id="frm_regi" Method="get" action="Confirm_work.jsp">		
			<div style="margin-top:50px">
				<div style="font-size:24px">회원가입 정보입력</div>
				<div style="border:1px solid black"></div>
				<div style="margin:auto;height:100%">			
					<table id="confirm_table" style="width:100%;margin-top:50px">
						<tr style="height:0.4px" bgcolor=black><td colspan=3></td></tr>
						<tr>
							<td style="width:200px;font-size:24px">이름</td>
							<td><input id="name" name="name" type="text"></td>
						</tr>
						<tr bgcolor=black><td colspan=3></td></tr>
						<tr>
							<td style="width:200px;font-size:24px">아이디</td>
							<td style="width:200px"><input id="usr_id" name="usr_id" type="text"></td>
							<td><a href="#" onclick="idcheck()"><img src="./img/register/register_idcheck.png"></a></td>
						</tr>
						<tr bgcolor=black><td colspan=3></td></tr>
						<tr>
							<td style="width:200px;font-size:24px">비밀번호</td>
							<td><input id="usr_pw" name="usr_pw" type="password"></td>							
						</tr>
						<tr bgcolor=black><td colspan=3></td></tr>
						<tr>
							<td style="width:200px;font-size:24px">비밀번호 확인</td>
							<td><input id="usr_pw_ck" name="usr_pw_ck" type="password" onchange="passcheck()"></td>	
							<td></td>					
						</tr>					
						<tr bgcolor=black><td colspan=3></td></tr>
						<tr>
							<td style="width:200px;font-size:24px">이메일</td>
							<td>
								<input id="email" name="email" type="text">
								 @ 				
							</td>
							<td>
								<input name="dremail" type="text">					
								<select name="adr_email">
									<option value="gmail.com" selected>gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="daum.net">daum.net</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="naver.com">naver.com</option>
									<option value="yahoo.com">yahoo.com</option>
									<option value="nate.com">nate.com</option>
									<option value="direct">직접입력</option>					
								</select>	
							</td>
						</tr>
						<tr bgcolor=black><td colspan=3></td></tr>
					</table>				
				</div>
				<div style="float:right"><a href="#" onclick="goworkpage()"><img src="./img/register/goregister.png"></a></div>
			</div>		
		</form>
	</div>
</body>
</html>