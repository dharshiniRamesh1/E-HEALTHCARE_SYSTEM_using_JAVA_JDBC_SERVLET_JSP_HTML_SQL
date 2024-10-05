<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Registration Form</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<form action="DoctorController" method="post">
    <table>
        <tr>
            <td><b>Basic Information</b></td>
        </tr>
        <tr>
            <td>Doctor Name </td>
            <td><input type="text" name="dname" required></td>
        </tr>
        <tr>
            <td>Address </td>
            <td><input type="text" name="address" required></td>
        </tr>
        <tr>
            <td>Hospital Name </td>
            <td><input type="text" name="hospitalname" required></td>
        </tr>
        <tr>
            <td>Gender </td>
            <td>
                <input type="radio" name="gender" value="Male" required> Male
                <input type="radio" name="gender" value="Female" required> Female
                <input type="radio" name="gender" value="Others" required> Others
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>
</body>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('186176.webp');
    background-color: #f4f4f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form {
    background: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
}

table {
    width: 100%;
}

td {
    padding: 10px;
    
}

input[type="text"],
input[type="radio"] {
    width: calc(100% - 20px);
    padding: 8px;
    margin: 5px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

b {
    display: block;
    margin-bottom: 10px;
    font-size: 1.2em;
}

input[type="radio"] {
    width: auto;
    margin-right: 10px;
}

</style>
</html>



