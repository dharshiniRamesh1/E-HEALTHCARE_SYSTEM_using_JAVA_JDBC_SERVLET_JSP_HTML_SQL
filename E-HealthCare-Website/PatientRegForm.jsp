<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration Form</title>
</head>
<body>
<form action="PatientContoller" enctype="multipart/form-data" method="post">
    <table>
        <tr>
            <td><b>Basic Information</b></td>
        </tr>
        <tr>
            <td>Patient Name </td>
            <td><input type="text" name="pname"></td>
        </tr>
        <tr>
            <td>Address </td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>Gender </td>
            <td>
                <input type="radio" name="gender" value="Male"> Male
                <input type="radio" name="gender" value="Female"> Female
                <input type="radio" name="gender" value="Others"> Others
            </td>
        </tr>
        <tr>
            <td>Prescription </td>
            <td><input type="file" name="prescription"></td>
        </tr>
        <tr>
            <td><b>Appointment Information</b></td>
        </tr>
        <tr>
            <td>Required Appointment Date</td>
            <td><input type="date" name="appdate"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>
</body>
<style>

body {
    font-family: Arial, sans-serif;
    background-image: url('doct.jpg');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.form-container {
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    padding: 20px;
    margin: 20px;
    width: 80%;
    max-width: 600px;
    backdrop-filter: blur(10px); 
}

.info-box {
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    padding: 20px;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-section {
    margin-top: 20px;
}

h2 {
    color: #333;
    border-bottom: 2px solid #007BFF;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
input[type="date"],
input[type="file"],
input[type="submit"],
input[type="radio"] {
    margin: 5px 0;
    padding: 10px;
    box-sizing: border-box;
    border-radius: 5px;
}

input[type="text"],
input[type="date"],
input[type="file"] {
    width: calc(100% - 22px); 
}

input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
    width: auto;
    padding: 10px 20px;
    border-radius: 5px;
    margin-top: 10px;
}

input[type="submit"]:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}

input[type="radio"] {
    width: auto;
}

fieldset {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
}

legend {
    font-weight: bold;
}

</style>
</html>
