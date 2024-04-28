<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/registration.css">
</head>
<body>

	<div class="container">
		<div class="title">Registration</div>
		<div class="content">
			<form method="post" action="regis">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Name</span> <input type="text"
							name="fname" placeholder="Enter your name" required>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="number"
							name="mnum" placeholder="Enter your number" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="text" name="email"
							placeholder="Enter your email" pattern="^[A-Za-z0-9+_.-]+@(.+)$"
							required>
					</div>
					<div class="input-box">
						<span class="details"> Password</span> <input type="password"
							name="pass" placeholder="Enter Password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							required>
					</div>
					<div class="input-box">
						<span class="details">Date Of Birth</span> <input type="date"
							name="dofb" required>
					</div>
					<div class="input-box">
						<span class="details">Address</span> 
						<input type="text" 	name="address" placeholder="Enter Address" required>
					</div>
					<div class="input-box">
						<span class="details">Salery</span> 
						<input type="text" name="sal" placeholder="Enter Salery" required>
					</div>
				</div>
				<div class="gender-details">
					<input type="radio" name="gender" value="male" id="dot-1">
					<input type="radio" name="gender" value="female" id="dot-2">
					<span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1"> <span class="dot one"></span> <span
							class="gender">Male</span>
						</label> <label for="dot-2"> <span class="dot two"></span> <span
							class="gender">Female</span>
						</label> <label> </label>
					</div>
				</div>
				<div class="button">
					<input type="submit" value="Register"><br>
					<br> <input type="reset" value="clear">
				</div>
			</form>
		</div>
	</div>

</body>
</html>