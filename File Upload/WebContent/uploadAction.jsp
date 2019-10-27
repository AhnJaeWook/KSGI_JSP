<%@ page import="file.FileDAO" %>
<%@ page import="java.io.File" %> <!-- 기존의 파일이나 폴더를 제어하는데 사용 -->
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %> <!-- 사용자가 올린 파일중에 이름이 같은 파일들을 자동으로 이름을 바꿔줌 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %> <!-- 파일업로드를 수행하는데사용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP파일 업로드</title>
</head>
<body>
	<%
		// Application 내장 객체는 전체 프로젝트에 대한 자원을 관리하는 객체
		// 서버의 실제 프로젝트 경로에서 자원을 찾을 때 가장 많이 사용함
		//String directory = application.getRealPath("/upload/");
		String directory = "C:/jsp/upload/";
		int maxSize = 1024 * 1024 * 100; // 100MB
		String encoding = "UTF-8";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
					new DefaultFileRenamePolicy());
		
		Enumeration fileNames = multipartRequest.getFileNames();//마치 for문과 같은 형식, 여러개의 파일데이터가 있을 때 하나씩 분석하기 위한 목적으로 사용
		while(fileNames.hasMoreElements()){ //파일을 하나씩 확인(파일 존재하는한)
			String parameter = (String)fileNames.nextElement(); //한개씩 파일정보를 받아옴
			String fileName = multipartRequest.getOriginalFileName(parameter);
			String fileRealName = multipartRequest.getFilesystemName(parameter);
			
			if(fileName == null) continue;
			
			if(!fileName.endsWith(".jpg") && !fileName.endsWith(".png")){
				File file = new File(directory + fileRealName);
				file.delete();
				out.write("업로드할 수 없는 확장자입니다.");
			}
			else{	
				new FileDAO().upload(fileName, fileRealName);
				out.write("파일명: " + fileName + "<br>");
				out.write("실제 파일명: " + fileRealName + "<br>");
			}	
		}
		
	
	%>	
</body>
</html>