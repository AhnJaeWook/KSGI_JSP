<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
		function chk_check()
		{
			var chk_service = document.getElementById('chk_service');
			var chk_privacy = document.getElementById('chk_privacy');
		
			if(!chk_service.checked || !chk_privacy.checked)
			{
				alert("필수 약관에 모두 동의하여 주십시오");
			}
			else
			{
				location.href='Confirm.jsp';
			}
			
		}
	</script>
	<div style="margin:auto;width:90%;height:100px">
		<div style="margin-top:10px">
			<div style="float:left;width:122px"><img src="./img/register/register_1_2.png"/></div>
			<div style="float:left;margin-left:14%;height:51px;line-height:151px"><img src="./img/register/arrow.png"/></div>				
			<div style="float:right;width:122px"><img src="./img/register/register_3_1.png"/></div>
			<div style="float:right;margin-right:14%;height:51px;line-height:151px"><img src="./img/register/arrow.png"/></div>
			<div style="margin:auto;width:122px"><img src="./img/register/register_2_1.png"/></div>
		</div>		
		<div style="margin-top:50px">
			<div style="font-size:24px">서비스 약관 동의</div>
			<div style="border:1px solid black"></div>
			<div style="margin-top:30px">
				<div style="font-size:24px">서비스 이용 약관 동의</div>
				<div style="border:1px solid gray;overflow:auto;background-color:white;width:100%;height:150px"></div>
				<div style="margin-top:20px;font-size:20px">
					<input id="chk_service" type="checkbox">
					<label for='chk_service'>동의함(필수)</label>
				</div>
			</div>			
			<div style="margin-top:30px">
				<div style="font-size:24px">개인정보 처리방침 동의</div>
				<div style="border:1px solid gray;overflow:auto;background-color:white;width:100%;height:150px"></div>
				<div style="margin-top:20px;font-size:20px">
					<input id="chk_privacy" type="checkbox">
					<label for='chk_privacy'>동의함(필수)</label>
					<div style="float:right"><input type="submit" value="다음" onclick="chk_check()"></div>
				</div>
			</div>			
			
		</div>
	</div>
</body>
</html>