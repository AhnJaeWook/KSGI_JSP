<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	
	<script type="text/javascript">
		function checktxt()
		{
			var txt_name = document.getElementById('name');
			var txt_email = document.getElementById('email');
			//var frm_find = document.getElementById('frm_find');
			if(txt_name.value == "" || txt_email.value == "")
				alert('이름과 이메일을 입력해주시기 바랍니다.');
			else
				document.frm_find.submit();
		}
	</script>
	<div style="margin:auto;width:70%">
		<div id="fi_header" >
			<div style="font-size:24px;margin-left:5px">아이디/비밀번호 찾기</div>
			<div style="border:1px solid black"></div>
		</div>
		<div id="fi_tab" style="margin-top:30px;height:140px">
			<div style="background-color:gray;width:46%;height:110px;float:left">			
				<div style="text-align:center;line-height:110px">아이디 찾기</div>
			</div>
			<div style="border:1px solid black;width:46%;height:110px;float:right">			
				<div style="text-align:center;line-height:110px">비밀번호 찾기</div>
			</div>			
		</div>
		<div style="border:1px solid black"></div>
		<div style="margin-top:30px">
			<div style="color:blue;font-size:20px;text-align:center;height:50px">* 회원가입 시 입력한 이름과 이메일(인증받은) 정보를 입력해 주시기 바랍니다.</div>	
			<div style="background-color:gray;width:500px;height:170px;margin:auto">		
				<form name='frm_find' method='get' action='Find_Id_Result.jsp'>	
					<div style="width:350px;height:136px;margin-left:75px;margin-top:17px;position:fixed">
						<div style="height:80px">
							<div style="border:1px solid black;height:35px;line-height:35px;background-color:white">
								<div style="margin:auto;width:90%;height:100%"><input name="name" id="name" style="width:100%;border:none" type="text" placeholder="이름"></div>
							</div>
							<div style="height:10px"></div>
							<div style="border:1px solid black;height:35px;line-height:35px;background-color:white">
								<div style="margin:auto;width:90%;height:100%"><input name="email" id="email" style="width:100%;border:none" type="text" placeholder="이메일"></div>
							</div>
						</div>	
						<!--<div style="height:35px;text-align:center;font-size:20px;background-color:black;margin-top:21px;color:white;line-height:35px">-->
						<input type='button' value="확인" onclick='checktxt()' style="border:none;width:100%;height:35px;text-align:center;font-size:20px;background-color:black;margin-top:21px;color:white;line-height:35px">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>