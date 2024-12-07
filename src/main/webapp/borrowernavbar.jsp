<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Loan Management System</title>

    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <!-- AOS Animation -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }
        .gradient-text {
            background: linear-gradient(45deg, #840606, #250404);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#840606',
                        secondary: '#250404',
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-gray-50">
    <!-- Navbar -->
    <nav class="fixed top-0 w-full bg-white shadow-lg z-50">
        <div class="px-4 py-3">
            <div class="flex justify-between items-center">
                <!-- Logo -->
                <a href="/borrowerhome" class="flex items-center space-x-2">
                    <i class="bi bi-bank2 text-3xl text-primary pulse"></i>
                    <span class="text-2xl font-bold gradient-text">LoanEase</span>
                </a>

                <!-- Links -->
                <div class="hidden md:flex space-x-8">
                    <a href="lenderdashboard" class="text-gray-600 hover:text-primary transition">Lending Dashboard</a>
                    <a href="borrowerdashboard" class="text-gray-600 hover:text-primary transition">Application Dashboard</a>
                    <a href="calculator" class="text-gray-600 hover:text-primary transition">Loan Calculator</a>
					<a href="loanrequest" class="text-gray-600 hover:text-primary transition">Request Loan</a>

					<a href="/applied-loans" class="text-gray-700 hover:text-gray-900">Applied Loans</a>
                </div>

                <!-- Buttons -->
                <div class="flex space-x-4">
                    <a href="borrowerprofile" class="flex items-center space-x-2">
                        <i class="bi bi-person-circle text-3xl text-primary pulse"></i>
                        <span class="text-2xl font-bold gradient-text">Profile</span>
                    </a>
                    <a href="/borrowerlogout" class="px-6 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition">Logout</a>
                </div>
            </div>
        </div>
    </nav>

   

    <!-- Footer -->
   
    <!-- AOS Initialization -->
    <script>
        AOS.init();
    </script>
</body>
</html>
