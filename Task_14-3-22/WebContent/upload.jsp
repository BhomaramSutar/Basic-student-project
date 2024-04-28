<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="task.dbcon"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload file</title>

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

	<form method="POST" action="update">

		<h1>:Enter Student Data :</h1>


		<table align="center" cellpadding="10">
			<!--------------------- First Name ------------------------------------------>
			<%
				String email = (String) session.getAttribute("email");
				int i = 1;
				String n , e ;
				String a = request.getParameter("fna");
	
			%>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname"
					value="<%=n %> " maxlength="50" readonly/></td>
			</tr>

			<!------------------------ Last Name --------------------------------------->
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" maxlength="50"
					placeholder="sutar" /></td>
			</tr>

			<!-------------------------- Email ID ------------------------------------->


			<tr>
				<td>Email ID</td>
				<td><input type="email" name="emailid"
					value="<%=e %>" maxlength="50" readonly /></td>
			</tr>
		

			<!-------------------------- Mobile Number ------------------------------------->
			<tr>
				<td>Mobile Number</td>
				<td><input type="text" name="mno" maxlength="10"
					placeholder="1234569879" /></td>
			</tr>
			<!---------------------- Gender ------------------------------------->
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="Gender" value="Male" /> Male <input
					type="radio" name="Gender" value="Female" /> Female</td>
			</tr>
			<!--------------------------Date Of Birth----------------------------------->
			<tr>
				<td>Date of Birth(DOB)</td>
				<td><input type="date" name="bdate"></td>
			</tr>

			<!------------------------- Address ---------------------------------->
			<tr>
				<td>Address<br /> <br /> <br /></td>
				<td><textarea name="address" rows="1" cols="20" maxlength="50"></textarea></td>
			</tr>
			<!---------------------------- Courses ----------------------------------->
			<tr>
				<td>Courses<br />Applied For
				</td>
				<td><select name="field">
						<option value="-1">Courses:</option>
						<option value="BCA" name="BCA">BCA</option>
						<option value="B.Com" name="B.Com">B.Com</option>
						<option value="B.Sc" name="B.Sc">B.Sc</option>
						<option value="BA" name="BA">BA</option>
						<option value="MCA" name="MCA">MCA</option>
						<option value="M.Com" name="M.Com">M.Com</option>
				</select></td>
			</tr>
			<!----------------------- Submit and Reset ------------------------------->
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit" name="sub"> <input type="reset"
					value="Reset"></td>
			</tr>
		</table>



	</form>

</body>
</html>