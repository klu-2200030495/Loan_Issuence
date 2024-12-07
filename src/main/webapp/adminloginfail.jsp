<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8d7da;
        color: #721c24;
        text-align: center;
        padding: 50px;
        animation: fadeIn 2s ease-in-out;
    }

    h1 {
        font-size: 36px;
        color: #721c24;
        margin-bottom: 20px;
        animation: bounceIn 1.5s ease;
    }

    .message {
        font-size: 24px;
        font-weight: bold;
        margin: 20px 0;
        color: #721c24;
        animation: shake 0.5s ease-in-out infinite alternate;
    }

    a {
        text-decoration: none;
        color: white;
        background-color: #dc3545;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 18px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #c82333;
    }

    /* Keyframes for animations */
    @keyframes fadeIn {
        0% { opacity: 0; }
        100% { opacity: 1; }
    }

    @keyframes bounceIn {
        0% { transform: translateY(-100px); opacity: 0; }
        60% { transform: translateY(30px); opacity: 1; }
        100% { transform: translateY(0); }
    }

    @keyframes shake {
        0% { transform: translateX(-5px); }
        100% { transform: translateX(5px); }
    }
</style>
</head>
<body>
    <h1>Login Failed</h1>
    <div class="message">
        <c:out value="${message}"></c:out>
    </div>
    <a href="adminlogin">Try Again</a>
</body>
</html>
