<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>

<!-- Add CSS styles for the page -->
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f7fafc; /* Lighter background color */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    .message-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        width: 80%;
        max-width: 400px;
        animation: fadeIn 2s ease-in-out;
    }

    .message-container h1 {
        font-size: 24px;
        color: #1D4ED8; /* Primary color */
        margin-bottom: 20px;
    }

    .message-container a {
        display: inline-block;
        padding: 10px 20px;
        margin-top: 20px;
        text-decoration: none;
        background-color: #1D4ED8; /* Primary color */
        color: white;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .message-container a:hover {
        background-color: #2563EB; /* Secondary hover color */
    }

    /* Animation for fade-in effect */
    @keyframes fadeIn {
        0% {
            opacity: 0;
            transform: translateY(20px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Success icon */
    .success-icon {
        font-size: 50px;
        color: #1D4ED8; /* Primary color */
        margin-bottom: 20px;
    }
</style>

</head>
<body>

<!-- Success Message Container -->
<div class="message-container">
    <div class="success-icon">&#x2714;</div> <!-- Checkmark Icon for Success -->
    <h1>Success!</h1>
    <p><c:out value="${message}"></c:out></p>
    <a href="borrowerlogin">Login Here</a>
</div>

</body>
</html>
