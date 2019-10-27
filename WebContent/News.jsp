<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			html, body {height:100%;}
		</style>
		<link rel= "stylesheet" type="text/css" href="http://localhost:8090/BBS/css/news.css"/>
		<link rel= "stylesheet" type="text/css" href="css/index.css"/>
		<title>뉴스</title>
	</head>
	<body>
		<%@include file="Header.jsp"%>	
		<div style="width:70%;margin:auto">			
			<div style="margin-top:10px;font-size:24px">VR뉴스</div>
			<div style="border:1px solid black"></div>
		<%@include file="NewsList.jsp"%>	
		</div>
	</body>
</html>