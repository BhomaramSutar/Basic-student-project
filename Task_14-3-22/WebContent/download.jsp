<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%@ page import="java.io.*" %>
	<%@ page import="java.sql.*"%>
	<%@ page import="task.dbcon" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Download page</title>
<link rel="stylesheet" href="css/maindesign.css">
	<link rel="stylesheet" href="css/nav.css">
</head>

<body>

			<nav>
				<a href="homepage.jsp">Home</a>
				<a href="upload.jsp">Upload</a>
				<a href="#">Detail</a>
				<a href="#">Portefolio</a>
				<a href="logout.jsp">Logout</a>
				<div class="animation start-home"></div>
		</nav>
		<marquee><h1>:DOWNLOAD FILE : DELETE FILE : SHARE FILE : </h1></marquee><hr><br>
		
	<form action="download">
	
					<table  >
					<tr>
							<th>Files In Database</th>
							<th>Download File</th>
							<th>Delete File</th>
						
					</tr>
			<%
							try
							{
							String email =  (String) session.getAttribute("email");
							Connection db = dbcon.regist();
							String query="select fname from file where email = '"+email+"'";
							
							Statement stmt=db.createStatement();
							ResultSet rs=stmt.executeQuery(query);
							while(rs.next())
							{
								
			%>
							    
						 <tr>
								    <td>
								    <%out.println(rs.getString(1)); %>
								    </td>
								    <td>
									    <a href="download?fname=<%=rs.getString(1)%>">
									    <input type="button" value="Download File" class="cd">
									    </a></td>
								 <td>
								 	<a href="delete?fname=<%=rs.getString(1)%>">
								 		<input type="button" value="Delete File" class="cd">
								 	</a></td>
								 	
							</tr>
				<%
							 
							}
				%>
				<tr>
					<td></td>
				</tr>
					</table>
				<%
							    rs.close();
							    stmt.close();
							    db.close();
							    }
							catch(Exception e)
							{
							  	  e.printStackTrace();
							    }		
							
		  %>

			
</form>
</body>
</html>