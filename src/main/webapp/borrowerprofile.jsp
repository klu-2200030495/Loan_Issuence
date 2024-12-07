<%@page import="com.klef.sdp.springboot.model.Borrower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Borrower b = (Borrower)session.getAttribute("borrower");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <style>
        /* Body Layout */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        /* Header Styling */
        h3 {
            text-align: center;
            color: #2c3e50;
            font-size: 36px;
            margin-top: 50px;
            animation: fadeIn 2s ease-in-out;
        }

        /* Profile Container */
        .profile-container {
            width: 70%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            animation: slideIn 1s ease-out;
        }

        /* Profile Information */
        .profile-info {
            font-size: 18px;
            color: #34495e;
            margin-bottom: 15px;
        }

        .profile-info strong {
            color: #2980b9;
        }

        /* Navigation Styling */
        .navbar {
            display: flex;
            justify-content: center;
            gap: 20px;
            background-color: #2980b9;
            padding: 10px;
            border-radius: 5px;
            animation: slideIn 1s ease-out;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #1abc9c;
        }

        /* Animations */
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        @keyframes slideIn {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(0); }
        }

        /* Button Styling */
        .btn {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: block;
            width: 200px;
            margin: 20px auto;
        }

        .btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
	<%@include file="borrowernavbar.jsp" %>
	<br><br><br><br>
    <div class="profile-container">
        <h3>My Profile</h3>
        <div class="profile-info">
            <strong>ID: </strong><%=b.getId()%><br/>
            <strong>Name: </strong><%=b.getName()%><br/>
            <strong>Gender: </strong><%=b.getGender()%><br/>
            <strong>Date of Birth: </strong><%=b.getDateofbirth()%><br/>
            <strong>Email: </strong><%=b.getEmail()%><br/>
            <strong>Location: </strong><%=b.getLocation()%><br/>
            <strong>Contact: </strong><%=b.getContact()%><br/>
        </div>

        <button class="btn" onclick="location.href='editProfile'">Edit Profile</button>
    </div>
</body>
</html>
