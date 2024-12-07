<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loan Management System</title>
    <!-- Tailwind CSS -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
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
				<a href="http://localhost:8080" class="flex items-center space-x-2">
				    <i class="bi bi-bank2 text-3xl text-primary pulse"></i>
				    <span class="text-2xl font-bold gradient-text">LoanEase</span>
				</a>

                <!-- Links -->
                <div class="hidden md:flex space-x-8">
					<a href="http://localhost:8080" class=" bg-primary text-white rounded-lg hover:bg-secondary transition">HOME</a>
                    
                </div>
                <!-- Buttons -->
                <div class="flex space-x-4">
                    <a href="/borrowerlogin" class="px-6 py-2 text-primary hover:text-secondary transition">User Login</a>
                    <a href="/borrowerreg" class="px-6 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition">Get Started</a>
                </div>
            </div>
        </div>
    </nav>

</body>
</html>
