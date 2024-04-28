<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.io.*" %>
	<%@ page import="java.sql.*"%>
	<%@ page import="data.dbcon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/paged.css">
<link rel="stylesheet" href="css/table.css">
	<link rel="stylesheet" href="css/nav.css">
</head>
<body>

 <input type="checkbox" id="active">
    <label for="active" class="menu-btn"><span></span></label>
    <label for="active" class="close"></label>
    <div class="wrapper">
      <ul>
				<li>	<a href="homepage.jsp">Home</a></li>
				<li><a href="search.jsp">search</a></li>
				<li>	<a href="delete.jsp">Delete </a></li>
				<li>	<a href="salary.jsp">salary</a></li>
				<li>			<a href="logout.jsp">Logout</a></li>
	</ul>
</div>
					<table  >
					<tr>
								<th colspan="4">AVERAGE SALARY</th>
					</tr>
				<tr>
							<th>ID</th>
							<th>Name</th>
							<th>email</th>
					</tr>
			<%
							try
							{
					
								Connection db = dbcon.regist();
								
								String query;
								query=" SELECT id,fname,email,MAX( salary ) FROM studreg 	WHERE salary < ( SELECT MAX( salary ) FROM studreg	 WHERE salary < ( SELECT MAX( salary ) FROM studreg));";
								//st.executeUpdate(query);		
									Statement st = (Statement) db.createStatement();
							ResultSet rs=st.executeQuery(query);
							
							while(rs.next())
							{
			%>
							    
						 <tr>
								   <td>    <%out.println(rs.getString(1)); %>	   </td>
								   <td>    <%out.println(rs.getString(2)); %>	   </td>
								   <td>    <%out.println(rs.getString(4)); %>	   </td>
							
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