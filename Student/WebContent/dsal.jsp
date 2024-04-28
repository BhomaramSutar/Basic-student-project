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
					margin-left:450px;
						margin-top:3	0px;
						height:400px;
						width:600px;
						aign-content:center;
						background-color:#f1f1f1;
						align-items: center;
						 text-align: center;
						 border:5px double ;
						font-family: 'Cherry Swash', cursive;
						
	}
	.bg{
				height:50px;
				width:330px;
				color:red;
				background-color:inherit;
				border:5px solid darkred;
}
</style>

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


<div class="cl">
<form action = "dsal1.jsp" method="get">
									<center>
									    <h1>Enter  salary from range  </</h1>
									    <br><br>
			
												<h2>From</h2> 
									    			<input type="number" placeholder="Enter Salary to Search " name="from" class="bg">
									    			 <br><br>
									    		<h2>To</h2>
									    			 <input type="number" placeholder="Enter Salary to Search " name="to" class="bg">
									    			 <br><br>
									    			 <input type="submit" value="Search Deatils">
											 		
									</center>

			</form>		    
		</div>		
</body>
</html>