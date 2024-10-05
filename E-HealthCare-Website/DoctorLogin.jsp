<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f5f5f5; 
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-image: url('186176.webp');
        background-size: cover;
        background-position: center;
    }
    form {
        background: #ffffff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        width: 350px;
        text-align: center;
        border: 1px solid #ddd;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: 600;
    }
    label {
        display: block;
        margin-bottom: 10px;
        color: #555;
        text-align: left;
    }
    input[type="text"],
    input[type="password"] {
        width: calc(100% - 22px);
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 16px;
        transition: border-color 0.3s, box-shadow 0.3s;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #66afe9;
        box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
        outline: none;
    }
    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s, transform 0.2s;
    }
    input[type="submit"]:hover {
        background-color: #218838;
        transform: scale(1.02);
    }
    input[type="submit"]:active {
        background-color: #1e7e34;
    }
    .container {
        max-width: 100%;
        padding: 15px;
    }
</style>
</head>
<body>
<div class="container">
    <form action="DoctorLoginController" method="post">
        <h2>Doctor Login</h2>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>



