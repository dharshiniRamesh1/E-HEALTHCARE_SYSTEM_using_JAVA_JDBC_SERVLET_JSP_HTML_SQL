<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Home</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Welcome to e-healthcare</h1>
    </header>
    <nav>
        <ul>
            <li><a href="View.jsp?page=1">View Doctors</a></li>
            <li><a href="PatientEditProfile.jsp">Update Profile</a></li>
            <li><a href="Logout1.jsp">Logout</a></li>
        </ul>
    </nav>
    <main>
        <section>
            <h2>Your Dashboard</h2>
            <p>Here you can manage your patients, update your profile, and more.</p>
        </section>
    </main>
    <a href="index.jsp">Click here to Homepage</a>
    <footer>
        <p>&copy; 2024 Your Medical Application</p>
    </footer>
</body><style>
/* General Styles */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f9; /* Light background color */
    color: #333; /* Dark text color for readability */
}

/* Header Styles */
header {
    background-color: #007bff; /* Bootstrap primary blue */
    color: white;
    padding: 20px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

header h1 {
    margin: 0;
    font-size: 24px;
}

/* Navigation Styles */
nav {
    background-color: #343a40; /* Dark background for navigation */
    color: white;
}

nav ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
}

nav ul li {
    margin: 0;
}

nav ul li a {
    display: block;
    padding: 15px 20px;
    color: white;
    text-decoration: none;
    font-size: 16px;
    transition: background-color 0.3s;
}

nav ul li a:hover {
    background-color: #495057; /* Darker grey for hover effect */
}

/* Main Content Styles */
main {
    padding: 20px;
    max-width: 1200px;
    margin: 0 auto;
}

section {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

section h2 {
    margin-top: 0;
    font-size: 22px;
}

/* Footer Styles */
footer {
    background-color: #007bff; /* Same color as header */
    color: white;
    text-align: center;
    padding: 10px;
    position: fixed;
    width: 100%;
    bottom: 0;
    box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
}

footer p {
    margin: 0;
    font-size: 14px;
}

</style>
</html>

