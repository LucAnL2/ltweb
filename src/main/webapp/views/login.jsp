<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@taglib prefix="fun" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Bordered form */
form {
	border: 3px solid #f1f1f1;
	max-width: 500px;
	margin: auto;
	padding: 16px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #fe1004;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 2px;
	padding-bottom: 5px;
}

span.psp {
	float: right;
	padding-top: 2px;
}

@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>
	<c:if test="${alert !=null}">
		<h3 class="alert alertdanger">${alert}</h3>
	</c:if>
	<form action="login" method="post">
		<div class="imgcontainer">
			<img
				src="https://img.freepik.com/premium-photo/hummingbirdhummingbird-graphic-design-hummingbird-logo-bird-vector-hummingbird_1053378-2106.jpg"
				alt="Avatar" class="avatar" />
		</div>

		<div class="container">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="username" /> <label for="psw"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="password" />

			<label> <input type="checkbox" name="remember" /> Remember
				me
			</label> <span class="psw"> <a
				href="http://localhost:8080/btltwebct2/forgotpass">Forgot
					password ?</a></span>

			<button type="submit">Login</button>

			<span class="psp">If you do not have an account on the system,
				please <a href="http://localhost:8080/btltwebct2/register">register.</a>
			</span>
		</div>
	</form>
</body>
</html>