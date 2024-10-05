<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message</title>
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
    .message-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .message-container p {
        font-size: 18px;
        color: #333;
        text-align: center;
    }
</style>
<script>
    setTimeout(function() {
        window.location.href = 'index.jsp'; // Redirect to the index page after 3 seconds
    }, 3000); // 3000 milliseconds = 3 seconds
</script>
</head>
<body>
<%
    String msg = (String) request.getAttribute("msg");
    if (msg != null) {
%>
    <div class="message-container">
        <p><%= msg %></p>
    </div>
<%
    }
%>
</body>
</html>


