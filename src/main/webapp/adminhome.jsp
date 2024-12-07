<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- Bootstrap Icons for additional iconography -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        /* CSS Variables for Easy Theme Management */
        :root {
            --primary-color: #6a11cb;
            --secondary-color: #2575fc;
            --background-color: #f0f4f8;
            --card-bg-color: rgba(255, 255, 255, 0.85);
            --text-color: #333;
            --highlight-color: #ff5722;
            --button-bg-color: #ff5722;
            --button-hover-color: #e64a19;
            --shadow-color: rgba(0, 0, 0, 0.1);
        }

        /* Global Styles */
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background:white;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Navbar Styling */
        .navbar {
            background-color: rgba(44, 62, 80, 0.9);
            color: #ecf0f1;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            position: sticky;
            top: 0;
            z-index: 1000;
            transition: background-color 0.3s ease;
        }

        .navbar:hover {
            background-color: rgba(44, 62, 80, 1);
        }

        /* Main Container */
        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Card Styling */
        .card {
            background-color: var(--card-bg-color);
            border-radius: 15px;
            box-shadow: 0 8px 16px var(--shadow-color);
            padding: 30px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            opacity: 0;
            transform: translateY(20px);
            animation: fadeInUp 0.6s forwards;
        }

        /* Staggered Animation Delay for Multiple Cards */
        .card:nth-child(2) {
            animation-delay: 0.2s;
        }

        .card:nth-child(3) {
            animation-delay: 0.4s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px var(--shadow-color);
        }

        /* Card Headers */
        .card h2 {
            color: var(--text-color);
            margin-bottom: 15px;
            font-size: 28px;
        }

        /* Card Paragraphs */
        .card p {
            color: #555;
            font-size: 18px;
            line-height: 1.6;
        }

        /* Highlighted Numbers */
        .highlight {
            font-size: 40px;
            color: var(--highlight-color);
            font-weight: bold;
            display: inline-block;
            margin: 10px 0;
            animation: pulse 2s infinite;
        }

        /* Button Styling */
        .button {
            display: inline-block;
            padding: 12px 25px;
            color: #fff;
            background-color: var(--button-bg-color);
            border: none;
            border-radius: 30px;
            text-align: center;
            font-size: 18px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .button::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.2);
            transform: translate(-50%, -50%) rotate(45deg);
            opacity: 0;
            transition: opacity 0.3s ease, transform 0.3s ease;
        }

        .button:hover {
            background-color: var(--button-hover-color);
            transform: scale(1.05);
        }

        .button:hover::after {
            opacity: 1;
            transform: translate(-50%, -50%) rotate(0deg);
        }

        /* Animations */
        @keyframes fadeInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            .card {
                padding: 20px;
            }

            .card h2 {
                font-size: 24px;
            }

            .card p {
                font-size: 16px;
            }

            .highlight {
                font-size: 32px;
            }

            .button {
                font-size: 16px;
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    
    <div class="container">
        <div class="card">
            <h2>Loan Management Dashboard</h2>
            <p>Welcome to the Loan Management System. Below is a quick overview of your current loan application data.</p>
        </div>

        <div class="card">
            <h2>Total Borrowers</h2>
            <p>We currently have a total of <span class="highlight"><c:out value="${count}" /></span> registered borrowers in the system.</p>
            <a href="viewallborrowers" class="button">View All Borrowers</a>
        </div>

        <!-- Additional Statistics Card -->
        <div class="card">
            <h2>Other Statistics</h2>
            <p>Number of loans issued: <span class="highlight">150</span></p>
            <p>Active loans: <span class="highlight">120</span></p>
            <p>Total outstanding amount: <span class="highlight">$500,000</span></p>
            <a href="loanDetails.jsp" class="button">View Loan Details</a>
        </div>
    </div>
</body>
</html>
