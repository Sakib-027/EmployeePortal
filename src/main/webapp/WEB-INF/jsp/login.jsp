<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }
        .container {
            width: 350px;
            margin: 80px auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
        }
        .heading {
            text-align: center;
        }
        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
        }
        input[type=submit] {
            background-color: #2196F3;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color:#1976D2;
        }
        .error {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }
        .register-link {
            text-align: center;
            margin-top: 12px;
            font-size: 13px;
        }
        .register-link a {
            text-decoration: none;
            color: #2196F3;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="heading">
    <h2>Login</h2>
    </div>

    <!-- Error message -->
    <div class="error">
        ${error}
    </div>

    <form action="login" method="post">

        <label>Login ID</label>
        <input type="text" name="loginId" required />

        <label>Password</label>
        <input type="password" name="password" required />

        <input type="submit" value="Login" />

    </form>

    <div class="register-link">
        New user? <a href="register">Register here</a>
    </div>
</div>

</body>
</html>
