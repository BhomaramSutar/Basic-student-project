<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup"  name="s1">
				<form action="registration" method="post">
					<label for="chk" aria-hidden="true">Sign up</label>
					<input type="text" name="uname" placeholder="User name" required="">
					<input type="email" name="semail" placeholder="Email" 	pattern="^[A-Za-z0-9+_.-]+@(.+)$"  required="">
					
					<input type="password" name="spswd" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  							 title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
  							   required="">
					<button>Sign up</button>
				</form>
			</div>

			<div class="login">
				<form method = "post" action = "loginv">
					<label for="chk" aria-hidden="true">Login</label>
					<input type="email" name="lemail" placeholder="Email" pattern="^[A-Za-z0-9+_.-]+@(.+)$" required="">
					<input type="password" name="lpswd" placeholder="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  				 title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required="">
					<button>Login</button>
				</form>
			</div>
	</div>
</body>
</html>