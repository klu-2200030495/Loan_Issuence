<%@page import="com.klef.sdp.springboot.model.Borrower" %>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 <%
 Borrower b = (Borrower)session.getAttribute("borrower");
 %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrower Home</title>
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
			/* Basic Page Layout */
			    
			    

			     .welcome-message {
			         font-size: 24px;
			         color: #34495e;
			         animation: fadeIn 2s ease-in-out;
			         margin-bottom: 20px;
			     }

			     /* Animations */
			  
			     /* Styling for Buttons */
			     .btn {
			         background-color: #3498db;
			         color: white;
			         padding: 10px 20px;
			         font-size: 18px;
			         border: none;
			         border-radius: 5px;
			         cursor: pointer;
			         transition: background-color 0.3s ease;
			     }

			     .btn:hover {
			         background-color: #2980b9;
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
<body>
    <div>
        <%@include file="borrowernavbar.jsp" %>
    </div>
   <!--<div class="container">
        <div class="welcome-message">
            <p>Welcome <%=b.getName() %></p>
        </div>
		--> 
        <!-- Add other sections as needed, such as loan details -->
        <button class="btn">View Loan Details</button>
    </div>
	<!-- Calculator Section -->
	<div>
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
	   <div>	
</body>
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
</html>
