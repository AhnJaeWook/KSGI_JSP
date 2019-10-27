<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<%	
	String  	SQL 	= "Select * from News";					
	PreparedStatement ptst;
	ResultSet rs;
%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	try
	{	
		conn 	= userDAO.GetConnection();	
	 	ptst = conn.prepareStatement(SQL);
	 	rs   = ptst.executeQuery();	 	
		
%>			
			<table style="margin-top:20px;width:100%;" border="0">	
				
<%
		if(rs.next())
		{		
			rs.beforeFirst();

			while(rs.next())
			{
%>
				<tr>

<%
				for(int i = 0;i<2;i++)
				{
					int num = rs.getInt(1);
					String name = rs.getString(2);
					String title = rs.getString(3);
					String content = rs.getString(4);				
					String imgurl = rs.getString(6);
					if(i == 0)
						rs.next();
%>				
					<td style="width:40%">
						<div class="gallery">
							<a href="#">
							    <img style="width:100%;height:150px" src="img/newspanel/<%=imgurl %>">
							</a>
							<div style="border:1px solid #bbbbbb"class="desc">
								<h3 style="text-align:center"><%=title %></h3>
								<p style="margin-left:5px;margin-bottom:5px;color:#767171"><%=content %></p>
							</div>
						</div>
					</td>	
<%
				}
%>
				</tr>
<%
			}
		}	
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>								
				
			</table>
</body>
</html>