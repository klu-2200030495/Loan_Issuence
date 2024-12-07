<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="mainnavbar.jsp" %>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Update Borrower</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        body { font-family: 'Poppins', sans-serif; }
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

<section id="update" class="calculator-bg py-20">
    <div class="container mx-auto px-4">
        <h2 class="text-4xl font-bold text-center mb-12 gradient-text" data-aos="fade-up">
            Update Borrower
        </h2>
        <div class="max-w-2xl mx-auto bg-white rounded-lg shadow-xl p-8" data-aos="fade-up">
            <form method="post" action="/update">
                <input type="hidden" name="id" value="${borrower.id}">
                <div class="grid gap-6">
                    <div>
                        <label class="block text-gray-700 mb-2">Name</label>
                        <input type="text" name="name" value="${borrower.name}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Gender</label>
                        <div>
                            <input type="radio" name="gender" value="Male" ${borrower.gender == 'Male' ? 'checked' : ''} /> Male
                            <input type="radio" name="gender" value="Female" ${borrower.gender == 'Female' ? 'checked' : ''} /> Female
                            <input type="radio" name="gender" value="Others" ${borrower.gender == 'Others' ? 'checked' : ''} /> Others
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Date of Birth</label>
                        <input type="date" name="dateofbirth" value="${borrower.dateofbirth}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Email</label>
                        <input type="email" name="email" value="${borrower.email}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Location</label>
                        <input type="text" name="location" value="${borrower.location}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Contact</label>
                        <input type="text" name="contact" value="${borrower.contact}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Annual Income</label>
                        <input type="number" name="annualIncome" value="${borrower.annualIncome}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Monthly Expenses</label>
                        <input type="number" name="monthlyExpenses" value="${borrower.monthlyExpenses}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" />
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Password</label>
                        <input type="password" name="password" value="${borrower.password}" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>
                </div>
                <div class="mt-4">
                    <input type="submit" value="Update" class="w-full bg-primary text-white py-3 rounded-lg hover:bg-secondary transition" />
                    <input type="reset" value="Clear" class="w-full bg-gray-300 text-black py-3 rounded-lg hover:bg-gray-400 mt-2 transition" />
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
