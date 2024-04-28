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
<style type="text/css">
.cl{
						margin-top:50px;
						height:250px;
						width:800px;
						aign-content:center;
						background-color:#0f0c29;
						align-items: center;
						 text-align: center;
						 border:5px solid #0f0c29;
						font-family: 'Cherry Swash', cursive;
						
	}
select{
				height:50px;
				width:100px;
				color:red;
				background-color:inherit;
				border:5px solid darkred;
}
</style>
	
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
		<form action="delete" method="get">
		<div class="cl">
					<table>
			<%
							try
							{
								Connection db = dbcon.regist();
					
									Statement st = (Statement) db.createStatement();
							ResultSet rs=st.executeQuery("select * from studreg  ");
							
			%>
							
									<center>
									    <h1> Select Student ID to Delete</h1>
									        <select  name="id">
									        <%  while(rs.next()){ %>
									        <option value="<%= rs.getString("id")%>"  > <%= rs.getString("id")%></option>
									        <% } %>
									        </select>
									</center>

								<%
							 
							
							 rs.close();
							    st.close();
							    db.close();
							    }
							catch(Exception e)
							{
							  	  e.printStackTrace();
							    }	
				%>	
							<br><br>
									<input type="submit" value="Delete" name="search">
						
				</table>
				</div>
			</form>
	</body>
</html>