<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Loan Management System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        .glass-effect {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Navigation -->
   

    <!-- Main Content -->
    <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Dashboard Overview -->
        <div class="mb-8">
            <h1 class="text-2xl font-bold text-gray-900 mb-4">Dashboard Overview</h1>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-gray-500">Total Active Loans</p>
                            <p class="text-2xl font-semibold text-gray-900">254</p>
                        </div>
                        <i class="bi bi-graph-up text-blue-500 text-3xl"></i>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-gray-500">Total Disbursed Amount</p>
                            <p class="text-2xl font-semibold text-gray-900">$1.2M</p>
                        </div>
                        <i class="bi bi-cash-stack text-green-500 text-3xl"></i>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-sm">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-gray-500">Due Payments</p>
                            <p class="text-2xl font-semibold text-gray-900">42</p>
                        </div>
                        <i class="bi bi-calendar-check text-red-500 text-3xl"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recent Loans -->
        <div class="bg-white rounded-lg shadow-sm p-6">
            <div class="flex justify-between items-center mb-4">
                <h2 class="text-lg font-semibold text-gray-900">Recent Loans</h2>
                <button class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">New Loan</button>
            </div>
            <div class="overflow-x-auto">
                <table class="min-w-full">
                    <thead>
                        <tr class="border-b">
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Customer</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Loan Amount</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Interest Rate</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200" id="loanTableBody">
                        <!-- Loan entries will be populated here -->
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <script>
        // Sample data for demonstration
        const loans = [
            { customer: "John Doe", amount: "$25,000", rate: "8.5%", status: "Active" },
            { customer: "Jane Smith", amount: "$15,000", rate: "7.5%", status: "Pending" },
            { customer: "Robert Johnson", amount: "$50,000", rate: "9.0%", status: "Active" },
            { customer: "Sarah Williams", amount: "$30,000", rate: "8.0%", status: "Under Review" }
        ];

        // Populate table with loan data
        const tableBody = document.getElementById('loanTableBody');
        loans.forEach(loan => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td class="px-6 py-4 whitespace-nowrap">
                    <div class="text-sm text-gray-900">${loan.customer}</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <div class="text-sm text-gray-900">${loan.amount}</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <div class="text-sm text-gray-900">${loan.rate}</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full 
                        ${loan.status == 'Active' ? 'bg-green-100 text-green-800' : 
                          loan.status == 'Pending' ? 'bg-yellow-100 text-yellow-800' : 
                          'bg-blue-100 text-blue-800'}">
                        ${loan.status}
                    </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                    <button class="text-blue-600 hover:text-blue-900">View</button>
                    <button class="ml-4 text-blue-600 hover:text-blue-900">Edit</button>
                </td>
            `;
            tableBody.appendChild(row);
        });
    </script>
</body>
</html>