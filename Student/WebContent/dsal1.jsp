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
								<th colspan="4">MAXIMUM SALARY</th>
					</tr>
				<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Salary</th>
					</tr>
			<%
							try
							{
								String from = request.getParameter("from");
								String to = request.getParameter("to");
								Connection db = dbcon.regist();
								String query;
								query="select * from studreg where salary between '"+from+"'  and '"+to+"' and salary>1 and salary<10000 ORDER BY salary  ";
								//select id,fname,salary,MIN(salary), MAX(salary)from studreg where salary BETWEEN '1' AND '2500' ORDER BY salary;
									//select id,fNAME,email,salary from studreg where salary BETWEEN '1' AND '2000' AND salary>1 AND salary<10000 ORDER BY salary 
							Statement st = (Statement) db.createStatement(); 	
							ResultSet rs=st.executeQuery(query);
							
							while(rs.next())
							{
								
			%>
							    
						 <tr>
								   <td>    <%out.println(rs.getString(1)); %>	   </td>
								   <td>    <%out.println(rs.getString(2)); %>	   </td>
								   <td>    <%out.println(rs.getString(4)); %>	   </td>
								   <td>    <%out.println(rs.getString(8)); %>	   </td>
					
								 	
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