<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ page import="java.io.*" %>
	<%@ page import="java.sql.*"%>
	<%@ page import="data.dbcon" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Student Data</title>
<link rel="stylesheet" href="css/paged.css">
<link rel="stylesheet" href="css/table.css">
</head>
<body>
	<nav>
				<a href="homepage.jsp">Home</a>
				<a href="search.jsp">search</a>
				<a href="delete.jsp">Delete </a>
				<a href="logout.jsp">Logout</a>
				<div class="animation start-home"></div>
		</nav>
<form action="update.jsp"></form>
					<table  >
					<tr>
							<th>id</th>
							<th>Name</th>
							<th>Mobile no</th>
							<th>Email</th>
							<th>Password</th>
							<th>Date Of Birth</th>
							<th>Address</th>
							<th>Salary</th>
							<th>Gender</th>
							<th>Update Details</th>
					</tr>
			<%
							try
							{
								String id= request.getParameter("idsel");
								Connection db = dbcon.regist();
							
								
								String query;
								query="select * from studreg where id='"+id+"' ";
								//st.executeUpdate(query);		
									Statement st = (Statement) db.createStatement();
							ResultSet rs=st.executeQuery(query);
							while(rs.next())
							{
			%>
							    
						 <tr>
								   <td>    <%out.println(rs.getString(1)); %>	   </td>
								   <td>    <%out.println(rs.getString(2)); %>	   </td>
								   <td>    <%out.println(rs.getString(3)); %>	   </td>
								   <td>    <%out.println(rs.getString(4)); %>	   </td>
								   <td>    <%out.println(rs.getString(5)); %>	   </td>
								   <td>    <%out.println(rs.getString(6)); %>	   </td>
								   <td>    <%out.println(rs.getString(7)); %>	   </td>
								   <td>    <%out.println(rs.getString(8)); %>	   </td>
								   <td>    <%out.println(rs.getString(9)); %>	   </td>
								   <td>
											 	<a href="update.jsp?id=<%=rs.getString("id")%>">
											 			<input type="submit" value="Update File" class="cd">
											 	</a>
								 	</td>
								 	
							</tr>
				<%
							 
							}
							 rs.close();
							    st.close();
							    db.close();
							    }
							catch(Exception e)
							{
							  	  e.printStackTrace();
							    }	
				%>
				
					</table>
			

</body>
</html>