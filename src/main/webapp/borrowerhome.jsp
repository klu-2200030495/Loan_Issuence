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
     <title>Borrower Home</title>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>LoanEase - Smart Loan Management</title>
     <script src="https://cdn.tailwindcss.com"></script>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
     <style>
         body { font-family: 'Poppins', sans-serif; }

         /* Centering container */
         .container {
             display: flex;
             justify-content: center;
             align-items: center;
             min-height: 100vh;
             text-align: center;
         }

         /* Welcome message style */
         .welcome-message {
             font-size: 24px;
             color: #34495e;
             margin-bottom: 20px;
         }

         /* Button style */
         .btn {
             background-color: #3498db;
             color: white;
             padding: 10px 20px;
             font-size: 18px;
             border: none;
             border-radius: 5px;
             cursor: pointer;
             transition: background-color 0.3s ease;
         }

         .btn:hover {
             background-color: #2980b9;
         }
     </style>
 </head>
 <body>
     <div>
         <%@include file="borrowernavbar.jsp" %>
     </div>
     <div class="container">
         <div>
             <div class="welcome-message">
                 <p>Welcome <%=b.getName() %></p>
             </div>
             <button class="btn">View Loan Details</button>
         </div>
     </div>
 </body>
 </html>