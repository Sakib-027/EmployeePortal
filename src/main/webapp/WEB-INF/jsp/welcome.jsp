<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.employee.model.Employee" %>

<%
    Employee emp = (Employee) session.getAttribute("loggedInUser");

    if (emp == null) {
        response.sendRedirect("login");
        return;
    }

    List<Employee> employeeList =
        (List<Employee>) request.getAttribute("employeeList");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }

        .container {
            width: 85%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
        }

        .welcome-box {
            text-align: center;
        }

        .logout-link {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #2196F3;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        th {
            background-color: #2196F3;
            color: white;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
    </style>
</head>

<body>

<div class="container">

    <!-- Welcome Section -->
    <div class="welcome-box">
        <h2>Welcome</h2>
        <h3>Hello, <%= emp.getName() %> 👋</h3>
        <p>You have successfully logged in.</p>
        
    </div>

    <hr/>

    <!-- Employee List -->
    <h2 style="text-align:center;">Registered Employees</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>City</th>
                <th>State</th>
                <th>Login ID</th>
            </tr>
        </thead>
        <tbody>
        <%
            if (employeeList != null) {
                for (Employee e : employeeList) {
        %>
            <tr>
                <td><%= e.getId() %></td>
                <td><%= e.getName() %></td>
                <td><%= e.getGender() %></td>
                <td><%= e.getCity() %></td>
                <td><%= e.getState() %></td>
                <td><%= e.getLoginId() %></td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
<a class="logout-link" href="logout">Logout</a>
</div>


</body>
</html>
