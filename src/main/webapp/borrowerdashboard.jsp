<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Apply for Loan</title>
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
        <%@include file="borrowernavbar.jsp" %>
    </div>

    <!-- Centered Content -->
    <div class="flex items-center justify-center h-[calc(100vh-64px)]">
        <div class="text-center">
            <h1 class="text-3xl font-bold text-gray-900 mb-6">Welcome to LoanEase</h1>
            <p class="text-gray-600 mb-4">Start your journey by applying for a loan with us.</p>
            <button id="applyButton" class="bg-blue-500 text-white text-lg font-semibold px-6 py-3 rounded-lg shadow-md hover:bg-blue-600 transition">
                Apply for Loan
            </button>
        </div>
    </div>

    <!-- Modal -->
    <div id="loanModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center">
        <div class="bg-white w-full max-w-md rounded-lg shadow-lg p-6 relative">
            <h2 class="text-2xl font-bold mb-4 text-gray-900">Apply for Loan</h2>
			<form action="/loan-application/submit" method="POST" id="loanForm">
			    <div class="mb-4">
			        <label for="fullName" class="block text-sm font-medium text-gray-700">Full Name</label>
			        <input type="text" id="fullName" name="fullName" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" required>
			    </div>
			    <div class="mb-4">
			        <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
			        <input type="email" id="email" name="email" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" required>
			    </div>
			    <div class="mb-4">
			        <label for="loanAmount" class="block text-sm font-medium text-gray-700">Loan Amount</label>
			        <input type="number" id="loanAmount" name="loanAmount" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" required>
			    </div>
			    <div class="mb-4">
			        <label for="repaymentPeriod" class="block text-sm font-medium text-gray-700">Repayment Period (in months)</label>
			        <input type="number" id="repaymentPeriod" name="repaymentPeriod" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" required>
			    </div>
			    <div class="mb-4">
			        <label for="purpose" class="block text-sm font-medium text-gray-700">Purpose of Loan</label>
			        <textarea id="purpose" name="purpose" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" required></textarea>
			    </div>
			    <div class="mb-4">
			        <input type="hidden" name="userId" value="USER_ID_HERE">
			    </div>
			    <div class="flex justify-end">
			        <button type="button" id="closeModal" class="bg-gray-300 text-gray-700 px-4 py-2 rounded-lg mr-2 hover:bg-gray-400">Cancel</button>
			        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600">Submit</button>
			    </div>
			</form>

        </div>
    </div>

    <!-- JavaScript -->
    <script>
        const applyButton = document.getElementById('applyButton');
        const loanModal = document.getElementById('loanModal');
        const closeModal = document.getElementById('closeModal');

        // Show modal on button click
        applyButton.addEventListener('click', () => {
            loanModal.classList.remove('hidden');
        });

        // Hide modal on close button click
        closeModal.addEventListener('click', () => {
            loanModal.classList.add('hidden');
        });
    </script>
</body>
</html>
