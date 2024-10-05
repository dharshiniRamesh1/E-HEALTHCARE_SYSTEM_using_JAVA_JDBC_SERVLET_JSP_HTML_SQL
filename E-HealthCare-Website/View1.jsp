<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.PatientDao" %>
<%@ page import="com.model.Patient" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Records</title>
</head>
<body>
<%
String pgid = request.getParameter("page");
int pid = Integer.parseInt(pgid);
int id = (pid - 1) * 5 + 1; 
int total = 5;

out.println("<h2> Page No: " + pid + "</h2>");
List<Patient> list = PatientDao.getRecords(id, total);
out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Address</th><th>Gender</th><th>Prescription</th></tr>");
for (Patient p : list) {
    out.println("<tr><td>" + p.getId() + "</td><td>" + p.getPname() + "</td><td>" + p.getAddress() + "</td><td>" + p.getGender() + "</td><td>" + (p.getPrescription() != null ? "Available" : "None") + "</td></tr>");
}
out.println("</table>");
%>
<a href="View1.jsp?page=1">1..</a>
<a href="View1.jsp?page=2">2..</a>
<a href="View1.jsp?page=3">3..</a>
<a href="View1.jsp?page=4">4..</a>
<a href="DoctorHome.jsp">Click to Homepage</a>
</body>
<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
}

h2 {
    color: #333;
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

a {
    text-decoration: none;
    color: #007bff;
    padding: 10px;
}

a:hover {
    text-decoration: underline;
}

.pagination {
    text-align: center;
    margin: 20px 0;
}

.pagination a {
    padding: 8px 12px;
    border: 1px solid #ddd;
    margin: 0 5px;
    border-radius: 3px;
}

.pagination a.active {
    background-color: #007bff;
    color: #fff;
    border: 1px solid #007bff;
}


</style>
</html>


