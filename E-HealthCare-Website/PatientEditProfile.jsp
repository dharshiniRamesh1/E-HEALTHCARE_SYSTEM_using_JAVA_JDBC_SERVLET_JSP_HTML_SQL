<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-container table {
        width: 100%;
    }
    .form-container td {
        padding: 10px;
    }
    .form-container input[type="text"],
    .form-container input[type="file"],
    .form-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .form-container input[type="radio"] {
        margin-right: 10px;
    }
    .form-container input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    .form-container input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<%
    // Retrieve patient information from session or request attribute
    com.model.Patient patient = (com.model.Patient) request.getSession().getAttribute("patient");
    if (patient == null) {
        response.sendRedirect("PatientLogin.jsp");
        return;
    }
%>
<div class="form-container">
    <form action="PatientEditProfileController" enctype="multipart/form-data" method="post">
        <table>
            <tr>
                <td>Patient Name</td>
                <td><input type="text" name="pname" value="<%= patient.getPname() %>"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" value="<%= patient.getAddress() %>"></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <input type="radio" name="gender" value="Male" <%= patient.getGender().equals("Male") ? "checked" : "" %>> Male
                    <input type="radio" name="gender" value="Female" <%= patient.getGender().equals("Female") ? "checked" : "" %>> Female
                    <input type="radio" name="gender" value="Others" <%= patient.getGender().equals("Others") ? "checked" : "" %>> Others
                </td>
            </tr>
            <tr>
                <td>Prescription</td>
                <td><input type="file" name="prescription"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update Profile"></td>
            </tr>
        </table>
        <a href="PatientProfile.jsp">Click here to Homepage</a>
    </form>
</div>
</body>
</html>






