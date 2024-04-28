<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<div class="container">
		<div class="screen">
			<div class="screen__content">
				<form class="login" method="post" action="login">
					<div class="login__field">
						<i class="login__icon fas fa-user"></i> 
						<input type="text"	class="login__input" name="user"	pattern="^[A-Za-z0-9+_.-]+@(.+)$" placeholder="Email">
					</div>
					<div class="login__field">
						<i class="login__icon fas fa-lock"></i> 
						<input type="password" 	class="login__input" name="pass"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							placeholder="Password">
					</div>
					<button class="button login__submit">
						<span class="button__text">Log In Now</span> <i
							class="button__icon fas fa-chevron-right"></i>
					</button>

					<button class="button login__submit"  name="s1">
						<span class="button__text">
						<a href="registration.jsp" name="s1">
								Sign Up</a>	</span>
								 <i class="button__icon fas fa-chevron-right"></i>
					</button>

				</form>

			</div>
			<div class="screen__background">
				<span class="screen__background__shape screen__background__shape4"></span>
				<span class="screen__background__shape screen__background__shape3"></span>
				<span class="screen__background__shape screen__background__shape2"></span>
				<span class="screen__background__shape screen__background__shape1"></span>
			</div>
		</div>
	</div>
</body>
</html>