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
body {
    font-family: Arial, sans-serif;
    background-color: #f3f3f3;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.main {
    background-color: #ffffff;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    padding: 20px;
    width: 300px;
}

.main h2 {
    color: #ff0000;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #a72828;
    font-weight: bold;
}

input[type="text"], input[type="email"], input[type="password"], input[type="date"],
    select {
    width: 100%;
    margin-bottom: 15px;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #ddd;
    border-radius: 5px;
}

button[type="submit"] {
    padding: 15px;
    border-radius: 10px;
    border: none;
    background-color: #ff0000;
    color: white;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
}

button[type="submit"]:hover {
    background-color: #bb1919;
}
</style>
</head>
<body>
    <c:if test="${alert != null}">
        <h3 class="alert alertdanger">${alert}</h3>
    </c:if>

    <div class="main">
        <h2>Registration Form</h2>
        <hr>
        <form action="register" method="post">
            <label for="username">User name:</label>
            <input type="text" id="username" name="username" placeholder="Enter Username" required />
            
            <label for="fullname">Full name:</label>
            <input type="text" id="fullname" name="fullname" placeholder="Enter Full name" required />
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="Enter Email" />
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required />
            
            <label for="repassword">Re-type Password:</label>
            <input type="password" id="repassword" name="repassword" placeholder="Repeat Password" required />
            
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" placeholder="Enter Phone" maxlength="10" required />

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
