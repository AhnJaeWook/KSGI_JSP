<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> 

<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>

<title>VR기기 정보</title>
</head>
<link rel= "stylesheet" type="text/css" href="css/VR_Info.css"/>
<link rel= "stylesheet" type="text/css" href="css/index.css"/>
<body>
	<script type="text/javascript">				
		function l_arrow()
		{			
			var vrlist = document.getElementById('vrlist');
			var margin = parseFloat(vrlist.style.marginLeft) - 705.5;			
			vrlist.style.marginLeft =  margin + "px";			
		}
		
		function r_arrow()
		{			
			var vrlist = document.getElementById('vrlist');
			var margin = parseFloat(vrlist.style.marginLeft) + 705.5;			
			vrlist.style.marginLeft =  margin + "px";			
		}		
	</script>
	<%@include file="Header.jsp"%>
	<div id="global_body">
		<h2  id="vrtitle">VR기기 정보</h2>
		<div id="g_line"></div>
		<div id="panel">
			<div id="p_list">
				<a href="#" onclick="l_arrow()"><div id="leftarrow"><</div></a>										
					<%						
						String SQL = "Select * from VRInfo";
						
						conn = userDAO.GetConnection();
						PreparedStatement ptst = conn.prepareStatement(SQL);
						
						ResultSet rs = ptst.executeQuery();		
						
						rs.last();
						int count = rs.getRow();
						rs.beforeFirst();
						
						try
						{
							int pagecount = (int)(count / 4) * 2;
							double pagemargin = 82.5f;
					%>
					<div id="p_lowlist">		
						<div id="vrlist" style="width:<%=(788 * pagecount)%>px;overflow:hidden;margin-left:0px">
					<%		
							for(int i = 0; i < pagecount; i++)
							{
					%>
							<div style="margin-left:<%=(623 * i) + pagemargin %>px" id="p_items">							
					<% 		
								rs.beforeFirst();
								for(int j = 0;j<4;j++)					
								{								
									if(rs.next())
									{
										int listmargin = 0;
										
										if(j > 0)
											listmargin = 37;
										
										int num = rs.getInt(1);
										String title = rs.getString(2);									
										String imgurl = rs.getString(5);
					%>
								<div id="i_div" style="margin-left:<%=listmargin%>px">			
									<a href="VR_Info.jsp?id=<%=num%>"><img style="width:128px;height:128px" src="./img/vr/<%=imgurl%>"></a>					
							
									<div id="i_name"><%=title %></div>
								</div>	
					<%	
									}		
								}	
								
								pagemargin = 165.0f;
					
								rs.beforeFirst();
					%>
							</div>						
					<%			
							}	
					%>
					</div>						
				</div>
				<a href="#" onclick="r_arrow()"><div id="rightarrow">></div></a>
			</div>
		</div>
					<%
							if(id != null)
							{
								SQL = "Select v_machine, v_content, imgurl from VRInfo Where v_num='" + id + "'";
								
								ptst = conn.prepareStatement(SQL);
								rs = ptst.executeQuery();
								
								if(rs.next())
								{								
									String title = rs.getString(1);
									String content = rs.getString(2);
									String imgurl = rs.getString(3);							
					%>
		<div id="g_line"></div>
		<div id="info_body">
			<div id="i_img">
				<img id="ii_img" src="./img/vr/<%=imgurl %>">
			</div>
			<div id="i_info">
				<h1 id="i_name2"><%=title %></h1>
				<div id="g_line"></div>
				<div id="i_content"><%=content %></div>
			</div>
		</div>
					<%
								}
							}
						}catch(Exception e)
						{
							e.printStackTrace();
						}
					%>
	</div>
</body>
</html>