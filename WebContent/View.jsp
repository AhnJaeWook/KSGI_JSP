<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>글 보기</title>
		<link rel= "stylesheet" type="text/css" href="css/index.css"/>
	</head>
	<body>
		<%@include file="Header.jsp"%>
		<div style="margin:auto;width:928px">	
			<h2  style="margin-left:10px;margin-bottom:0px">커뮤니티</h2>
			<div style="width:100%;border:1px solid black"></div>
				<%
				int num = Integer.parseInt(request.getParameter("num"));				

				PreparedStatement pstmt;
				
				conn = userDAO.GetConnection();
				
				String sql = "SELECT * FROM board WHERE b_no=" + num;
				
				try
				{
					pstmt = conn.prepareStatement(sql);
					
					ResultSet rs = pstmt.executeQuery();
					
					if(rs.next()){
						String name = rs.getString(2);
						String title = rs.getString(3);			
						String content = rs.getString(4);
				%>
					<table width="100%" height="100%" align="center" border="0">
						<tr><td  colspan=3 width="500px" height="100%" align="left"><h2 style="margin-bottom:0px"><%=title %></h2></td></tr>					
						<tr>
							<td align="left" width="50px">작성자</td>
							<td align="left" width="1px">|</td>
							<td align="left"> <%=name %></td>
						</tr>
						<tr><td height=0.1 style="background-color:black" colspan=3></td></tr>
						<tr height="200px">
							<td colspan=3><%=content %></td>
						</tr>
						<tr align="right">
				<%
				 	if((String)session.getAttribute("id") != null)
				 	{
				%>		
							<td colspan=3>
								<a href="Delete_ok.jsp?num=<%=num %>"><input type="submit" value="삭제"></a>
								<a href="modify.jsp?num=<%=num %>"><input type="submit" value="수정"></a>
							</td>
				<%
				 	}
				%>			
						</tr>
				<%
					}
					sql = "SELECT * FROM comment WHERE c_memonum=" + num;
					
					pstmt = conn.prepareStatement(sql);
					
					rs = pstmt.executeQuery();
					
					rs.last();
				%>
						<tr><td height=0.1 style="background-color:black" colspan=3></td></tr>			
						<tr><td colspan=3>댓글(<%=rs.getRow() %>)</td></tr>	
						<tr><td height=0.1 style="background-color:black" colspan=3></td></tr>				
				
				<%	
					rs.beforeFirst();
				
					while(rs.next())
					{
						int c_no = rs.getInt(1);
						String c_name = rs.getString(2);
						String c_comment = rs.getString(3);	 
				%>
				
						<tr>
							<td colspan=3>
								<div style="float:left;width:100px"><%=c_name %></div>
							 	<div style="float:left;width:778px"><%=c_comment %></div>
								<div style="float:right"><a href="DelComment_ok.jsp?num=<%=num%>&c_no=<%=c_no%>">삭제</a></div>
							</td>
						</tr>
						<tr><td height=0.1 style="background-color:black" colspan=3></td></tr>
				<%
					}
				%>		
						<form method=post action="WriteComment.jsp?num=<%=num%>">
							<tr>
								<td colspan=3>
									<textarea style="width:100%;height:100px" name="comment" placeholder="내용"></textarea>
							    </td>
							</tr>
							<tr>
								<td align="right" colspan=3>
									<input type="submit" value="등록">
								</td>
							</tr>
						</form>
					</table>
				<%
					conn.close();
					rs.close();
					pstmt.close();
				}catch(Exception e){
					e.printStackTrace();	
				}
				%>
		</div>
	</body>
</html>