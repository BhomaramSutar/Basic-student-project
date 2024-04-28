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
	<link rel="stylesheet" type="text/css" href="css/update.css">
		<link rel="stylesheet" type="text/css" href="css/paged.css">
</head>
<body>
<nav>
				<a href="homepage.jsp">Home</a>
				<a href="search.jsp">search</a>
				<a href="delete.jsp">Delete </a>
				<a href="logout.jsp">Logout</a>
				<div class="animation start-home"></div>
		</nav>
			
<div class="container">
		<div class="title">Update</div>
		<div class="content">
		
				
				<%
				try{
					String id= request.getParameter("id");
					
							Connection db = dbcon.regist();
							Statement st = db.createStatement();
							
							String query;
							query="select * from studreg where id='"+id+"' ";
							
							ResultSet  rs= st.executeQuery(query);
							while(rs.next()){
				%>
		<form method="post" action="update">
						<div class="user-details">
						<input type="hidden" name="id" value="<%=rs.getString("id") %>">

					<div class="input-box">
						<span class="details">Name</span> 
						<input type="text" value="<%=rs.getString("fname") %>"	name="fname"  readonly required>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> 
						<input type="number" value="<%=rs.getString("mobile") %>"
						placeholder="Enter Phone Number" name="mnum" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span> 
						<input type="text" name="email"  value="<%=rs.getString("email") %>" 
							pattern="^[A-Za-z0-9+_.-]+@(.+)$" readonly
							required>
					</div>
					<div class="input-box">
						<span class="details"> Password</span> 
						<input type="password"  value="<%=rs.getString("password") %>"
							name="pass" placeholder="Enter Password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							required>
					</div>
					<div class="input-box">
						<span class="details">Date Of Birth</span>
						 <input type="date" value="<%=rs.getString("dofb") %>" readonly
							name="dofb" required>
					</div>
					<div class="input-box">
						<span class="details">Address</span> 
						<input type="text" 	name="address" 
						value="<%=rs.getString("address") %>"placeholder="Enter Address" required>
					</div>
					<div class="input-box">
						<span class="details">Salery</span> 
						<input type="text" name="sal"
						value="<%=rs.getString("salary") %>" placeholder="Enter Salery" required>
					</div>
				</div>
				<div class="gender-details">
					<input type="radio" name="gender" value="male" id="dot-1" >
					<input type="radio" name="gender" value="female" id="dot-2">
					<span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1"> 
									<span class="dot one" ></span>
									 <span		class="gender">Male</span>
						</label> 
								<label for="dot-2" >
								 <span class="dot two"></span> 
								 		<span		class="gender">Female</span>
						</label> 
					</div>
				</div>

				<div class="button">
					<input type="submit" value="Update"><br>
					<br> <input type="reset" value="clear">
				</div>
				<%
								}
								db.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
				 %>
			</form>
		</div>
	</div>
</body>
</html>