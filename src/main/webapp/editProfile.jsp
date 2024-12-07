<%@ page import="com.klef.sdp.springboot.model.Borrower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Borrower b = (Borrower) session.getAttribute("borrower");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <style>
        /* Add your styling here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #2c3e50;
            font-size: 36px;
            margin-top: 50px;
        }

        .form-container {
            width: 50%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 18px;
            color: #34495e;
            margin-bottom: 10px;
            display: block;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <br><br><br><br>
    <div class="form-container">
        <h3>Edit Profile</h3>
        <form action="updateProfile" method="POST">
            <input type="hidden" name="id" value="<%= b.getId() %>"/>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%= b.getName() %>" required/><br/>

            <label for="gender">Gender:</label>
            <input type="text" id="gender" name="gender" value="<%= b.getGender() %>" required/><br/>

            <label for="dob">Date of Birth:</label>
            <input type="text" id="dob" name="dob" value="<%= b.getDateofbirth() %>" required/><br/>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= b.getEmail() %>" required/><br/>

            <label for="location">Location:</label>
            <input type="text" id="location" name="location" value="<%= b.getLocation() %>" required/><br/>

            <label for="contact">Contact:</label>
            <input type="text" id="contact" name="contact" value="<%= b.getContact() %>" required/><br/>

            <button type="submit">Save Changes</button>
        </form>
    </div>
</body>
</html>