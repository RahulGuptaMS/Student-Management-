<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            transition: background-color 0.4s, color 0.4s;
            background-color: #ffffff;
            color: #1a1a1a;
        }

        .dark-mode {
            background-color: #121212;
            color: #e6e6e6;
        }

        .toggle-container {
            text-align: right;
            padding: 10px 30px 0 0;
            background-color: rgba(0, 0, 0, 0.6);
        }

        .toggle-container input {
            display: none;
        }

        .toggle-label {
            background-color: #000000;
            border-radius: 50px;
            cursor: pointer;
            display: inline-block;
            height: 30px;
            width: 60px;
            position: relative;
            border: 2px solid #fff;
        }

        .toggle-label::after {
            content: '';
            background-color: #ffffff;
            border-radius: 50%;
            position: absolute;
            top: 3px;
            left: 3px;
            height: 24px;
            width: 24px;
            transition: transform 0.3s;
        }

        input:checked + .toggle-label::after {
            transform: translateX(30px);
        }

        nav {
            background-color: #000000;
            padding: 15px 30px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: bold;
            font-size: 1rem;
            transition: 0.3s;
        }

        nav a:hover {
            color: #00bfff;
        }

        .hero-section {
            background: url("img/j5.jpg") no-repeat center center;
            background-size: cover;
            height: 90vh;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
            color: #fff;
            animation: slideUp 1s ease-out forwards;
            opacity: 0;
        }

        .hero-content h1 {
            font-size: 3.2rem;
            margin-bottom: 12px;
            text-shadow: 2px 2px #000000;
        }

        .hero-content p {
            font-size: 1.3rem;
            margin-bottom: 25px;
            color: #f0f0f0;
        }

        .btn-primary {
            background-color: #000000;
            border: 2px solid #ffffff;
            padding: 12px 28px;
            font-size: 1.1rem;
            border-radius: 30px;
            transition: 0.3s ease-in-out;
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #ffffff;
            color: #000000;
            border-color: #000000;
        }

        @keyframes slideUp {
            from {
                transform: translateY(40px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        footer {
            background-color: #1a1a1a;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 0.9rem;
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2rem;
            }

            .hero-content p {
                font-size: 1rem;
            }

            nav {
                flex-direction: column;
                align-items: flex-start;
            }

            nav a {
                margin: 10px 0 0;
            }

            .toggle-container {
                text-align: center;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav>
        <div><strong>Employee Management System</strong></div>
        <div>
            <a href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </nav>

    <!-- Dark Mode Toggle (moved below navbar) -->
    <div class="toggle-container">
        <input type="checkbox" id="darkToggle">
        <label for="darkToggle" class="toggle-label"></label>
    </div>

    <!-- Hero Section -->
    <div class="hero-section">
        <div class="overlay"></div>
        <div class="hero-content">
            <h1>Welcome to Student Management</h1>
            <p>Simple. Bold. Efficient.</p>
            <a href="login.jsp" class="btn-primary">Get Started</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        © 2025 Student Management System
    </footer>

    <!-- Dark Mode Script -->
    <script>
        const toggle = document.getElementById('darkToggle');
        toggle.addEventListener('change', () => {
            document.body.classList.toggle('dark-mode');
        });
    </script>
</body>
</html>

