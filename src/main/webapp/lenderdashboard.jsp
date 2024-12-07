<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Lender Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50">
    <%@include file="borrowernavbar.jsp" %>
    <!-- Main Content -->
    <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Dashboard Overview -->
        <div class="mb-8">
            <h1 class="text-2xl font-bold text-gray-900 mb-4">Lender Dashboard</h1>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-gray-500">Total Loans Lent</p>
                            <p class="text-2xl font-semibold text-gray-900">154</p>
                        </div>
                        <i class="bi bi-handshake text-blue-500 text-3xl"></i>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-gray-500">Total Earnings</p>
                            <p class="text-2xl font-semibold text-gray-900">$235,000</p>
                        </div>
                        <i class="bi bi-coin text-green-500 text-3xl"></i>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-gray-500">Outstanding Loans</p>
                            <p class="text-2xl font-semibold text-gray-900">$76,000</p>
                        </div>
                        <i class="bi bi-exclamation-circle text-red-500 text-3xl"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recent Borrowers -->
		<div class="bg-white rounded-lg shadow-sm p-6">
		    <div class="flex justify-between items-center mb-4">
		        <h2 class="text-lg font-semibold text-gray-900">Recent Borrowers</h2>
		    </div>
		    <div class="overflow-x-auto">
		        <table class="min-w-full">
		            <thead>
		                <tr class="border-b">
		                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Borrower</th>
		                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Loan Amount</th>
		                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Interest Rate</th>
		                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Repayment Schedule</th>
		                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Repayment Status</th>
		                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Action</th>
		                </tr>
		            </thead>
		            <tbody class="bg-white divide-y divide-gray-200" id="loanTableBody">
		                <!-- Borrower Entries -->
		                <tr>
		                    <td class="px-6 py-4 text-sm text-gray-900">John Doe</td>
		                    <td class="px-6 py-4 text-sm text-gray-900">$10,000</td>
		                    <td class="px-6 py-4 text-sm text-gray-900">5%</td>
		                    <td class="px-6 py-4 text-sm text-gray-900">2024-12-15 14:00</td>
		                    <td class="px-6 py-4 text-sm text-green-500">On Schedule</td>
		                    <td class="px-6 py-4 text-sm">
		                        <button class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600">Send Alert</button>
		                    </td>
		                </tr>
		                <tr>
		                    <td class="px-6 py-4 text-sm text-gray-900">Jane Smith</td>
		                    <td class="px-6 py-4 text-sm text-gray-900">$20,000</td>
		                    <td class="px-6 py-4 text-sm text-gray-900">7%</td>
		                    <td class="px-6 py-4 text-sm text-gray-900">2024-11-30 10:00</td>
		                    <td class="px-6 py-4 text-sm text-red-500">Late Payment</td>
		                    <td class="px-6 py-4 text-sm">
		                        <button class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600">Send Alert</button>
		                    </td>
		                </tr>
		                <!-- Additional rows can be added here -->
		            </tbody>
		        </table>
		    </div>
		</div>

    </main>

    <script>
        // Function to send an alert to a borrower
       
    </script>
</body>
</html>
