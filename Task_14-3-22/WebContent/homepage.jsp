<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	<%@ page import="java.io.*" %>
	<%@ page import="java.sql.*"%>
	<%@ page import="task.dbcon" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>
	 
	<link rel="stylesheet" href="css/homed.css">
		<link rel="stylesheet" href="css/paged.css">
</head>
<body>
		<nav>
				<a href="homepage.jsp">Home</a>
				<a href="stdata.jsp">Show Data</a>
				<a href="#">Detail</a>
				<a href="#">Portefolio</a>
				<a href="logout.jsp">Logout</a>
				<div class="animation start-home"></div>
		</nav>

<form >
		<h1>HOME PAGE </h1>

</form>
							
									<table >	
				<tr>
					<th> Name</th>
					<th>Email id </th>
					<th>Data</th>
				</tr>
					
			<%
		    String email = (String) session.getAttribute("email");
			int i=1;			
				try
							{
							Connection db = dbcon.regist();
							String query="select * from signup";
						
							Statement stmt=db.createStatement();
							ResultSet rs=stmt.executeQuery(query);
							while(rs.next())
							{
								
			%>
							 <tr>
						
									  <td>    <%out.println(rs.getString(1)); %></td>
								   	  <td>  <%out.println(rs.getString(2)); %></td>
								   	 <td>
								   	 <a href="upload.jsp?fna=<%=(rs.getString(1)) %>,<%=(rs.getString(2)) %>">
									    	    <input type="button" value="Enter Data" name="data" ></a></td>							   
							 </tr>
				<%
							 
							}
				%>
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
</body>
</html>