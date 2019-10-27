<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>

<!DOCTYPE html>
<html>
	<head>
		<title>게시판 리스트</title>
		<link rel= "stylesheet" type="text/css" href="css/index.css"/>
	</head>
	<body>
		<%@include file="Header.jsp"%>
		<div id="body_center">		
		<div style="margin-top:10px;font-size:24px;margin-left:5px">커뮤니티</div>
		<table align="center" width="100%"  border="0">
			<tr><td height=0.1 style="background-color:black" colspan=4></td></tr>
			<tr align="center">
				<th align="center" width="80px">번호</td>
				<th align="center" width="400px">제목</td>
				<th align="center">작성일</td>
				<th align="center">작성자</td>
			</tr>
			<tr><td height=0.1 style="background-color:black" colspan=4></td></tr>
	  <%
		try{				
				String sql = "SELECT * from board";
				
				Statement stmt = conn.createStatement();
				
			    ResultSet rs = stmt.executeQuery(sql);    
			    
			    if (rs.next())
			    {			    
			    	sql = "SELECT * from board where b_attri='Notice' Limit 3";
			    	rs = stmt.executeQuery(sql);
			    	rs.afterLast();
				    while(rs.previous())
					{			    		
			    		int num = rs.getInt(1);	
			    		
						String name = rs.getString(2);
						String title = rs.getString(3);			
						String date = rs.getString(5);							
		%>
			<tr>
				<td align="center">N</td>
				<td align="center"><a href="View.jsp?num=<%=num %>"><%=title %></a></td>
				<th align="center"><%=date %></td>
				<td align="center"><%=name %></td>
			</tr>
			<tr><td colspan=4><div style="border:0.5px solid #d9d9d9"></div></td></tr>
		<%				
			    	}
			    
			    
					sql = "SELECT * from board where b_attri='Normal'";
				    rs = stmt.executeQuery(sql);
				    
				    rs.afterLast();
				    while(rs.previous())
					{
						int num = rs.getInt(1);	
						
						String name = rs.getString(2);
						String title = rs.getString(3);			
						String date = rs.getString(5);		
	
		%>
			<tr>
				<td align="center"><%=num %></td>
				<td align="center"><a href="View.jsp?num=<%=num %>"><%=title %></a></td>
				<th align="center"><%=date %></td>
				<td align="center"><%=name %></td>
			</tr>
			<tr><td colspan=4><div style="border:0.5px solid #d9d9d9"></div></td></tr>
		<%	
					}		
			    }
			    else
			    {
		%>
			<tr>
				<td align="center" colspan=4>작성된 글이 없습니다.</td>
			</tr>
				
		<%  	
		    }
			conn.close();
			rs.close();
			stmt.close();    
		}catch(Exception e){
			e.printStackTrace();	
		}	
	  	
	 	if((String)session.getAttribute("id") != null)
	 	{
		%>
			<form method=post action="Write.jsp">
				<tr>  	
					<td align="right" colspan=4><input type=submit value="글쓰기"></td>	  
				</tr>
			</form>
		<%
	 	}	
		%>		
		</table>
		</div>		
	</body>
</html>