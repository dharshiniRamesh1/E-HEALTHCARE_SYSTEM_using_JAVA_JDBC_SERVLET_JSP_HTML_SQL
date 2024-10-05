<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Patient Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-container h2 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Edit Patient Profile</h2>
        <form action="UpdatePatientProfileController" method="post">
            <input type="hidden" name="id" value="${patient.id}"/>
            
            <div class="form-group">
                <label for="pname">Name:</label>
                <input type="text" id="pname" name="pname" value="${patient.pname}" required/>
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="${patient.address}" required/>
            </div>

            <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="Male" ${patient.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${patient.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${patient.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
            </div>

            <div class="form-group">
                <input type="submit" value="Update Profile"/>
            </div>

            <c:if test="${not empty requestScope.msg}">
                <div class="error">
                    <p>${requestScope.msg}</p>
                </div>
            </c:if>
        </form>
    </div>
</body>
</html>

