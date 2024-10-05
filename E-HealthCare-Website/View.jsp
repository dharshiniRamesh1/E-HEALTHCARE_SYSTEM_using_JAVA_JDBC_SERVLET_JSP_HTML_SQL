<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.DoctorDao" %>
<%@ page import="com.model.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Records</title>
</head>
<body>
<%
String pgid = request.getParameter("page");
int pid = Integer.parseInt(pgid);
int id = pid;
int total = 5;
if (id == 1) {
    // No action needed
} else {
    id = id - 1;
    id = id * total + 1;
}

out.println("<h2> Page No: " + pid + "</h2>");
List<Doctor> list = DoctorDao.getRecords(id, total);
out.println("<table border='1'><tr><th>DID</th><th>Name</th><th>Address</th><th>Hospital Name</th><th>Gender</th></tr>");
for (Doctor d : list) {
    out.println("<tr><td>" + d.getId() + "</td><td>" + d.getDname() + "</td><td>" + d.getAddress() + "</td><td>" + d.getHospitalname() + "</td><td>" + d.getGender() + "</td></tr>");
}
out.println("</table>");
%>
<a href="View.jsp?page=1">1..</a>
<a href="View.jsp?page=2">2..</a>
<a href="View.jsp?page=3">3..</a>
<a href="View.jsp?page=4">4..</a>
<li><a href="PatientProfile.jsp">Click here to Homepage</a></li>
</body>
<style>
/* General Styles */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f4f9; /* Light grey background */
    color: #333; /* Dark text color for readability */
    margin: 0;
    padding: 0;
}

/* Table Styles */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: white;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

th, td {
    padding: 12px;
    text-align: left;
}

th {
    background-color: #007bff; 
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2; 
}

tr:hover {
    background-color: #e9ecef;
}

a {
    text-decoration: none;
    color: #007bff;
    font-size: 16px;
    margin: 0 5px;
}

a:hover {
    text-decoration: underline;
}

h2 {
    color: #007bff; /* Blue color for headings */
}

/* Container Styles */
.container {
    width: 80%;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

</style>
</html>

