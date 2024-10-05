<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    td {
        padding: 10px;
    }
    input[type="text"],
    input[type="submit"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="radio"] {
        margin: 0 5px 0 0;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .error-msg {
        color: red;
        text-align: center;
    }
</style>
</head>
<body>
<% String errorMsg = (String) request.getAttribute("errorMsg"); %>
<% if (errorMsg != null) { %>
    <p class="error-msg"><%= errorMsg %></p>
<% } %>
<form action="UpdateDoctorProfileController" method="post">
    <h2>Update Profile</h2>
    <table>
        <tr>
            <td>Doctor ID</td>
            <td><input type="text" name="id" value="${doctor.id}" required></td>
        </tr>
        <tr>
            <td>Doctor Name</td>
            <td><input type="text" name="dname" value="${doctor.dname}" required></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" name="address" value="${doctor.address}" required></td>
        </tr>
        <tr>
            <td>Hospital Name</td>
            <td><input type="text" name="hospitalname" value="${doctor.hospitalname}" required></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input type="radio" name="gender" value="Male" ${doctor.gender == 'Male' ? 'checked' : ''}> Male
                <input type="radio" name="gender" value="Female" ${doctor.gender == 'Female' ? 'checked' : ''}> Female
                <input type="radio" name="gender" value="Others" ${doctor.gender == 'Others' ? 'checked' : ''}> Others
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update"></td>
        </tr>
    </table>
    <a href="DoctorHome.jsp">Click to Homepage</a>
    
</form>
</body>
</html>








