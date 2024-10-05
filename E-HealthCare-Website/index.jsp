<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Online Hospital Management</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Welcome to E-Healthcare</h1>
    </header>
    <div class="container">
        <div class="content">
          
            <a href="PatientRegForm.jsp">Patient Registration Form</a>
            <a href="DoctorRegForm.jsp">Doctor Registration Form</a>
            <a href="DoctorLogin.jsp">Doctor Login</a>
            <a href="PatientLogin.jsp">Patient Login</a>
        </div>
    </div>
</body>
<style>
/* styles.css */

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('background.webp'); /* Ensure this path is correct */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    color: #333;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

header {
    width: 100%;
    background-color: rgba(0, 123, 255, 0.9); /* Semi-transparent blue */
    color: #fff;
    padding: 20px 0;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1000;
}

header h1 {
    margin: 0;
    font-size: 3em; /* Larger font size */
}

.container {
    width: 80%;
    max-width: 1200px;
    padding: 80px 20px 40px; 
    margin: auto;
    text-align: center;
    background: rgba(255, 255, 255, 0.8); 
    border-radius: 15px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    margin-top: 100px; /* Margin to ensure the content is visible */
}

h2 {
    color: #333;
    margin-top: 0;
    font-size: 2.5em; /* Larger font size */
    margin-bottom: 20px;
}

a {
    display: inline-block;
    margin: 10px 15px;
    padding: 15px 30px;
    text-decoration: none;
    color: #fff;
    background-color: #007BFF;
    border-radius: 10px;
    transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
    font-size: 1.2em; /* Slightly larger font size */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

a:hover {
    background-color: #0056b3;
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
}

footer {
    width: 100%;
    background-color: rgba(0, 123, 255, 0.9);
    color: #fff;
    padding: 10px 0;
    text-align: center;
    position: relative;
    bottom: 0;
    left: 0;
    z-index: 1000;
}

footer p {
    margin: 0;
    font-size: 0.9em;
}



</style>
</html>



