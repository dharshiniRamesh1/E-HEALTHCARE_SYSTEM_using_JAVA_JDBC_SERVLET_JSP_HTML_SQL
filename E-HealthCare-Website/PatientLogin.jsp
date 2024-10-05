<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Login</title>
</head>
<body>
<form action="PatientLoginController" method="post">
    <h2>Patient Login</h2>
    <label for="username">UserName:</label>
    <input type="text" id="username" name="username" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    <input type="submit" value="Login">
</form>
</body>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f5f5f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-image: url('bg.jpg'); 
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
}

form {
    background: rgba(255, 255, 255, 0.9); 
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
    width: 350px;
    text-align: center;
    border: 1px solid #ddd;
    position: relative;
}

form:before {
    content: '';
    position: absolute;
    top: -10px;
    left: -10px;
    right: -10px;
    bottom: -10px;
    border-radius: 15px;
    background: linear-gradient(45deg, #ff6b6b, #f8b500, #36d1dc, #b833ff);
    background-size: 400% 400%;
    animation: gradient 10s ease infinite;
    z-index: -1;
    filter: blur(10px);
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
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
    width: calc(100% - 24px);
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

</style>
</html>




