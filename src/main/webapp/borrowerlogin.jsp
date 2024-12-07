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
<%@include file="mainnavbar.jsp" %>
<section id="signin" class="calculator-bg py-20">
    <div class="container mx-auto px-4">
        <h2 class="text-4xl font-bold text-center mb-12 gradient-text" data-aos="fade-up">
            User Login
        </h2>
        <div class="max-w-2xl mx-auto bg-white rounded-lg shadow-xl p-8" data-aos="fade-up">
            <form method="post" action="checkborrowerlogin">
                <div class="grid gap-6">
                    <div>
                        <label class="block text-gray-700 mb-2">Enter Email</label>
                        <input type="text" id="bemail" name="bemail" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>

                    <div>
                        <label class="block text-gray-700 mb-2">Enter Password</label>
                        <input type="password" id="bpwd" name="bpwd" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-primary" required />
                    </div>

                    <div class="mt-4">
                        <input type="submit" value="Login" class="w-full bg-primary text-white py-3 rounded-lg hover:bg-secondary transition" />
                        <input type="reset" value="Clear" class="w-full bg-gray-300 text-black py-3 rounded-lg hover:bg-gray-400 mt-2 transition" />
                    </div>
                    
                    <!-- Forgot Password Link -->
                    <div class="mt-4 text-center">
                        <a href="forgot-password.html" class="text-primary hover:underline">Forgot Password?</a>
                    </div>
                </div>
            </form>
            <div class="message">
                <c:if test="${not empty errorMessage}">
                    <span class="text-red-500">${errorMessage}</span>
                </c:if>
            </div>
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