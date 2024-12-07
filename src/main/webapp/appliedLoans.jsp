<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Applied Loans</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Navbar -->
    <div>
        <%@ include file="borrowernavbar.jsp" %>
    </div>

    <!-- Applied Loans Content -->
    <div class="container mx-auto my-6">
        <h2 class="text-2xl font-bold text-gray-900 mb-4">Applied Loans</h2>
        <table class="min-w-full table-auto border border-gray-300">
            <thead>
                <tr>
                    <th class="px-4 py-2 text-left border-b">Full Name</th>
                    <th class="px-4 py-2 text-left border-b">Email</th>
                    <th class="px-4 py-2 text-left border-b">Loan Amount</th>
                    <th class="px-4 py-2 text-left border-b">Repayment Period</th>
                    <th class="px-4 py-2 text-left border-b">Purpose</th>
                    <th class="px-4 py-2 text-left border-b">Application Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="loan" items="${loanApplications}">
                    <tr>
                        <td class="px-4 py-2 border-b">${loan.fullName}</td>
                        <td class="px-4 py-2 border-b">${loan.email}</td>
                        <td class="px-4 py-2 border-b">${loan.loanAmount}</td>
                        <td class="px-4 py-2 border-b">${loan.repaymentPeriod} months</td>
                        <td class="px-4 py-2 border-b">${loan.purpose}</td>
                        <td class="px-4 py-2 border-b">${loan.applicationDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
