<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }

        .container {
            width: 450px;
            margin: 40px auto;
            background: white;
            padding: 18px 22px;
            border-radius: 6px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 12px;
            color: #333;
        }

        .row {
            display: flex;
            gap: 10px;
        }

        .row .field {
            flex: 1;
        }

        label {
            font-size: 13px;
            font-weight: bold;
            color: #555;
            margin-top: 8px;
            display: block;
        }

        input, textarea, select {
            width: 100%;
            padding: 7px;
            margin-top: 4px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 13px;
        }

        textarea {
            resize: none;
            height: 45px;
        }

        input[type=submit] {
            margin-top: 15px;
            background-color: #2196F3;
            color: white;
            border: none;
            padding: 9px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color:#1976D2;
        }

        .login-link {	
            text-align: center;
            margin-top: 12px;
            font-size: 13px;
        }

        .login-link a {
            color: #2196F3;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Employee Registration</h2>

    <form action="register" method="post">

        <label>Name</label>
        <input type="text" name="name" required />

        <div class="row">
            <div class="field">
                <label>Date of Birth</label>
                <input type="date" name="dob" required />
            </div>

            <div class="field">
                <label>Gender</label>
                <select name="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>
        </div>

        <label>Address</label>
        <textarea name="address"></textarea>

        <div class="row">
            <div class="field">
                <label>City</label>
                <input type="text" name="city" />
            </div>

            <div class="field">
                <label>State</label>
                <input type="text" name="state" />
            </div>
        </div>

        <label>Login ID</label>
        <input type="text" name="loginId" required />

        <label>Password</label>
        <input type="password" name="password" required />

        <input type="submit" value="Register" />

    </form>

    <div class="login-link">
        Already registered? <a href="login">Login here</a>
    </div>
</div>

</body>
</html>
