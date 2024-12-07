<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Borrowers</title>

<!-- Add Tailwind CSS link -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>

<body class="bg-gray-50">

<%@ include file="adminnavbar.jsp" %> <!-- Include navbar -->

<!-- Total Borrowers Count -->
<div class="max-w-7xl mx-auto p-6 w-full">
    <p class="text-xl font-bold text-gray-900 text-center">
        Total Borrowers: <c:out value="${count}"></c:out>
    </p>
    
    <div class="bg-white rounded-lg shadow-sm p-6 mt-6 w-full">
        <div class="flex justify-between items-center mb-4">
            <h2 class="text-lg font-semibold text-gray-900">All Borrowers</h2>
         <a href="/createborrower"><button class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">New Borrower</button></a>
        </div>
        
        <div class="overflow-x-auto">
            <table class="min-w-full">
                <thead>
                    <tr class="border-b">
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">ID</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Gender</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date of Birth</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Email</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Location</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Contact No</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Annual Income</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Monthly Expenses</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th> <!-- New Actions Column -->
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <!-- Iterate through the list of borrowers and display their data -->
                    <c:forEach items="${borrowerlist}" var="borrower">
                        <tr>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.id}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.name}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.gender}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.dateofbirth}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.email}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.location}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.contact}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.annualIncome}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><c:out value="${borrower.monthlyExpenses}"></c:out></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                                <!-- Update Button -->
								<a href="/updateborrower?id=${borrower.id}" class="px-4 py-2 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600">Update</a>
								<a href="/deleteborrower?id=${borrower.id}" class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 ml-2">Delete</a>
								</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-gray-800 text-white text-center py-4 mt-6">
    <p>Loan Issuance System - Admin Panel</p>
</footer>

</body>
</html>
