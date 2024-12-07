<%
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoanEase - Smart Loan Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .gradient-text {
            background: linear-gradient(45deg, #840606, #250404);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .hero-gradient {
            background: linear-gradient(135deg, #fff5f5 0%, #ffe6e6 100%);
        }
        .floating { animation: float 6s ease-in-out infinite; }
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
            100% { transform: translateY(0px); }
        }
        .slide-in { animation: slideIn 1s ease-out; }
        @keyframes slideIn {
            from { transform: translateX(-100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }
        .pulse { animation: pulse 2s infinite; }
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }
        .calculator-bg {
            background: linear-gradient(135deg, #fff5f5 0%, #ffe6e6 100%);
        }
        .fade-in {
            animation: fadeIn 1s ease-in;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .role-card {
            transition: transform 0.3s ease;
        }
        .role-card:hover {
            transform: translateY(-10px);
        }
		.typewriter {
		    overflow: hidden;
		    border-right: .15em solid #840606;
		    white-space: nowrap;
		    margin: 0 auto;
		    letter-spacing: .15em;
		    animation: 
		        typing 3.5s steps(40, end),
		        blink-caret .75s step-end infinite;
		}
		@keyframes typing {
		    from { width: 0 }
		    to { width: 100% }
		}
		@keyframes blink-caret {
		    from, to { border-color: transparent }
		    50% { border-color: #840606; }
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
<body class="overflow-x-hidden bg-white">
    <!-- Navigation -->
    <nav class="bg-white fixed w-full z-50 shadow-sm">
        <div class="container mx-auto px-4 py-3">
            <div class="flex justify-between items-center">
				<a href="http://localhost:8080" class="flex items-center space-x-2">
				    <i class="bi bi-bank2 text-3xl text-primary pulse"></i>
				    <span class="text-2xl font-bold gradient-text">LoanEase</span>
				</a>

                <div class="hidden md:flex space-x-8">
					<a href="http://localhost:8080" class=" bg-primary text-white rounded-lg hover:bg-secondary transition">HOME</a>
                    <a href="#features" class="text-gray-600 hover:text-primary transition">Features</a>
                    <a href="#calculator" class="text-gray-600 hover:text-primary transition">Loan Calculator</a>
                    <a href="#loan-management" class="text-gray-600 hover:text-primary transition">Our Services</a>
					<a href="#interest-rates" class="text-gray-600 hover:text-primary transition">Interest Rates</a>
					<a href="adminlogin" class=" bg-primary text-white rounded-lg hover:bg-secondary transition">ADMIN LOGIN</a>
                </div>
                <div class="flex space-x-4">
                    <a href="/borrowerlogin" class="px-6 py-2 text-primary hover:text-secondary transition">Login</a>
                    <a href="/borrowerreg" class="px-6 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition">Get Started</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-gradient min-h-screen pt-20">
        <div class="container mx-auto px-4 py-20">
            <div class="grid md:grid-cols-2 gap-12 items-center">
                <div data-aos="fade-right">
                    <h1 class="text-5xl md:text-6xl font-bold leading-tight mb-6 typewriter">
                       <span class="gradient-text">Loan Management</span>
                    </h1>
                    <p class="text-gray-600 text-lg mb-8 fade-in" data-aos="fade-up" data-aos-delay="200">
                        Transform your lending experience with our intelligent platform. 
                        Perfect for lenders, borrowers, and financial analysts.
                    </p>
                    <div class="flex space-x-4" data-aos="fade-up" data-aos-delay="400">
                        <a href="#calculator" class="px-8 py-3 bg-primary text-white rounded-lg hover:bg-secondary transition flex items-center">
                            <i class="bi bi-calculator-fill mr-2"></i> Try Calculator
                        </a>
                        <a href="#demo" class="px-8 py-3 border border-primary text-primary rounded-lg hover:bg-red-50 transition flex items-center">
                            <i class="bi bi-play-circle-fill mr-2"></i> Watch Demo
                        </a>
                    </div>
                </div>
                <div class="relative" data-aos="fade-left">
                    <img src="https://images.unsplash.com/photo-1553729459-efe14ef6055d?ixlib=rb-4.0.3" 
                         alt="Dashboard Preview" 
                         class="rounded-lg shadow-2xl floating">
                </div>
            </div>
        </div>
    </section>

	<section id="loan-management" class="py-20 bg-white">
	    <div class="container mx-auto px-4">
	        <h2 class="text-4xl font-bold text-center mb-12 gradient-text" data-aos="fade-up">
	            Loan Management Services
	        </h2>
	        <div class="grid md:grid-cols-3 gap-8">
	            <!-- Personal Loan -->
	            <div class="loan-card bg-white p-6 rounded-xl shadow-lg" data-aos="fade-up">
	                <div class="text-primary text-4xl mb-4">
	                    <i class="bi bi-house-door"></i>
	                </div>
	                <h3 class="text-2xl font-bold mb-4">Personal Loan</h3>
	                <ul class="space-y-2 text-gray-600">
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Flexible Payment Plans</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Low Interest Rates</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Quick Approval Process</li>
	                </ul>
	            </div>

	            <!-- Home Loan -->
	            <div class="loan-card bg-white p-6 rounded-xl shadow-lg" data-aos="fade-up" data-aos-delay="200">
	                <div class="text-primary text-4xl mb-4">
	                    <i class="bi bi-building"></i>
	                </div>
	                <h3 class="text-2xl font-bold mb-4">Home Loan</h3>
	                <ul class="space-y-2 text-gray-600">
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Long Term Financing</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Lower EMI Options</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Easy Documentation</li>
	                </ul>
	            </div>

	            <!-- Car Loan -->
	            <div class="loan-card bg-white p-6 rounded-xl shadow-lg" data-aos="fade-up" data-aos-delay="400">
	                <div class="text-primary text-4xl mb-4">
	                    <i class="bi bi-car-front"></i>
	                </div>
	                <h3 class="text-2xl font-bold mb-4">Car Loan</h3>
	                <ul class="space-y-2 text-gray-600">
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Easy Repayments</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Competitive Interest Rates</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Instant Approval</li>
	                </ul>
	            </div>
	        </div>

	        <!-- New Row with Additional Loan Types -->
	        <div class="grid md:grid-cols-3 gap-8 mt-8">
	            <!-- Education Loan -->
	            <div class="loan-card bg-white p-6 rounded-xl shadow-lg" data-aos="fade-up">
	                <div class="text-primary text-4xl mb-4">
	                    <i class="bi bi-book"></i>
	                </div>
	                <h3 class="text-2xl font-bold mb-4">Education Loan</h3>
	                <ul class="space-y-2 text-gray-600">
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Low Interest Rates</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Flexible Repayment</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Quick Disbursement</li>
	                </ul>
	            </div>

	            <!-- Business Loan -->
	            <div class="loan-card bg-white p-6 rounded-xl shadow-lg" data-aos="fade-up" data-aos-delay="200">
	                <div class="text-primary text-4xl mb-4">
	                    <i class="bi bi-briefcase"></i>
	                </div>
	                <h3 class="text-2xl font-bold mb-4 ">Business Loan</h3>
	                <ul class="space-y-2 text-gray-600 ">
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Quick Loan Approval</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Flexible Terms</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Easy Access to Funds</li>
	                </ul>
	            </div>

	            <!-- Student Loan -->
	            <div class="loan-card bg-white p-6 rounded-xl shadow-lg" data-aos="fade-up" data-aos-delay="400">
	                <div class="text-primary text-4xl mb-4">
	                    <i class="bi bi-person-check"></i>
	                </div>
	                <h3 class="text-2xl font-bold mb-4">Student Loan</h3>
	                <ul class="space-y-2 text-gray-600">
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Low EMI Options</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Flexible Repayment Terms</li>
	                    <li><i class="bi bi-check2 text-primary mr-2"></i>Easy Application Process</li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</section>

    <!-- Calculator Section -->
    <section id="calculator" class="calculator-bg py-20">
        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-bold text-center mb-12 gradient-text" data-aos="fade-up">
                Loan Calculator
            </h2>
            <div class="max-w-2xl mx-auto bg-white rounded-lg shadow-xl p-8" data-aos="fade-up">
                <div class="grid gap-6">
                    <div>
                        <label class="block text-gray-700 mb-2">Loan Amount</label>
                        <input type="number" id="loanAmount" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" placeholder="Enter amount">
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Loan Term (Years)</label>
                        <input type="number" id="loanTerm" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" placeholder="Enter years">
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Interest Rate (%)</label>
                        <input type="number" id="interestRate" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" placeholder="Enter rate">
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Loan Type</label>
                        <select id="loanType" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary">
                            <option value="personal">Personal Loan</option>
                            <option value="home">Home Loan</option>
                            <option value="business">Business Loan</option>
                            <option value="education">Education Loan</option>
                        </select>
                    </div>
					<div>
						<label class="block text-gray-700 mb-2">Interest Type</label>
						<select id="interestType" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary">
						    <option value="simple">Simple Interest</option>
						    <option value="compound">Compound Interest</option>
						</select>
						<div>
					<br><br>
                    <button onclick="calculateLoan()" class="w-full bg-primary text-white py-3 rounded-lg hover:bg-secondary transition">
                        Calculate EMI
                    </button>
                    <div id="result" class="hidden">
                        <div class="bg-red-50 p-6 rounded-lg">
                            <h3 class="text-xl font-semibold mb-4">Loan Summary</h3>
                            <div class="grid grid-cols-2 gap-2">
                                <div>
                                    <p class="text-gray-600">Monthly EMI</p>
                                    <p id="emiAmount" class="text-2xl font-bold text-primary"></p>
                                </div>
                                <div>
                                    <p class="text-gray-600">Total Interest</p>
                                    <p id="totalInterest" class="text-2xl font-bold text-primary"></p>
                                </div>
                                <div>
                                    <p class="text-gray-600">Total Payment</p>
                                    <p id="totalPayment" class="text-2xl font-bold text-primary"></p>
                                </div>
                           
                        </div>
						<canvas id="loanChart" class="mt-4"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<!-- Features Section -->
	<section id="features" class="py-20 bg-white">
	    <div class="container mx-auto px-4">
	        <h2 class="text-4xl font-bold text-center mb-12 gradient-text" data-aos="fade-up">
	            Key Features
	        </h2>
	        <div class="grid md:grid-cols-3 gap-8">
	            <!-- Feature 1 -->
	            <div class="p-6 rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105" data-aos="fade-up">
	                <i class="bi bi-shield-check text-4xl text-primary mb-4"></i>
	                <h3 class="text-xl font-bold mb-2">Secure Processing</h3>
	                <p class="text-gray-600">With advanced security measures, we ensure the safety of all your transactions and sensitive data.</p>
	            </div>
	            <!-- Feature 2 -->
	            <div class="p-6 rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105" data-aos="fade-up" data-aos-delay="200">
	                <i class="bi bi-lightning text-4xl text-primary mb-4"></i>
	                <h3 class="text-xl font-bold mb-2">Fast Approval</h3>
	                <p class="text-gray-600">Quick and automated loan approval processes to save you time and effort.</p>
	            </div>
	            <!-- Feature 3 -->
	            <div class="p-6 rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105" data-aos="fade-up" data-aos-delay="400">
	                <i class="bi bi-graph-up-arrow text-4xl text-primary mb-4"></i>
	                <h3 class="text-xl font-bold mb-2">Smart Analytics</h3>
	                <p class="text-gray-600">Gain insights into your financial progress with detailed reports and analysis tools.</p>
	            </div>
	            <!-- Feature 4 -->
	            <div class="p-6 rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105" data-aos="fade-up" data-aos-delay="600">
	                <i class="bi bi-sliders text-4xl text-primary mb-4"></i>
	                <h3 class="text-xl font-bold mb-2">Flexible Loan Plans</h3>
	                <p class="text-gray-600">Choose repayment plans that suit your budget and preferences.</p>
	            </div>
	            <!-- Feature 5 -->
	            <div class="p-6 rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105" data-aos="fade-up" data-aos-delay="800">
	                <i class="bi bi-headset text-4xl text-primary mb-4"></i>
	                <h3 class="text-xl font-bold mb-2">24/7 Support</h3>
	                <p class="text-gray-600">Round-the-clock customer service for all your queries and assistance needs.</p>
	            </div>
	            <!-- Feature 6 -->
	            <div class="p-6 rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105" data-aos="fade-up" data-aos-delay="1000">
	                <i class="bi bi-receipt text-4xl text-primary mb-4"></i>
	                <h3 class="text-xl font-bold mb-2">Transparent Terms</h3>
	                <p class="text-gray-600">No hidden charges or confusing terms. Everything is straightforward and clear.</p>
	            </div>
	        </div>

	        <!-- Image/Text Sections -->
	        <div class="mt-16 grid md:grid-cols-2 gap-12 items-center">
	            <!-- Section 1 -->
	            <div data-aos="fade-right">
	                <img src="https://plus.unsplash.com/premium_photo-1683121710572-7723bd2e235d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0aWZpY2lhbCUyMGludGVsbGlnZW5jZXxlbnwwfHwwfHx8MA%3D%3D" alt="Feature Image 1" class="rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105">
	            </div>
				<div data-aos="fade-left">
				    <h3 class="text-3xl font-bold mb-4 gradient-text">AI-Powered Insights</h3>
				    <p class="text-gray-600">Leverage our advanced AI engine to make smarter financial decisions with ease. Gain access to predictive insights, trend analysis, and personalized recommendations tailored to your financial profile. From forecasting loan eligibility to optimizing repayment plans, our AI ensures you stay ahead with data-driven strategies, improving your overall financial health.</p>
				</div>


	            <!-- Section 2 -->
				<div data-aos="fade-right">
				    <h3 class="text-3xl font-bold mb-4 gradient-text">Custom Notifications</h3>
				    <p class="text-gray-600">Stay updated with personalized alerts for payments, exclusive offers, and new features tailored to your preferences. Receive reminders for upcoming due dates, alerts about special interest rates, and real-time updates on your application status. Empower your financial journey with timely and relevant information at your fingertips.</p>
				</div>

	            <div data-aos="fade-left">
	                <img src="https://images.unsplash.com/photo-1643845892686-30c241c3938c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Tm90aWZpY2F0aW9uc3xlbnwwfHwwfHx8MA%3D%3D" alt="Feature Image 2" class="rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105">
	            </div>

	            <!-- Section 3 -->
	            <div data-aos="fade-right">
	                <img src="https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHRlY2glMjBwbGF0Zm9ybXxlbnwwfHwwfHx8MA%3D%3D" alt="Feature Image 3" class="rounded-lg shadow-lg hover:shadow-2xl transform transition duration-300 hover:scale-105">
	            </div>
				<div data-aos="fade-left">
				    <h3 class="text-3xl font-bold mb-4 gradient-text">Multi-Platform Access</h3>
				    <p class="text-gray-600">Enjoy seamless connectivity and manage your finances on the go. Whether you’re using a smartphone, desktop, or tablet, our platform is optimized to deliver a consistent and user-friendly experience across all devices. Stay in control of your transactions, check loan statuses, and access tools anytime, anywhere with our responsive and secure platform.</p>
				</div>

	        </div>
	    </div>
	</section>

	<!-- Enhanced Real-Time Interest Rates Section with Different Animations -->
	<section id="interest-rates" class="py-20 bg-gradient-to-r from-gray-50 to-blue-100">
	    <div class="container mx-auto px-4">
	        <h2 class="text-4xl font-bold text-center mb-12 gradient-text" data-aos="zoom-out-up">
	            Real-Time Interest Rates
	        </h2>
	        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
	            <!-- Home Loans -->
	            <div class="relative bg-white border-2 border-indigo-300 shadow-lg rounded-lg p-6 transition-transform hover:scale-110" data-aos="slide-right">
	                <h3 class="text-xl font-bold mb-2 text-indigo-600">Home Loans</h3>
	                <p class="text-gray-700">
	                    Enjoy competitive home loan interest rates starting from <strong>6.50%</strong>. Government schemes like <i>PMAY</i> offer even better opportunities.
	                </p>
	                <div class="absolute top-0 right-0 mt-3 mr-3 bg-indigo-100 text-indigo-800 text-sm font-bold px-2 py-1 rounded">Popular</div>
	            </div>
	            <!-- Personal Loans -->
	            <div class="relative bg-white border-2 border-green-300 shadow-lg rounded-lg p-6 transition-transform hover:scale-110" data-aos="rotate-left">
	                <h3 class="text-xl font-bold mb-2 text-green-600">Personal Loans</h3>
	                <p class="text-gray-700">
	                    Flexible personal loan options at interest rates ranging from <strong>10.50%</strong> to <strong>15.00%</strong>, catering to all your needs.
	                </p>
	            </div>
	            <!-- Vehicle Loans -->
	            <div class="relative bg-white border-2 border-yellow-300 shadow-lg rounded-lg p-6 transition-transform hover:scale-110" data-aos="zoom-out-down">
	                <h3 class="text-xl font-bold mb-2 text-yellow-600">Vehicle Loans</h3>
	                <p class="text-gray-700">
	                    Get behind the wheel with rates starting at <strong>7.50%</strong>. Quick approvals and minimal paperwork guaranteed.
	                </p>
	            </div>
	            <!-- Education Loans -->
	            <div class="relative bg-white border-2 border-purple-300 shadow-lg rounded-lg p-6 transition-transform hover:scale-110" data-aos="slide-left">
	                <h3 class="text-xl font-bold mb-2 text-purple-600">Education Loans</h3>
	                <p class="text-gray-700">
	                    Invest in your future with rates starting at <strong>9.00%</strong>. Special benefits for students at top-tier institutions.
	                </p>
	            </div>
	            <!-- Business Loans -->
	            <div class="relative bg-white border-2 border-red-300 shadow-lg rounded-lg p-6 transition-transform hover:scale-110" data-aos="rotate-right">
	                <h3 class="text-xl font-bold mb-2 text-red-600">Business Loans</h3>
	                <p class="text-gray-700">
	                    Empower your business with loans at <strong>11.25%</strong>. Customized plans for SMEs and startups.
	                </p>
	            </div>
	            <!-- Student Loans -->
	            <div class="relative bg-white border-2 border-teal-300 shadow-lg rounded-lg p-6 transition-transform hover:scale-110" data-aos="zoom-out-up">
	                <h3 class="text-xl font-bold mb-2 text-teal-600">Student Loans</h3>
	                <p class="text-gray-700">
	                    Affordable student loans starting from <strong>9.00%</strong>. Enjoy deferred payment plans while you study.
	                </p>
	            </div>
	        </div>
	        <div class="mt-10 text-center" data-aos="fade-in">
	            <a href="https://www.rbi.org.in" target="_blank" class="inline-block bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-800 transition">
	                View More Current Rates
	            </a>
	        </div>
	    </div>
	</section>

    <!-- Footer -->
    <footer class="bg-secondary text-white py-12">
        <div class="container mx-auto px-4">
            <div class="grid md:grid-cols-4 gap-8">
                <div data-aos="fade-up">
                    <h3 class="text-xl font-bold mb-4">LoanEase</h3>
                    <p class="text-gray-400">Your trusted partner in loan management.</p>
                </div>
                <div data-aos="fade-up" data-aos-delay="100">
                    <h4 class="font-semibold mb-4">Quick Links</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li><a href="#" class="hover:text-white">Features</a></li>
                        <li><a href="#" class="hover:text-white">Calculator</a></li>
                        <li><a href="#" class="hover:text-white">Services</a></li>
                    </ul>
                </div>
                <div data-aos="fade-up" data-aos-delay="200">
                    <h4 class="font-semibold mb-4">Contact</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li><i class="bi bi-envelope mr-2"></i>support@loanease.com</li>
                        <li><i class="bi bi-telephone mr-2"></i>+1 (555) 123-4567</li>
                    </ul>
                </div>
                <div data-aos="fade-up" data-aos-delay="300">
                    <h4 class="font-semibold mb-4">Follow Us</h4>
                    <div class="flex space-x-4">
                        <a href="#" class="hover:text-primary transition"><i class="bi bi-twitter text-xl"></i></a>
                        <a href="#" class="hover:text-primary transition"><i class="bi bi-linkedin text-xl"></i></a>
                        <a href="#" class="hover:text-primary transition"><i class="bi bi-facebook text-xl"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
        AOS.init({
            duration: 1000,
            easing: 'ease-in-out',
            once: true
        });

        let loanChart;

		function calculateLoan() {
		    const amount = parseFloat(document.getElementById('loanAmount').value);
		    const years = parseFloat(document.getElementById('loanTerm').value);
		    const rate = parseFloat(document.getElementById('interestRate').value);
		    const type = document.getElementById('interestType').value;

		    if (!amount || !years || !rate) {
		        alert('Please fill in all fields');
		        return;
		    }

		    let totalInterest = 0;
		    let totalPayment = 0;
		    let emi = 0;

		    if (type === 'simple') {
		        // Simple Interest Calculation
		        totalInterest = (amount * rate * years) / 100;
		        totalPayment = amount + totalInterest;
		        emi = totalPayment / (years * 12);
		    } else if (type === 'compound') {
		        // Compound Interest Calculation
		        const monthlyRate = rate / 1200; // Monthly interest rate
		        const months = years * 12; // Total number of months
		        totalPayment = amount * Math.pow(1 + monthlyRate, months); // Compound interest formula
		        totalInterest = totalPayment - amount;
		        emi = totalPayment / months;
		    }

		    // Display Results
		    document.getElementById('result').classList.remove('hidden');
		    document.getElementById('emiAmount').textContent = '\u20B9' + (Math.round(emi * 100) / 100).toFixed(2);
		    document.getElementById('totalInterest').textContent = '\u20B9' + (Math.round(totalInterest * 100) / 100).toFixed(2);
		    document.getElementById('totalPayment').textContent = '\u20B9' + (Math.round(totalPayment * 100) / 100).toFixed(2);

		    // Update or create chart
		    if (loanChart) {
		        loanChart.destroy();
		    }

		    const ctx = document.getElementById('loanChart').getContext('2d');
		    loanChart = new Chart(ctx, {
		        type: 'pie',
		        data: {
		            labels: ['Principal Amount', 'Total Interest'],
		            datasets: [{
		                data: [amount, totalInterest],
		                backgroundColor: ['#840606', '#250404'],
		            }]
		        },
		        options: {
		            responsive: true,
		            plugins: {
		                legend: {
		                    position: 'bottom',
		                },
		                title: {
		                    display: true,
		                    text: 'Loan Breakdown'
		                }
		            }
		        }
		    });

		    // Smooth scroll to results
		    document.getElementById('result').scrollIntoView({ behavior: 'smooth' });
		
        }
    </script>
</body>
</html>