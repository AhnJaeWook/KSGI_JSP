<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP파일 업로드</title>
</head>
<body>
	<form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
		<input multiple="multiple" type="file" name="file[]" /><br>
		<input type="submit" value="업로드">
	</form>
</body>
	
</html>