<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@taglib prefix="fun" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      /* Bordered form */
      form {
        border: 3px solid #f1f1f1;
	      max-width: 500px;
	      margin: auto;
	      padding: 16px;
      }

      /* Full-width inputs */
      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #c6c6c6;
        box-sizing: border-box;
      }

      /* Set a style for all buttons */
      button {
        background-color: #ff0000;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
      }

      /* Add a hover effect for buttons */
      button:hover {
        opacity: 0.8;
      }

      /* Extra style for the cancel button (red) */
      .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
      }

      /* Center the avatar image inside this container */
      .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
      }

      /* Avatar image */
      img.avatar {
        width: 100px;
	      height: 100px;
	      border-radius: 50%;
      }

      /* Add padding to containers */
      .container {
        padding: 16px;
      }

      /* The "Forgot password" text */
      span.psw {
        float: right;
        padding-top: 2px;
      }

      span.psp {
        float: left;
        padding-top: 2px;
      }
      /* Change styles for span and cancel button on extra small screens */
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
	<form action="forgotpass" method="post">
	<div class="imgcontainer">
			<img src="https://img.freepik.com/premium-photo/hummingbirdhummingbird-graphic-design-hummingbird-logo-bird-vector-hummingbird_1053378-2106.jpg" alt="Avatar" class="avatar">
		</div>
		<div class="container">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="username"> <label
				for="psw"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email">

			<button type="submit">Retrieve password</button>

			
		</div>
		
	</form>
  </body>
</html>