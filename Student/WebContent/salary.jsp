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
</head>
<body>
<nav>
				<a href="homepage.jsp">Home</a>
				<a href="search.jsp">search</a>
				<a href="delete.jsp">Delete </a>
				<a href="logout.jsp">Logout</a>
				<div class="animation start-home"></div>
		</nav>

<form action="sal.jsp" method="get">
<div class="cl">

									<center>
									    <h1> salary </</h1>
									    <br><br>
						
									    				<input type="submit" value="salary 1k to 3k" name="sal1to3" class="cd">  </a>  <br><br>
											 			<input type="submit" value="salary 4k to 6k" name="sa31to6" class="cd">    <br><br>
											 			<input type="submit" value="salary 7k to 10k" name="sal7to10" class="cd">
											 
									</center>
		
		</div>		
</form>
</body>
</html>