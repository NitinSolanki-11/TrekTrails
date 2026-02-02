<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
 <jsp:include page="common/Mylinks.jsp"></jsp:include>
  <style>
        
        .contact-container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            animation: slideUp 1s ease-out;
        }
        
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        @keyframes fadeInScale {
            from {
                opacity: 0;
                transform: scale(0.8);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
        
        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(-100px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
        
        @keyframes slideInRight {
            from {
                opacity: 0;
                transform: translateX(100px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
        
        @keyframes rotateIn {
            from {
                opacity: 0;
                transform: rotate(-180deg) scale(0.5);
            }
            to {
                opacity: 1;
                transform: rotate(0deg) scale(1);
            }
        }
        
        .contact-header {
            background: linear-gradient(135deg, #2C92B8 0%, #1e6091 100%);
            color: white;
            padding: 40px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
            animation: fadeInScale 1.2s ease-out;
        }
        
        .contact-header::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><circle cx="50" cy="50" r="2" fill="rgba(255,255,255,0.1)"/></svg>') repeat;
            animation: float 20s infinite linear;
        }
        
        @keyframes float {
            0% { transform: translateX(0) translateY(0); }
            100% { transform: translateX(-50px) translateY(-50px); }
        }
        
        .contact-header h1 {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 10px;
            position: relative;
            z-index: 2;
        }
        
        .contact-header p {
            font-size: 1.2rem;
            opacity: 0.9;
            position: relative;
            z-index: 2;
        }
        
        .contact-info-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            animation: slideInLeft 1s ease-out 0.3s both;
        }
        
        .contact-info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }
        
        @keyframes fadeInLeft {
            from {
                opacity: 0;
                transform: translateX(-30px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
        
        .contact-form {
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: slideInRight 1s ease-out 0.5s both;
        }
        
        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
            padding: 15px;
            border-radius: 10px;
            transition: all 0.3s ease;
            animation: fadeInScale 0.8s ease-out both;
        }
        
        .info-item:nth-child(1) { animation-delay: 0.8s; }
        .info-item:nth-child(2) { animation-delay: 1s; }
        .info-item:nth-child(3) { animation-delay: 1.2s; }
        .info-item:nth-child(4) { animation-delay: 1.4s; }
        .info-item:nth-child(5) { animation-delay: 1.6s; }
        
        .info-item:hover {
            background: rgba(44, 146, 184, 0.1);
            transform: translateX(10px);
        }
        
        .info-icon {
            width: 50px;
            height: 50px;
            background: linear-gradient(135deg, #2C92B8, #1e6091);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.2rem;
            margin-right: 20px;
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        .social-icons {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
            animation: fadeInUp 1s ease-out 1.8s both;
        }
        
        .social-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 1.2rem;
            animation: rotateIn 0.6s ease-out both;
        }
        
        .social-icon:nth-child(1) { animation-delay: 2s; }
        .social-icon:nth-child(2) { animation-delay: 2.1s; }
        .social-icon:nth-child(3) { animation-delay: 2.2s; }
        .social-icon:nth-child(4) { animation-delay: 2.3s; }
        .social-icon:nth-child(5) { animation-delay: 2.4s; }
        
        .social-icon:hover {
            transform: translateY(-5px) scale(1.1);
            color: white;
        }
        
        .facebook { background: #3b5998; }
        .twitter { background: #1da1f2; }
        .instagram { background: linear-gradient(45deg, #f09433, #e6683c, #dc2743, #cc2366, #bc1888); }
        .linkedin { background: #0077b5; }
        .youtube { background: #ff0000; }
        
        .form-control {
            border: 2px solid #e9ecef;
            border-radius: 10px;
            padding: 15px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }
        
        .form-control:focus {
            border-color: #2C92B8;
            box-shadow: 0 0 0 0.2rem rgba(44, 146, 184, 0.25);
        }
        
        .btn-submit {
            background: linear-gradient(135deg, #2C92B8, #1e6091);
            border: none;
            border-radius: 10px;
            padding: 15px 40px;
            font-size: 1.1rem;
            font-weight: 600;
            color: white;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        
        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(44, 146, 184, 0.4);
            color: white;
        }
        
        .btn-submit::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            transition: left 0.5s;
        }
        
        .btn-submit:hover::before {
            left: 100%;
        }
        
        .feature-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 30px;
            padding: 20px;
            border-radius: 10px;
            transition: all 0.3s ease;
            border: 2px solid transparent;
            animation: slideInRight 0.8s ease-out both;
        }
        
        .feature-item:nth-child(1) { animation-delay: 0.7s; }
        .feature-item:nth-child(2) { animation-delay: 0.9s; }
        .feature-item:nth-child(3) { animation-delay: 1.1s; }
        .feature-item:nth-child(4) { animation-delay: 1.3s; }
        
        .feature-item:hover {
            background: rgba(44, 146, 184, 0.05);
            border-color: rgba(44, 146, 184, 0.2);
            transform: translateX(5px);
        }
        
        .feature-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #2C92B8, #1e6091);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            margin-right: 20px;
            flex-shrink: 0;
            animation: bounce 2s infinite;
        }
        
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
            40% { transform: translateY(-5px); }
            60% { transform: translateY(-3px); }
        }
        
        .cta-section {
            background: linear-gradient(135deg, rgba(44, 146, 184, 0.1), rgba(30, 96, 145, 0.1));
            padding: 30px;
            border-radius: 15px;
            border: 2px solid rgba(44, 146, 184, 0.2);
            animation: fadeInScale 0.8s ease-out 1.5s both;
        }
        
        .btn-outline-primary {
            border: 2px solid #2C92B8;
            color: #2C92B8;
            border-radius: 10px;
            padding: 15px 30px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .btn-outline-primary:hover {
            background: linear-gradient(135deg, #2C92B8, #1e6091);
            border-color: #2C92B8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(44, 146, 184, 0.3);
        }
        
        .map-container {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s ease-out 0.7s both;
            position: relative;
            width: 100%;
            height: 0;
            padding-bottom: 56.25%; /* 16:9 aspect ratio */
        }
        
        .map-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .section-title {
            font-size: 2rem;
            font-weight: 600;
            color: white;
            margin-bottom: 30px;
            text-align: center;
            position: relative;
            background: linear-gradient(135deg, #2C92B8, #1e6091);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(44, 146, 184, 0.3);
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 50px;
            height: 3px;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 2px;
        }
        
        @media (max-width: 768px) {
            .contact-header h1 {
                font-size: 2rem;
            }
            
            .contact-form, .contact-info-card {
                padding: 20px;
            }
            
            .info-item {
                flex-direction: column;
                text-align: center;
            }
            
            .info-icon {
                margin-right: 0;
                margin-bottom: 10px;
            }
            
            .feature-item {
                flex-direction: column;
                text-align: center;
            }
            
            .feature-icon {
                margin-right: 0;
                margin-bottom: 15px;
            }
            
            .social-icons {
                flex-wrap: wrap;
                gap: 10px;
            }
            
            .map-container {
                padding-bottom: 75%; /* 4:3 aspect ratio for mobile */
            }
            
            .section-title {
                font-size: 1.5rem;
                padding: 15px;
            }
        }
        
        @media (max-width: 576px) {
            body {
                padding: 10px 0;
            }
            
            .contact-container {
                margin: 0 10px;
            }
            
            .contact-header {
                padding: 30px 15px;
            }
            
            .contact-header h1 {
                font-size: 1.8rem;
            }
            
            .contact-header p {
                font-size: 1rem;
            }
            
            .map-container {
                padding-bottom: 100%; /* Square aspect ratio for very small screens */
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
 <jsp:include page="common/general_header.jsp"></jsp:include>
  <div class="container">
        <div class="contact-container">
            <!-- Header Section -->
            <div class="contact-header">
                <h1><i class="fas fa-map-marked-alt me-3"></i>Contact Us</h1>
                <p>Ready for your next adventure? Get in touch with our expert tour guides!</p>
            </div>
            
            <div class="container py-5">
                <div class="row">
                    <!-- Contact Information -->
                    <div class="col-lg-6 mb-4">
                        <div class="contact-info-card">
                            <h2 class="section-title">Get In Touch</h2>
                            
                            <div class="info-item">
                                <div class="info-icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <div>
                                    <h5 class="mb-1">Our Location</h5>
                                    <p class="mb-0 text-muted">123 Adventure Street, Tourism District<br>Mathura, Uttar Predesh ,India</p>
                                </div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-icon">
                                    <i class="fas fa-phone"></i>
                                </div>
                                <div>
                                    <h5 class="mb-1">Phone Number</h5>
                                    <p class="mb-0 text-muted">+91 7668895115<br>+91 9411670098</p>
                                </div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-icon">
                                    <i class="fas fa-envelope"></i>
                                </div>
                                <div>
                                    <h5 class="mb-1">Email Address</h5>
                                    <p class="mb-0 text-muted">trektrailsinfo@gmail.com<br>bookingstrektrails@gmail.com</p>
                                </div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-icon">
                                    <i class="fas fa-clock"></i>
                                </div>
                                <div>
                                    <h5 class="mb-1">Business Hours</h5>
                                    <p class="mb-0 text-muted">Mon - Fri: 9:00 AM - 6:00 PM<br>Sat - Sun: 10:00 AM - 4:00 PM</p>
                                </div>
                            </div>
                            
                            <!-- Social Media Icons -->
                            <div class="social-icons">
                                <a href="#" class="social-icon facebook" title="Facebook">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" class="social-icon twitter" title="Twitter">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="#" class="social-icon instagram" title="Instagram">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a href="https://www.linkedin.com/in/nitin-solanki-515807257/"  target="new" class="social-icon linkedin" title="LinkedIn">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                                <a href="https://www.youtube.com/watch?v=winzzRq7Yg4" target="new" class="social-icon youtube" title="YouTube">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Contact Form -->
                    <div class="col-lg-6">
                        <div class="contact-form">
                            <h2 class="section-title">Why Choose Us?</h2>
                            
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-award"></i>
                                </div>
                                <div>
                                    <h4 class="mb-2">Expert Local Guides</h4>
                                    <p class="text-muted">Our certified tour guides have 10+ years of experience and deep local knowledge to make your trip unforgettable.</p>
                                </div>
                            </div>
                            
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-shield-alt"></i>
                                </div>
                                <div>
                                    <h4 class="mb-2">Safe & Secure Tours</h4>
                                    <p class="text-muted">All our tours are fully insured and follow strict safety protocols. Your safety is our top priority.</p>
                                </div>
                            </div>
                            
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-users"></i>
                                </div>
                                <div>
                                    <h4 class="mb-2">Small Group Experience</h4>
                                    <p class="text-muted">We keep our groups small (max 12 people) to ensure personalized attention and authentic experiences.</p>
                                </div>
                            </div>
                            
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div>
                                    <h4 class="mb-2">5-Star Reviews</h4>
                                    <p class="text-muted">Over 2,000 satisfied customers have rated us 5 stars. Read our reviews on TripAdvisor and Google.</p>
                                </div>
                            </div>
                            
                            <div class="cta-section text-center mt-4">
                                <h5 class="mb-3">Ready to Book Your Adventure?</h5>
                                <div class="d-flex gap-3 justify-content-center flex-wrap">
                                    <button class="btn btn-submit">
                                        <i class="fas fa-phone me-2"></i>Call Now
                                    </button>
                                    <button class="btn btn-outline-primary">
                                        <i class="fas fa-envelope me-2"></i>Email Us
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Map Section -->
                <div class="row mt-5">
                    <div class="col-12">
                        <h2 class="section-title">Find Us Here</h2>
                        <div class="map-container">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31217.257232772565!2d77.8819080290456!3d27.518111662248128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39737d2c6116a507%3A0x6315ca6f714fbea5!2sSolanki%20mansion!5e0!3m2!1sen!2sin!4v1754382727506!5m2!1sen!2sin" 
                         style="border:0;"
                          allowfullscreen="" 
                          loading="lazy" 
                          referrerpolicy="no-referrer-when-downgrade">
                          </iframe>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Button click handlers
        document.addEventListener('DOMContentLoaded', function() {
            // Call Now button
            const callBtn = document.querySelector('.btn-submit');
            if (callBtn) {
                callBtn.addEventListener('click', function() {
                    window.location.href = 'tel:+15551234567';
                });
            }
            
            // Email Us button
            const emailBtn = document.querySelector('.btn-outline-primary');
            if (emailBtn) {
                emailBtn.addEventListener('click', function() {
                    window.location.href = 'mailto:info@adventuretours.com?subject=Tour Inquiry&body=Hello, I would like to know more about your tours.';
                });
            }
        });
        
        // Add smooth scrolling animation on page load
        window.addEventListener('load', function() {
            const elements = document.querySelectorAll('.contact-info-card, .contact-form, .map-container');
            elements.forEach((element, index) => {
                element.style.animationDelay = `${index * 0.2}s`;
            });
        });
        
        // Add hover effects to social icons
        document.querySelectorAll('.social-icon').forEach(icon => {
            icon.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-5px) scale(1.1) rotate(5deg)';
            });
            
            icon.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1) rotate(0deg)';
            });
        });
    </script>
  <jsp:include page="common/general_footer.jsp"></jsp:include>
  </div>

</body>
</html>