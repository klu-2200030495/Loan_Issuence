<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Request Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        .gradient-text {
            background: linear-gradient(45deg, #840606, #250404);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-gradient {
            background: linear-gradient(135deg, #fff5f5 0%, #ffe6e6 100%);
        }

        .fade-in {
            animation: fadeIn 1s ease-in;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .floating {
            animation: float 6s ease-in-out infinite;
        }

        @keyframes float {
            0% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-20px);
            }
            100% {
                transform: translateY(0px);
            }
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
<body class="hero-gradient bg-gray-50">
	<%@include file="borrowernavbar.jsp" %>
<section id="loanRequestForm" class="py-20">
    <div class="container mx-auto px-4">
        <h2 class="text-4xl font-bold text-center gradient-text mb-12" data-aos="fade-up">
            Loan Request Form
        </h2>
        <div class="max-w-2xl mx-auto bg-white rounded-lg shadow-xl p-8" data-aos="fade-up">
            <form action="submitLoanRequest" method="post">
                <div class="grid gap-6">
                    <div>
                        <label class="block text-gray-700 mb-2">Borrower Name</label>
                        <input type="text" id="borrowerName" name="borrowerName"
                               class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required
                               minlength="2" maxlength="50">
                    </div>

                    <div>
                        <label class="block text-gray-700 mb-2">Email</label>
                        <input type="email" id="email" name="email"
                               class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required>
                    </div>

                    <div>
                        <label class="block text-gray-700 mb-2">Loan Amount</label>
                        <input type="number" id="loanAmount" name="loanAmount"
                               class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required
                               min="1" step="0.01">
                    </div>

                    <div>
                        <label class="block text-gray-700 mb-2">Loan Purpose</label>
                        <textarea id="loanPurpose" name="loanPurpose" rows="4"
                                  class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary"
                                  required></textarea>
                    </div>

                    <div>
                        <label class="block text-gray-700 mb-2">Repayment Time (in months)</label>
                        <input type="number" id="repaymentTime" name="repaymentTime"
                               class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required min="1">
                    </div>

                    <div class="mt-4">
                        <input type="submit" value="Submit Request"
                               class="w-full bg-primary text-white py-3 rounded-lg hover:bg-secondary transition">
                        <input type="reset" value="Clear"
                               class="w-full bg-gray-300 text-black py-3 rounded-lg hover:bg-gray-400 mt-2 transition">
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<script>
    AOS.init({
        duration: 1000,
        easing: 'ease-in-out',
        once: true
    });
</script>
</body>
</html>
