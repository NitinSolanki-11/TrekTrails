<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages</title>
<jsp:include page="common/Mylinks.jsp"></jsp:include>
 <!-- External CSS Libraries -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    
    <style>
        /* ========================================
           CSS VARIABLES (Color Scheme)
        ======================================== */
        :root {
            --primary-gradient: linear-gradient(135deg, #2C92B8 0%, #1e6091 100%);
            --secondary-gradient: linear-gradient(135deg, #ff6b6b 0%, #ee5a24 100%);
            --accent-gradient: linear-gradient(135deg, #feca57 0%, #ff9ff3 100%);
        }

        /* ========================================
           GLOBAL STYLES
        ======================================== */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        }

        /* ========================================
           HERO SECTION STYLES
        ======================================== */
        .hero-section {
            background: var(--primary-gradient);
            color: white;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }

        .hero-section::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="25" cy="25" r="1" fill="white" opacity="0.1"/><circle cx="75" cy="75" r="1" fill="white" opacity="0.1"/><circle cx="50" cy="10" r="1" fill="white" opacity="0.1"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>');
            opacity: 0.3;
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        /* ========================================
           WELCOME SLIDER STYLES
        ======================================== */
        .welcome-slider {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            margin: 30px 0;
            overflow: hidden;
        }

        .slide-content {
            padding: 40px;
            text-align: center;
            min-height: 200px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .slider-image, .slide-content img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            object-position: center;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        /* ========================================
           MODULE CARD STYLES
        ======================================== */
        .module-card {
            background: white;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            margin: 20px 0;
            overflow: hidden;
        }

        .module-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }

        .module-header {
            background: var(--primary-gradient);
            color: white;
            padding: 25px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .module-header:hover {
            background: linear-gradient(135deg, #1e6091 0%, #2C92B8 100%);
        }

        /* ========================================
           SECTION NAVIGATION STYLES
        ======================================== */
        .section-nav {
            background: #f8f9fa;
            padding: 15px;
            border-bottom: 1px solid #dee2e6;
        }

        .section-btn {
            background: var(--primary-gradient);
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 25px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .section-btn:hover, .section-btn.active {
            background: var(--secondary-gradient);
            transform: scale(1.05);
        }

        /* ========================================
           PACKAGE CARD STYLES
        ======================================== */
        .package-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin: 15px 0;
            overflow: hidden;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .package-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        /* Package Image with Hover Effect */
        .package-image {
            height: 200px;
            background: var(--accent-gradient);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: white;
            margin: 15px;
            border-radius: 10px;
            overflow: hidden;
            position: relative;
        }

        .package-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
            border-radius: 10px;
        }

        .package-image .icon-overlay {
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.3);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: white;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .package-image:hover .icon-overlay {
            opacity: 1;
        }

        .package-content {
            padding: 20px;
        }

        /* ========================================
           BUTTON AND BADGE STYLES
        ======================================== */
        .price-tag {
            background: var(--secondary-gradient);
            color: white;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: bold;
            display: inline-block;
            margin: 10px 0;
        }

        .book-btn {
            background: var(--primary-gradient);
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 25px;
            font-weight: bold;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .book-btn:hover {
            background: var(--secondary-gradient);
            transform: scale(1.05);
        }

        .book-btn::before {
            content: '';
            position: absolute;
            top: 50%; left: 50%;
            width: 0; height: 0;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: all 0.3s ease;
        }

        .book-btn:hover::before {
            width: 300px;
            height: 300px;
        }

        .security-badge {
            background: var(--accent-gradient);
            color: white;
            padding: 5px 10px;
            border-radius: 15px;
            font-size: 0.8rem;
            margin: 5px;
            display: inline-block;
        }

        /* ========================================
           MODAL STYLES
        ======================================== */
        .detail-modal {
            display: none;
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.8);
            z-index: 1000;
            backdrop-filter: blur(5px);
        }

        .detail-content {
            background: white;
            margin: 2% auto;
            padding: 15px;
            border-radius: 20px;
            max-width: 95%;
            max-height: 90vh;
            overflow-y: auto;
            position: relative;
            animation: slideIn 0.3s ease;
        }

        @media (min-width: 576px) {
            .detail-content {
                margin: 5% auto;
                padding: 30px;
                max-width: 800px;
                max-height: 80vh;
            }
        }

        .close-btn {
            position: absolute;
            top: 15px; right: 20px;
            background: var(--secondary-gradient);
            color: white;
            border: none;
            width: 35px; height: 35px;
            border-radius: 50%;
            cursor: pointer;
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .service-item {
            background: #f8f9fa;
            padding: 15px;
            margin: 10px 0;
            border-radius: 10px;
            border-left: 4px solid #2C92B8;
        }

        /* ========================================
           ANIMATIONS
        ======================================== */
        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .fade-in {
            animation: fadeIn 0.6s ease;
        }

        /* ========================================
           RESPONSIVE DESIGN
        ======================================== */
        @media (max-width: 768px) {
            .hero-section { padding: 40px 0; }
            .slide-content { padding: 20px; min-height: 150px; }
            .package-image { height: 150px; font-size: 2rem; margin: 10px; }
            .package-content { padding: 15px; }
            .module-header { padding: 20px; }
            .section-nav { padding: 10px; }
            .section-btn { padding: 8px 15px; font-size: 0.9rem; }
        }

        @media (max-width: 576px) {
            .hero-section { padding: 30px 0; }
            .slide-content { padding: 15px; min-height: 120px; }
            .package-image { height: 120px; font-size: 1.5rem; margin: 8px; }
            .package-content { padding: 12px; }
            .module-header { padding: 15px; }
            .section-btn { padding: 6px 12px; font-size: 0.8rem; }
            .price-tag { padding: 6px 12px; font-size: 0.8rem; }
            .security-badge { padding: 4px 8px; font-size: 0.7rem; }
            .book-btn { padding: 8px 20px; font-size: 0.9rem; }
        }

        /* Full screen on larger devices */
        @media (min-width: 1200px) {
            .module-card {
                min-height: 80vh;
            }
            .section-content {
                max-height: 70vh;
                overflow-y: auto;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
 <jsp:include page="common/general_header.jsp"></jsp:include>
   <!-- ========================================
         HERO SECTION WITH WELCOME SLIDER
    ======================================== -->
    <section class="hero-section">
        <div class="container">
            <div class="hero-content text-center">
                <!-- Main Title -->
                <h1 class="display-4 fw-bold mb-4">
                    <i class="bi bi-airplane"></i> Dream Tours
                </h1>
                <p class="lead">Your Gateway to Incredible Journeys</p>
                
                <!-- Welcome Carousel Slider -->
                <div class="welcome-slider">
                    <div id="welcomeCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">
                        
                        <!-- Carousel Indicators -->
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#welcomeCarousel" data-bs-slide-to="0" class="active"></button>
                            <button type="button" data-bs-target="#welcomeCarousel" data-bs-slide-to="1"></button>
                            <button type="button" data-bs-target="#welcomeCarousel" data-bs-slide-to="2"></button>
                            <button type="button" data-bs-target="#welcomeCarousel" data-bs-slide-to="3"></button>
                        </div>
                        
                        <!-- Carousel Content -->
                        <div class="carousel-inner">
                            <!-- Slide 1: Spiritual Tours -->
                            <div class="carousel-item active">
                                <div class="slide-content">
                                    <div class="row align-items-center">
                                        <div class="col-md-6">
                                            <img src="https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Golden Temple" class="slider-image">
                                        </div>
                                        <div class="col-md-6">
                                            <h3><i class="bi bi-peace"></i> Spiritual Tours</h3>
                                            <p>Embark on sacred journeys to India's most revered temples and spiritual destinations. Find inner peace and divine blessings.</p>
                                            <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure Pilgrimage</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Slide 2: Honeymoon Packages -->
                            <div class="carousel-item">
                                <div class="slide-content">
                                    <div class="row align-items-center">
                                        <div class="col-md-6">
                                            <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Romantic Beach Sunset" class="slider-image">
                                        </div>
                                        <div class="col-md-6">
                                            <h3><i class="bi bi-heart-fill"></i> Honeymoon Packages</h3>
                                            <p>Create unforgettable memories with your loved one in the most romantic destinations across India and abroad.</p>
                                            <div class="security-badge"><i class="bi bi-shield-check"></i> Couple Security</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Slide 3: Heritage Tours -->
                            <div class="carousel-item">
                                <div class="slide-content">
                                    <div class="row align-items-center">
                                        <div class="col-md-6">
                                            <img src="https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Taj Mahal Heritage" class="slider-image">
                                        </div>
                                        <div class="col-md-6">
                                            <h3><i class="bi bi-building"></i> Heritage Tours</h3>
                                            <p>Explore magnificent palaces, ancient forts, and UNESCO World Heritage sites that showcase India's rich cultural legacy.</p>
                                            <div class="security-badge"><i class="bi bi-shield-check"></i> Heritage Protected</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Slide 4: International Packages -->
                            <div class="carousel-item">
                                <div class="slide-content">
                                    <div class="row align-items-center">
                                        <div class="col-md-6">
                                            <img src="https://images.unsplash.com/photo-1488646953014-85cb44e25828?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Eiffel Tower Paris" class="slider-image">
                                        </div>
                                        <div class="col-md-6">
                                            <h3><i class="bi bi-globe"></i> International Packages</h3>
                                            <p>Discover the world beyond borders with our carefully curated international tour packages to exotic destinations.</p>
                                            <div class="security-badge"><i class="bi bi-shield-check"></i> Global Security</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Carousel Navigation -->
                        <button class="carousel-control-prev" type="button" data-bs-target="#welcomeCarousel" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#welcomeCarousel" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========================================
         MAIN CONTENT SECTION
    ======================================== -->
    <div class="container-fluid px-2 px-md-4 my-3 my-md-5">
        <div class="row g-2 g-md-4">
            
            <!-- ========================================
                 INDIAN TOUR PACKAGES MODULE
            ======================================== -->
            <div class="col-12 col-xl-6">
                <div class="module-card h-100">
                    <!-- Module Header -->
                    <div class="module-header" onclick="toggleModule('indian-module')">
                        <h3 class="h4 h-md-3"><i class="bi bi-flag-fill"></i> Indian Tour Packages</h3>
                        <p class="mb-0 small">Discover Incredible India</p>
                    </div>
                    
                    <!-- Module Content -->
                    <div id="indian-module" class="module-content" style="display: none;">
                        <!-- Section Navigation Buttons -->
                        <div class="section-nav text-center">
                            <div class="d-flex flex-wrap justify-content-center gap-2">
                                <button class="section-btn active flex-fill flex-sm-grow-0" onclick="showSection('indian', 'spiritual')">
                                    <i class="bi bi-peace"></i> <span class="d-none d-sm-inline">Spiritual Tours</span><span class="d-sm-none">Spiritual</span>
                                </button>
                                <button class="section-btn flex-fill flex-sm-grow-0" onclick="showSection('indian', 'honeymoon')">
                                    <i class="bi bi-heart"></i> <span class="d-none d-sm-inline">Honeymoon Packages</span><span class="d-sm-none">Honeymoon</span>
                                </button>
                                <button class="section-btn flex-fill flex-sm-grow-0" onclick="showSection('indian', 'heritage')">
                                    <i class="bi bi-building"></i> <span class="d-none d-sm-inline">Heritage Tours</span><span class="d-sm-none">Heritage</span>
                                </button>
                            </div>
                        </div>

                        <!-- ========================================
                             SPIRITUAL TOURS SECTION
                        ======================================== -->
                        <div id="indian-spiritual" class="section-content p-4">
                            
                            <!-- Package 1: Mathura-Vrindavan -->
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('mathura-vrindavan')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Mathura Vrindavan Temple">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-temple-hindu"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Mathura-Vrindavan Spiritual Tour</h5>
                                                    <p><i class="bi bi-calendar3"></i> 4 Days / 3 Nights</p>
                                                    <div class="price-tag">₹15,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-bookmark-plus"></i> Book Now
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('kedarnath')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1626621341517-bbf3d9990a23?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Kedarnath Temple">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-mountain"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Kedarnath Dham Yatra</h5>
                                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                                    <div class="price-tag">₹25,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-bookmark-plus"></i> Book Now
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('varanasi-spiritual')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1561361513-2d000a50f0dc?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Varanasi Ghats">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-sunrise"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Varanasi Spiritual Experience</h5>
                                                    <p><i class="bi bi-calendar3"></i> 3 Days / 2 Nights</p>
                                                    <div class="price-tag">₹12,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-bookmark-plus"></i> Book Now
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('golden-temple')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1605649487212-47bdab064df7?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Golden Temple Amritsar">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-gem"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Golden Temple Amritsar</h5>
                                                    <p><i class="bi bi-calendar3"></i> 3 Days / 2 Nights</p>
                                                    <div class="price-tag">₹14,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-bookmark-plus"></i> Book Now
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('tirupati-balaji')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1582510003544-4d00b7f74220?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Tirupati Balaji Temple">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-heart-fill"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Tirupati Balaji Darshan</h5>
                                                    <p><i class="bi bi-calendar3"></i> 2 Days / 1 Night</p>
                                                    <div class="price-tag">₹9,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-bookmark-plus"></i> Book Now
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('char-dham-yatra')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1544735716-392fe2489ffa?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Char Dham Yatra">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-compass"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Char Dham Yatra Complete</h5>
                                                    <p><i class="bi bi-calendar3"></i> 12 Days / 11 Nights</p>
                                                    <div class="price-tag">₹65,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Premium Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-bookmark-plus"></i> Book Now
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Honeymoon Packages Section -->
                        <div id="indian-honeymoon" class="section-content p-4" style="display: none;">
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('goa-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1512343879784-a960bf40e7f2?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Goa Beach Romance">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-water"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Romantic Goa Getaway</h5>
                                                    <p><i class="bi bi-calendar3"></i> 5 Days / 4 Nights</p>
                                                    <div class="price-tag">₹35,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Couple Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Romance
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('kerala-backwaters')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Kerala Backwaters">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-tree"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Kerala Backwaters Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                                    <div class="price-tag">₹42,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Couple Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Romance
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('shimla-manali-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Shimla Manali Hills">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-snow"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Shimla-Manali Hill Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 7 Days / 6 Nights</p>
                                                    <div class="price-tag">₹38,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Couple Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Romance
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('udaipur-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Udaipur Palace">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-castle"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Udaipur Royal Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 4 Days / 3 Nights</p>
                                                    <div class="price-tag">₹45,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Royal Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Romance
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('andaman-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1559827260-dc66d52bef19?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Andaman Islands">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-tropical-storm"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Andaman Island Paradise</h5>
                                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                                    <div class="price-tag">₹52,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Island Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Romance
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('kashmir-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Kashmir Valley">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-flower1"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Kashmir Paradise on Earth</h5>
                                                    <p><i class="bi bi-calendar3"></i> 8 Days / 7 Nights</p>
                                                    <div class="price-tag">₹48,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Paradise Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Romance
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Heritage Tours Section -->
                        <div id="indian-heritage" class="section-content p-4" style="display: none;">
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('agra-tour')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Taj Mahal Agra">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-building"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Agra Historic Palace Tour</h5>
                                                    <p><i class="bi bi-calendar3"></i> 3 Days / 2 Nights</p>
                                                    <div class="price-tag">₹18,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> 100% Secure</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-camera"></i> Explore History
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('ladakh-adventure')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Ladakh Mountains">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-snow"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Ladakh Adventure Tour</h5>
                                                    <p><i class="bi bi-calendar3"></i> 8 Days / 7 Nights</p>
                                                    <div class="price-tag">₹55,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Adventure Safe</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-compass"></i> Adventure Awaits
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('rajasthan-royal')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Rajasthan Palace">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-crown"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Rajasthan Royal Heritage</h5>
                                                    <p><i class="bi bi-calendar3"></i> 10 Days / 9 Nights</p>
                                                    <div class="price-tag">₹68,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Royal Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-gem"></i> Royal Experience
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('hampi-heritage')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1582510003544-4d00b7f74220?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Hampi Ruins">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-columns"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Hampi Ancient Ruins</h5>
                                                    <p><i class="bi bi-calendar3"></i> 4 Days / 3 Nights</p>
                                                    <div class="price-tag">₹22,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Heritage Safe</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-hourglass-split"></i> Ancient Wonders
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('khajuraho-heritage')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Khajuraho Temples">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-palette"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Khajuraho Temple Art</h5>
                                                    <p><i class="bi bi-calendar3"></i> 3 Days / 2 Nights</p>
                                                    <div class="price-tag">₹19,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Art Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-brush"></i> Art Heritage
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('golden-triangle')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Golden Triangle">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-triangle"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Golden Triangle Classic</h5>
                                                    <p><i class="bi bi-calendar3"></i> 7 Days / 6 Nights</p>
                                                    <div class="price-tag">₹35,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Classic Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-star"></i> Classic Tour
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('darjeeling-sikkim')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Darjeeling Tea Gardens">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-cup-hot"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Darjeeling-Sikkim Hills</h5>
                                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                                    <div class="price-tag">₹32,999 per person</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Hill Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-mountain"></i> Hill Adventure
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- International Tour Packages Module -->
            <div class="col-12 col-xl-6">
                <div class="module-card h-100">
                    <div class="module-header" onclick="toggleModule('international-module')">
                        <h3 class="h4 h-md-3"><i class="bi bi-globe"></i> International Tour Packages</h3>
                        <p class="mb-0 small">Explore the World Beyond</p>
                    </div>
                    <div id="international-module" class="module-content" style="display: none;">
                        <div class="section-nav text-center">
                            <div class="d-flex flex-wrap justify-content-center gap-2">
                                <button class="section-btn active flex-fill flex-sm-grow-0" onclick="showSection('international', 'honeymoon')">
                                    <i class="bi bi-heart"></i> <span class="d-none d-sm-inline">Honeymoon Packages</span><span class="d-sm-none">Honeymoon</span>
                                </button>
                                <button class="section-btn flex-fill flex-sm-grow-0" onclick="showSection('international', 'historic')">
                                    <i class="bi bi-building"></i> <span class="d-none d-sm-inline">Historic Packages</span><span class="d-sm-none">Historic</span>
                                </button>
                                <button class="section-btn flex-fill flex-sm-grow-0" onclick="showSection('international', 'city')">
                                    <i class="bi bi-buildings"></i> <span class="d-none d-sm-inline">City Packages</span><span class="d-sm-none">City</span>
                                </button>
                            </div>
                        </div>

                        <!-- International Honeymoon Section -->
                        <div id="international-honeymoon" class="section-content p-4">
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('bali-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1537953773345-d172ccf13cf1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Bali Paradise">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-tropical-storm"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Bali Romantic Paradise</h5>
                                                    <p><i class="bi bi-calendar3"></i> 7 Days / 6 Nights</p>
                                                    <div class="price-tag">₹85,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> International Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Paradise
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('maldives-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Maldives Luxury">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-water"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Maldives Luxury Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 5 Days / 4 Nights</p>
                                                    <div class="price-tag">₹1,25,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Luxury Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-gem"></i> Book Luxury
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('mauritius-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Mauritius Tropical">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-sun"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Mauritius Tropical Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                                    <div class="price-tag">₹95,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Tropical Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Tropical
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('thailand-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Thailand Exotic">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-flower2"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Thailand Exotic Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 8 Days / 7 Nights</p>
                                                    <div class="price-tag">₹78,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Exotic Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Exotic
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('paris-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1488646953014-85cb44e25828?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Paris City of Love">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-heart-arrow"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Paris City of Love</h5>
                                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                                    <div class="price-tag">₹1,15,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> European Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Love
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="package-card" onclick="showPackageDetails('santorini-honeymoon')">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="package-image">
                                                    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Santorini Greek Romance">
                                                    <div class="icon-overlay">
                                                        <i class="bi bi-house-heart"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="package-content">
                                                    <h5>Santorini Greek Romance</h5>
                                                    <p><i class="bi bi-calendar3"></i> 5 Days / 4 Nights</p>
                                                    <div class="price-tag">₹1,05,999 per couple</div>
                                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Greek Security</div>
                                                    <button class="book-btn mt-2">
                                                        <i class="bi bi-heart-fill"></i> Book Greek
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- International Historic Section -->
                        <div id="international-historic" class="section-content p-4" style="display: none;">
                            <div class="package-card" onclick="showPackageDetails('egypt-historic')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1539650116574-75c0c6d73f6e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Egypt Pyramids">
                                    <div class="icon-overlay">
                                        <i class="bi bi-triangle"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Egypt Pyramids & History</h5>
                                    <p><i class="bi bi-calendar3"></i> 8 Days / 7 Nights</p>
                                    <div class="price-tag">₹95,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Historic Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-hourglass-split"></i> Explore Ancient
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('rome-historic')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Rome Colosseum">
                                    <div class="icon-overlay">
                                        <i class="bi bi-columns-gap"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Rome Ancient Empire</h5>
                                    <p><i class="bi bi-calendar3"></i> 7 Days / 6 Nights</p>
                                    <div class="price-tag">₹1,05,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Empire Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-shield-shaded"></i> Roman History
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('greece-historic')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1555993539-1732b0258235?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Greece Parthenon">
                                    <div class="icon-overlay">
                                        <i class="bi bi-bank"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Greece Ancient Civilization</h5>
                                    <p><i class="bi bi-calendar3"></i> 9 Days / 8 Nights</p>
                                    <div class="price-tag">₹1,15,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Ancient Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-mortarboard"></i> Greek Wisdom
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('peru-historic')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1526392060635-9d6019884377?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Peru Machu Picchu">
                                    <div class="icon-overlay">
                                        <i class="bi bi-mountain"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Peru Machu Picchu</h5>
                                    <p><i class="bi bi-calendar3"></i> 10 Days / 9 Nights</p>
                                    <div class="price-tag">₹1,35,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Inca Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-compass"></i> Inca Trail
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('china-historic')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1508804185872-d7badad00f7d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="China Great Wall">
                                    <div class="icon-overlay">
                                        <i class="bi bi-bricks"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>China Great Wall Heritage</h5>
                                    <p><i class="bi bi-calendar3"></i> 8 Days / 7 Nights</p>
                                    <div class="price-tag">₹89,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Wall Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-building"></i> Great Wall
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- International City Section -->
                        <div id="international-city" class="section-content p-4" style="display: none;">
                            <div class="package-card" onclick="showPackageDetails('dubai-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1512453979798-5ea266f8880c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Dubai Skyline">
                                    <div class="icon-overlay">
                                        <i class="bi bi-buildings"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Dubai City of Gold</h5>
                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                    <div class="price-tag">₹75,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> City Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-gem"></i> Experience Luxury
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('singapore-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1525625293386-3f8f99389edd?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Singapore Gardens">
                                    <div class="icon-overlay">
                                        <i class="bi bi-tree-fill"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Singapore Garden City</h5>
                                    <p><i class="bi bi-calendar3"></i> 5 Days / 4 Nights</p>
                                    <div class="price-tag">₹65,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> City Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-flower1"></i> Explore Gardens
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('tokyo-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Tokyo Skyline">
                                    <div class="icon-overlay">
                                        <i class="bi bi-building-fill-gear"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Tokyo Modern Metropolis</h5>
                                    <p><i class="bi bi-calendar3"></i> 7 Days / 6 Nights</p>
                                    <div class="price-tag">₹95,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Tech Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-cpu"></i> Tech Experience
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('london-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="London Big Ben">
                                    <div class="icon-overlay">
                                        <i class="bi bi-clock-history"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>London Royal City</h5>
                                    <p><i class="bi bi-calendar3"></i> 8 Days / 7 Nights</p>
                                    <div class="price-tag">₹1,25,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Royal Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-crown"></i> Royal Experience
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('new-york-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="New York Skyline">
                                    <div class="icon-overlay">
                                        <i class="bi bi-building-fill-up"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>New York Big Apple</h5>
                                    <p><i class="bi bi-calendar3"></i> 6 Days / 5 Nights</p>
                                    <div class="price-tag">₹1,35,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Metro Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-apple"></i> Big Apple
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('sydney-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Sydney Opera House">
                                    <div class="icon-overlay">
                                        <i class="bi bi-water"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Sydney Harbor City</h5>
                                    <p><i class="bi bi-calendar3"></i> 7 Days / 6 Nights</p>
                                    <div class="price-tag">₹1,15,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Harbor Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-sailboat"></i> Harbor Views
                                    </button>
                                </div>
                            </div>

                            <div class="package-card" onclick="showPackageDetails('amsterdam-city')">
                                <div class="package-image">
                                    <img src="https://images.unsplash.com/photo-1534351590666-13e3e96b5017?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Amsterdam Canals">
                                    <div class="icon-overlay">
                                        <i class="bi bi-bicycle"></i>
                                    </div>
                                </div>
                                <div class="package-content">
                                    <h5>Amsterdam Canal City</h5>
                                    <p><i class="bi bi-calendar3"></i> 5 Days / 4 Nights</p>
                                    <div class="price-tag">₹85,999 per person</div>
                                    <div class="security-badge"><i class="bi bi-shield-check"></i> Canal Security</div>
                                    <button class="book-btn mt-2">
                                        <i class="bi bi-water"></i> Canal Tours
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Package Detail Modal -->
    <div id="packageModal" class="detail-modal">
        <div class="detail-content">
            <button class="close-btn" onclick="closeModal()">
                <i class="bi bi-x"></i>
            </button>
            <div id="modalContent">
                <!-- Dynamic content will be loaded here -->
            </div>
        </div>
    </div>
 

<jsp:include page="common/general_footer.jsp"></jsp:include>
</div>
 <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        /* ========================================
           PACKAGE DETAILS DATA
        ======================================== */
        const packageDetails = {
            'mathura-vrindavan': {
                title: 'Mathura-Vrindavan Spiritual Tour',
                duration: '4 Days / 3 Nights',
                price: '₹15,999 per person',
                image: '<i class="bi bi-temple-hindu"></i>',
                description: 'Experience the divine journey through the birthplace of Lord Krishna.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '3-star hotel with AC rooms' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'AC Tempo Traveller for all transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Daily breakfast and dinner included' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Experienced spiritual guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: '24/7 customer support and travel insurance' }
                ],
                itinerary: [
                    'Day 1: Arrival in Mathura, visit Krishna Janmabhoomi',
                    'Day 2: Vrindavan temples tour - Banke Bihari, ISKCON',
                    'Day 3: Govardhan Parikrama and local sightseeing',
                    'Day 4: Departure after breakfast'
                ]
            },
            'kedarnath': {
                title: 'Kedarnath Dham Yatra',
                duration: '6 Days / 5 Nights',
                price: '₹25,999 per person',
                image: '<i class="bi bi-mountain"></i>',
                description: 'Sacred pilgrimage to one of the twelve Jyotirlingas in the Himalayas.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Dharamshala and hotel stays' },
                    { icon: 'bi-helicopter', title: 'Transport', detail: 'Helicopter service available (optional)' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Simple vegetarian meals' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Local experienced guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Medical support and emergency assistance' }
                ],
                itinerary: [
                    'Day 1: Arrival in Haridwar, proceed to Guptkashi',
                    'Day 2: Guptkashi to Gaurikund, trek to Kedarnath',
                    'Day 3: Kedarnath Temple darshan and stay',
                    'Day 4: Return trek to Gaurikund',
                    'Day 5: Guptkashi to Haridwar',
                    'Day 6: Departure from Haridwar'
                ]
            },
            'varanasi-spiritual': {
                title: 'Varanasi Spiritual Experience',
                duration: '3 Days / 2 Nights',
                price: '₹12,999 per person',
                image: '<i class="bi bi-sunrise"></i>',
                description: 'Witness the spiritual essence of India\'s oldest city.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Heritage hotel near ghats' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Local transfers and boat rides' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Traditional vegetarian meals' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Local spiritual guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Safe spiritual journey' }
                ],
                itinerary: [
                    'Day 1: Arrival, evening Ganga Aarti at Dashashwamedh Ghat',
                    'Day 2: Early morning boat ride, Kashi Vishwanath Temple',
                    'Day 3: Sarnath visit, departure'
                ]
            },
            'golden-temple': {
                title: 'Golden Temple Amritsar',
                duration: '3 Days / 2 Nights',
                price: '₹14,999 per person',
                image: '<i class="bi bi-gem"></i>',
                description: 'Visit the holiest shrine of Sikhism in the Golden City.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotel near Golden Temple' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Airport transfers and local transport' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Langar and hotel meals' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Sikh heritage guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Respectful pilgrimage support' }
                ],
                itinerary: [
                    'Day 1: Arrival, Golden Temple visit and evening prayers',
                    'Day 2: Jallianwala Bagh, Wagah Border ceremony',
                    'Day 3: Early morning Golden Temple, departure'
                ]
            },
            'tirupati-balaji': {
                title: 'Tirupati Balaji Darshan',
                duration: '2 Days / 1 Night',
                price: '₹9,999 per person',
                image: '<i class="bi bi-heart-fill"></i>',
                description: 'Seek blessings at the richest temple in the world.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Comfortable lodge near temple' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Station/airport transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Prasadam and simple meals' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Temple protocol assistance' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Queue management and safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, temple darshan, local sightseeing',
                    'Day 2: Early morning special darshan, departure'
                ]
            },
            'char-dham-yatra': {
                title: 'Char Dham Yatra Complete',
                duration: '12 Days / 11 Nights',
                price: '₹65,999 per person',
                image: '<i class="bi bi-compass"></i>',
                description: 'Complete spiritual circuit of four sacred Hindu pilgrimage sites.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotels and dharamshalas' },
                    { icon: 'bi-helicopter', title: 'Transport', detail: 'Helicopter options available' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Vegetarian meals throughout' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Experienced pilgrimage guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Medical support and safety' }
                ],
                itinerary: [
                    'Day 1-3: Yamunotri Dham',
                    'Day 4-6: Gangotri Dham',
                    'Day 7-9: Kedarnath Dham',
                    'Day 10-12: Badrinath Dham'
                ]
            },
            'goa-honeymoon': {
                title: 'Romantic Goa Getaway',
                duration: '5 Days / 4 Nights',
                price: '₹35,999 per couple',
                image: '<i class="bi bi-water"></i>',
                description: 'Perfect romantic escape with beaches, sunsets, and luxury.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '4-star beach resort with sea view' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Airport transfers and sightseeing cab' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Breakfast and candlelight dinner' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Couple spa session and sunset cruise' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Couple safety and 24/7 assistance' }
                ],
                itinerary: [
                    'Day 1: Arrival, check-in at beach resort',
                    'Day 2: North Goa beaches and water sports',
                    'Day 3: South Goa churches and spice plantation',
                    'Day 4: Sunset cruise and romantic dinner',
                    'Day 5: Departure after breakfast'
                ]
            },
            'kerala-backwaters': {
                title: 'Kerala Backwaters Romance',
                duration: '6 Days / 5 Nights',
                price: '₹42,999 per couple',
                image: '<i class="bi bi-tree"></i>',
                description: 'Romantic houseboat experience in God\'s Own Country.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Luxury houseboat and resort' },
                    { icon: 'bi-sailboat', title: 'Transport', detail: 'Houseboat cruise and transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Kerala cuisine and seafood' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Private houseboat and Ayurvedic spa' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Safe backwater experience' }
                ],
                itinerary: [
                    'Day 1: Arrival in Cochin, transfer to Munnar',
                    'Day 2: Munnar tea gardens and hill station',
                    'Day 3: Transfer to Alleppey, houseboat check-in',
                    'Day 4: Backwater cruise and village visits',
                    'Day 5: Kumarakom bird sanctuary',
                    'Day 6: Departure from Cochin'
                ]
            },
            'shimla-manali-honeymoon': {
                title: 'Shimla-Manali Hill Romance',
                duration: '7 Days / 6 Nights',
                price: '₹38,999 per couple',
                image: '<i class="bi bi-snow"></i>',
                description: 'Romantic hill station experience with snow-capped mountains.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hill resort with valley views' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Cab for all transfers and sightseeing' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Breakfast and dinner included' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Couple activities and bonfire' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Mountain safety and support' }
                ],
                itinerary: [
                    'Day 1: Arrival in Shimla, Mall Road',
                    'Day 2: Shimla local sightseeing',
                    'Day 3: Transfer to Manali via Kullu',
                    'Day 4: Manali local sightseeing',
                    'Day 5: Solang Valley adventure activities',
                    'Day 6: Rohtang Pass (if accessible)',
                    'Day 7: Departure'
                ]
            },
            'udaipur-honeymoon': {
                title: 'Udaipur Royal Romance',
                duration: '4 Days / 3 Nights',
                price: '₹45,999 per couple',
                image: '<i class="bi bi-castle"></i>',
                description: 'Royal romance in the City of Lakes with palace stays.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Heritage palace hotel' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Royal car transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Royal Rajasthani cuisine' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Lake cruise and palace dinner' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Royal hospitality and safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, City Palace and Lake Pichola',
                    'Day 2: Jagdish Temple, Saheliyon ki Bari',
                    'Day 3: Romantic boat ride, Bagore ki Haveli',
                    'Day 4: Departure'
                ]
            },
            'andaman-honeymoon': {
                title: 'Andaman Island Paradise',
                duration: '6 Days / 5 Nights',
                price: '₹52,999 per couple',
                image: '<i class="bi bi-tropical-storm"></i>',
                description: 'Tropical island paradise with pristine beaches and coral reefs.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Beach resort with ocean view' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flight tickets and island transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Seafood and continental cuisine' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Private beach and water sports' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Island safety and medical support' }
                ],
                itinerary: [
                    'Day 1: Arrival in Port Blair, Cellular Jail',
                    'Day 2: Havelock Island, Radhanagar Beach',
                    'Day 3: Scuba diving and snorkeling',
                    'Day 4: Neil Island day trip',
                    'Day 5: Ross Island and North Bay',
                    'Day 6: Departure'
                ]
            },
            'kashmir-honeymoon': {
                title: 'Kashmir Paradise on Earth',
                duration: '8 Days / 7 Nights',
                price: '₹48,999 per couple',
                image: '<i class="bi bi-flower1"></i>',
                description: 'Experience paradise on earth with houseboats and gardens.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Houseboat and hill resort' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'All transfers and sightseeing' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Kashmiri cuisine and continental' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Shikara rides and garden walks' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Safe Kashmir experience' }
                ],
                itinerary: [
                    'Day 1: Arrival in Srinagar, Dal Lake',
                    'Day 2: Mughal Gardens tour',
                    'Day 3: Gulmarg day trip',
                    'Day 4: Pahalgam excursion',
                    'Day 5: Sonamarg glacier visit',
                    'Day 6-7: Leisure in Srinagar',
                    'Day 8: Departure'
                ]
            },
            'agra-tour': {
                title: 'Agra Historic Palace Tour',
                duration: '3 Days / 2 Nights',
                price: '₹18,999 per person',
                image: '<i class="bi bi-building"></i>',
                description: 'Explore the magnificent Taj Mahal and Mughal architecture.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotel with Taj view' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'AC car for all transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Breakfast and Mughlai dinner' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Expert heritage guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Monument entry and safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, Taj Mahal sunset visit',
                    'Day 2: Agra Fort, Itmad-ud-Daulah',
                    'Day 3: Taj Mahal sunrise, departure'
                ]
            },
            'ladakh-adventure': {
                title: 'Ladakh Adventure Tour',
                duration: '8 Days / 7 Nights',
                price: '₹55,999 per person',
                image: '<i class="bi bi-snow"></i>',
                description: 'High altitude adventure in the Land of High Passes.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotels and camps' },
                    { icon: 'bi-jeep', title: 'Transport', detail: '4WD vehicles for rough terrain' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Local and continental cuisine' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Adventure guide and driver' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'High altitude medical support' }
                ],
                itinerary: [
                    'Day 1: Arrival in Leh, acclimatization',
                    'Day 2: Leh local sightseeing',
                    'Day 3: Nubra Valley via Khardung La',
                    'Day 4: Nubra Valley exploration',
                    'Day 5: Pangong Lake excursion',
                    'Day 6: Pangong to Leh',
                    'Day 7: Monastery tour',
                    'Day 8: Departure'
                ]
            },
            'bali-honeymoon': {
                title: 'Bali Romantic Paradise',
                duration: '7 Days / 6 Nights',
                price: '₹85,999 per couple',
                image: '<i class="bi bi-tropical-storm"></i>',
                description: 'Exotic Indonesian paradise perfect for honeymooners.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '5-star villa with private pool' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flight tickets and private transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'All meals with local cuisine experience' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Couple massage and romantic setups' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'International travel insurance and support' }
                ],
                itinerary: [
                    'Day 1: Arrival in Denpasar, transfer to Ubud',
                    'Day 2: Ubud rice terraces and monkey forest',
                    'Day 3: Temple tour - Tanah Lot and Uluwatu',
                    'Day 4: Transfer to Seminyak beach',
                    'Day 5: Beach activities and water sports',
                    'Day 6: Couple spa and romantic dinner',
                    'Day 7: Departure'
                ]
            },
            'maldives-honeymoon': {
                title: 'Maldives Luxury Romance',
                duration: '5 Days / 4 Nights',
                price: '₹1,25,999 per couple',
                image: '<i class="bi bi-water"></i>',
                description: 'Ultimate luxury romance in overwater villas.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Overwater villa with glass floor' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Seaplane transfers included' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'All-inclusive dining' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Private dining and spa treatments' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Luxury resort security' }
                ],
                itinerary: [
                    'Day 1: Arrival, overwater villa check-in',
                    'Day 2: Snorkeling and dolphin watching',
                    'Day 3: Spa day and sunset cruise',
                    'Day 4: Water sports and private dining',
                    'Day 5: Departure'
                ]
            },
            'dubai-city': {
                title: 'Dubai City of Gold',
                duration: '6 Days / 5 Nights',
                price: '₹75,999 per person',
                image: '<i class="bi bi-buildings"></i>',
                description: 'Experience the luxury and modernity of Dubai.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '4-star hotel in downtown Dubai' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flight tickets and metro passes' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Breakfast and traditional Arabic dinner' },
                    { icon: 'bi-building', title: 'Attractions', detail: 'Burj Khalifa, Dubai Mall, Desert Safari' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'International travel support and visa assistance' }
                ],
                itinerary: [
                    'Day 1: Arrival, Dubai Marina and JBR Beach',
                    'Day 2: Burj Khalifa and Dubai Mall',
                    'Day 3: Desert Safari with BBQ dinner',
                    'Day 4: Dubai Creek and Gold Souk',
                    'Day 5: Atlantis and Palm Jumeirah',
                    'Day 6: Departure'
                ]
            },
            'singapore-city': {
                title: 'Singapore Garden City',
                duration: '5 Days / 4 Nights',
                price: '₹65,999 per person',
                image: '<i class="bi bi-tree-fill"></i>',
                description: 'Modern city-state with gardens and attractions.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '4-star hotel in city center' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flight and MRT passes' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Breakfast and hawker center tours' },
                    { icon: 'bi-building', title: 'Attractions', detail: 'Gardens by the Bay, Universal Studios' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Safe city experience' }
                ],
                itinerary: [
                    'Day 1: Arrival, Marina Bay Sands',
                    'Day 2: Universal Studios Singapore',
                    'Day 3: Gardens by the Bay, Chinatown',
                    'Day 4: Sentosa Island',
                    'Day 5: Shopping and departure'
                ]
            },
            'rajasthan-royal': {
                title: 'Rajasthan Royal Heritage',
                duration: '10 Days / 9 Nights',
                price: '₹68,999 per person',
                image: '<i class="bi bi-crown"></i>',
                description: 'Experience the royal heritage of Rajasthan with palaces and forts.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Heritage hotels and palaces' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'AC car for all transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Royal Rajasthani cuisine' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Heritage expert guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Royal hospitality and safety' }
                ],
                itinerary: [
                    'Day 1-2: Jaipur - Pink City exploration',
                    'Day 3-4: Jodhpur - Blue City and Mehrangarh Fort',
                    'Day 5-6: Udaipur - City of Lakes',
                    'Day 7-8: Jaisalmer - Golden City',
                    'Day 9-10: Return to Jaipur and departure'
                ]
            },
            'hampi-heritage': {
                title: 'Hampi Ancient Ruins',
                duration: '4 Days / 3 Nights',
                price: '₹22,999 per person',
                image: '<i class="bi bi-columns"></i>',
                description: 'Explore the magnificent ruins of the Vijayanagara Empire.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Heritage resort near ruins' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Local transfers and bicycle tours' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'South Indian vegetarian meals' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Archaeological expert guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Heritage site safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, Virupaksha Temple and Hampi Bazaar',
                    'Day 2: Royal Enclosure and Elephant Stables',
                    'Day 3: Vittala Temple and Stone Chariot',
                    'Day 4: Anegundi village visit and departure'
                ]
            },
            'khajuraho-heritage': {
                title: 'Khajuraho Temple Art',
                duration: '3 Days / 2 Nights',
                price: '₹19,999 per person',
                image: '<i class="bi bi-palette"></i>',
                description: 'Marvel at the exquisite temple sculptures and ancient art.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotel near temple complex' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Airport transfers and local transport' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Local cuisine and continental' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Art history specialist' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Cultural heritage protection' }
                ],
                itinerary: [
                    'Day 1: Arrival, Western Group of Temples',
                    'Day 2: Eastern and Southern Group temples',
                    'Day 3: Light and Sound show, departure'
                ]
            },
            'golden-triangle': {
                title: 'Golden Triangle Classic',
                duration: '7 Days / 6 Nights',
                price: '₹35,999 per person',
                image: '<i class="bi bi-triangle"></i>',
                description: 'Classic tour covering Delhi, Agra, and Jaipur.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '4-star hotels in all cities' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'AC car for entire journey' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Breakfast and regional dinners' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Local guides in each city' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Complete tour safety' }
                ],
                itinerary: [
                    'Day 1-2: Delhi - Red Fort, India Gate, Qutub Minar',
                    'Day 3-4: Agra - Taj Mahal, Agra Fort',
                    'Day 5-6: Jaipur - Amber Fort, City Palace',
                    'Day 7: Return to Delhi and departure'
                ]
            },
            'darjeeling-sikkim': {
                title: 'Darjeeling-Sikkim Hills',
                duration: '6 Days / 5 Nights',
                price: '₹32,999 per person',
                image: '<i class="bi bi-cup-hot"></i>',
                description: 'Experience the beauty of tea gardens and mountain views.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hill station hotels with mountain views' },
                    { icon: 'bi-car-front', title: 'Transport', detail: 'Mountain vehicle transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Local cuisine and tea tasting' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Mountain region expert' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Mountain travel safety' }
                ],
                itinerary: [
                    'Day 1: Arrival in Darjeeling, Mall Road',
                    'Day 2: Tiger Hill sunrise, tea garden visit',
                    'Day 3: Travel to Gangtok, Sikkim',
                    'Day 4: Gangtok local sightseeing',
                    'Day 5: Tsomgo Lake and Baba Mandir',
                    'Day 6: Departure'
                ]
            },
            'mauritius-honeymoon': {
                title: 'Mauritius Tropical Romance',
                duration: '6 Days / 5 Nights',
                price: '₹95,999 per couple',
                image: '<i class="bi bi-sun"></i>',
                description: 'Tropical island paradise with pristine beaches and luxury resorts.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: '5-star beachfront resort' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flight tickets and luxury transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'All-inclusive dining with local cuisine' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Couple spa and private beach dining' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Resort security and travel insurance' }
                ],
                itinerary: [
                    'Day 1: Arrival, resort check-in and welcome dinner',
                    'Day 2: Catamaran cruise to Ile aux Cerfs',
                    'Day 3: Seven Colored Earths and Chamarel Waterfall',
                    'Day 4: Port Louis city tour and shopping',
                    'Day 5: Couple spa day and sunset cruise',
                    'Day 6: Departure'
                ]
            },
            'thailand-honeymoon': {
                title: 'Thailand Exotic Romance',
                duration: '8 Days / 7 Nights',
                price: '₹78,999 per couple',
                image: '<i class="bi bi-flower2"></i>',
                description: 'Exotic blend of culture, beaches, and romance in the Land of Smiles.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Luxury hotels in Bangkok and Phuket' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and domestic transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Thai cuisine experience and romantic dinners' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Couple massage and island hopping' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Tourist police support and insurance' }
                ],
                itinerary: [
                    'Day 1-2: Bangkok - Grand Palace, temples, floating market',
                    'Day 3: Flight to Phuket, beach relaxation',
                    'Day 4: Phi Phi Islands day trip',
                    'Day 5: James Bond Island tour',
                    'Day 6: Couple spa and Patong Beach',
                    'Day 7: Shopping and cultural show',
                    'Day 8: Departure'
                ]
            },
            'paris-honeymoon': {
                title: 'Paris City of Love',
                duration: '6 Days / 5 Nights',
                price: '₹1,15,999 per couple',
                image: '<i class="bi bi-heart-arrow"></i>',
                description: 'Romance in the most romantic city in the world.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Boutique hotel near Champs-Élysées' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and metro passes' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'French cuisine and wine tasting' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Seine river cruise and Eiffel Tower dinner' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'European travel insurance' }
                ],
                itinerary: [
                    'Day 1: Arrival, Eiffel Tower and Trocadéro',
                    'Day 2: Louvre Museum and Seine river cruise',
                    'Day 3: Versailles Palace day trip',
                    'Day 4: Montmartre and Sacré-Cœur',
                    'Day 5: Shopping on Champs-Élysées',
                    'Day 6: Departure'
                ]
            },
            'santorini-honeymoon': {
                title: 'Santorini Greek Romance',
                duration: '5 Days / 4 Nights',
                price: '₹1,05,999 per couple',
                image: '<i class="bi bi-house-heart"></i>',
                description: 'Stunning sunsets and white-washed buildings in the Greek islands.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Cave hotel with caldera view' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flights and private transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Greek cuisine and wine tours' },
                    { icon: 'bi-heart', title: 'Romance', detail: 'Sunset cruise and private dining' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Island safety and support' }
                ],
                itinerary: [
                    'Day 1: Arrival, Oia sunset viewing',
                    'Day 2: Volcano and hot springs tour',
                    'Day 3: Wine tasting and Fira exploration',
                    'Day 4: Beach day at Red Beach and Kamari',
                    'Day 5: Departure'
                ]
            },
            'egypt-historic': {
                title: 'Egypt Pyramids & History',
                duration: '8 Days / 7 Nights',
                price: '₹95,999 per person',
                image: '<i class="bi bi-triangle"></i>',
                description: 'Journey through ancient Egyptian civilization and monuments.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotels near historical sites' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and Nile cruise' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Egyptian cuisine and international buffets' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Egyptologist guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Tourist police and safety measures' }
                ],
                itinerary: [
                    'Day 1-2: Cairo - Pyramids of Giza, Sphinx, Egyptian Museum',
                    'Day 3-4: Luxor - Valley of Kings, Karnak Temple',
                    'Day 5-6: Aswan - Philae Temple, Nile cruise',
                    'Day 7: Abu Simbel day trip',
                    'Day 8: Return to Cairo and departure'
                ]
            },
            'rome-historic': {
                title: 'Rome Ancient Empire',
                duration: '7 Days / 6 Nights',
                price: '₹1,05,999 per person',
                image: '<i class="bi bi-columns-gap"></i>',
                description: 'Walk through the ruins of the mighty Roman Empire.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotel near historic center' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and metro passes' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Italian cuisine and wine experiences' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Roman history expert' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'European travel safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, Colosseum and Roman Forum',
                    'Day 2: Vatican City - St. Peters and Sistine Chapel',
                    'Day 3: Pantheon, Trevi Fountain, Spanish Steps',
                    'Day 4: Ostia Antica day trip',
                    'Day 5: Tivoli - Villa Adriana and Villa dEste',
                    'Day 6: Castel SantAngelo and shopping',
                    'Day 7: Departure'
                ]
            },
            'greece-historic': {
                title: 'Greece Ancient Civilization',
                duration: '9 Days / 8 Nights',
                price: '₹1,15,999 per person',
                image: '<i class="bi bi-bank"></i>',
                description: 'Explore the birthplace of democracy and philosophy.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotels in Athens and islands' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'Flights and ferry transfers' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Greek Mediterranean cuisine' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Classical archaeology guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Greek tourism safety' }
                ],
                itinerary: [
                    'Day 1-3: Athens - Acropolis, Parthenon, Ancient Agora',
                    'Day 4-5: Delphi - Oracle site and museum',
                    'Day 6-7: Mykonos - Island relaxation',
                    'Day 8: Aegina Island day trip',
                    'Day 9: Departure from Athens'
                ]
            },
            'peru-historic': {
                title: 'Peru Machu Picchu',
                duration: '10 Days / 9 Nights',
                price: '₹1,35,999 per person',
                image: '<i class="bi bi-mountain"></i>',
                description: 'Discover the lost city of the Incas and Peruvian culture.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotels and mountain lodges' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and train to Machu Picchu' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Peruvian cuisine and local specialties' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Inca civilization expert' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'High altitude safety and support' }
                ],
                itinerary: [
                    'Day 1-2: Lima - Colonial city and museums',
                    'Day 3-4: Cusco - Inca capital acclimatization',
                    'Day 5: Sacred Valley - Pisac and Ollantaytambo',
                    'Day 6-7: Machu Picchu - Lost city exploration',
                    'Day 8: Return to Cusco, local markets',
                    'Day 9: Sacsayhuamán fortress',
                    'Day 10: Departure'
                ]
            },
            'china-historic': {
                title: 'China Great Wall Heritage',
                duration: '8 Days / 7 Nights',
                price: '₹89,999 per person',
                image: '<i class="bi bi-bricks"></i>',
                description: 'Experience the Great Wall and ancient Chinese civilization.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotels in Beijing and Xian' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and high-speed train' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Chinese cuisine and Peking duck' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Chinese history specialist' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Tourist safety and visa support' }
                ],
                itinerary: [
                    'Day 1-3: Beijing - Great Wall, Forbidden City, Temple of Heaven',
                    'Day 4-5: Xian - Terracotta Warriors, Ancient City Wall',
                    'Day 6-7: Shanghai - Modern city and Yu Garden',
                    'Day 8: Departure'
                ]
            },
            'tokyo-city': {
                title: 'Tokyo Modern Metropolis',
                duration: '7 Days / 6 Nights',
                price: '₹95,999 per person',
                image: '<i class="bi bi-building-fill-gear"></i>',
                description: 'Experience the perfect blend of tradition and technology.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Modern hotel in Shibuya district' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and JR Pass' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Japanese cuisine and sushi experiences' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Local Tokyo expert' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Japan safety and language support' }
                ],
                itinerary: [
                    'Day 1: Arrival, Shibuya and Harajuku',
                    'Day 2: Traditional Tokyo - Senso-ji Temple, Asakusa',
                    'Day 3: Modern Tokyo - Tokyo Skytree, Ginza',
                    'Day 4: Day trip to Mount Fuji',
                    'Day 5: Tsukiji Fish Market, Imperial Palace',
                    'Day 6: Shopping in Akihabara and Shinjuku',
                    'Day 7: Departure'
                ]
            },
            'london-city': {
                title: 'London Royal City',
                duration: '8 Days / 7 Nights',
                price: '₹1,25,999 per person',
                image: '<i class="bi bi-clock-history"></i>',
                description: 'Explore the royal heritage and modern culture of London.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotel near Westminster' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and Oyster card' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'British cuisine and afternoon tea' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Royal London specialist' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'UK travel safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, Thames river cruise',
                    'Day 2: Buckingham Palace, Westminster Abbey',
                    'Day 3: Tower of London, Tower Bridge',
                    'Day 4: British Museum, Covent Garden',
                    'Day 5: Windsor Castle day trip',
                    'Day 6: Greenwich and Cutty Sark',
                    'Day 7: Shopping on Oxford Street',
                    'Day 8: Departure'
                ]
            },
            'new-york-city': {
                title: 'New York Big Apple',
                duration: '6 Days / 5 Nights',
                price: '₹1,35,999 per person',
                image: '<i class="bi bi-building-fill-up"></i>',
                description: 'Experience the energy and excitement of the city that never sleeps.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Manhattan hotel near Times Square' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and MetroCard' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'New York pizza, delis, and fine dining' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'NYC local expert' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'US travel safety and ESTA support' }
                ],
                itinerary: [
                    'Day 1: Arrival, Times Square and Broadway',
                    'Day 2: Statue of Liberty and Ellis Island',
                    'Day 3: Central Park and Metropolitan Museum',
                    'Day 4: 9/11 Memorial, Brooklyn Bridge',
                    'Day 5: Empire State Building, High Line Park',
                    'Day 6: Shopping and departure'
                ]
            },
            'sydney-city': {
                title: 'Sydney Harbor City',
                duration: '7 Days / 6 Nights',
                price: '₹1,15,999 per person',
                image: '<i class="bi bi-water"></i>',
                description: 'Discover the beautiful harbor city with iconic landmarks.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Hotel with harbor views' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and Opal card' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Australian cuisine and seafood' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Sydney local guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Australian travel safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, Sydney Harbor Bridge',
                    'Day 2: Opera House tour, Circular Quay',
                    'Day 3: Bondi Beach and coastal walk',
                    'Day 4: Blue Mountains day trip',
                    'Day 5: Taronga Zoo and ferry rides',
                    'Day 6: The Rocks markets and shopping',
                    'Day 7: Departure'
                ]
            },
            'amsterdam-city': {
                title: 'Amsterdam Canal City',
                duration: '5 Days / 4 Nights',
                price: '₹85,999 per person',
                image: '<i class="bi bi-bicycle"></i>',
                description: 'Explore the charming canals and rich culture of Amsterdam.',
                services: [
                    { icon: 'bi-house', title: 'Accommodation', detail: 'Canal-side boutique hotel' },
                    { icon: 'bi-airplane', title: 'Transport', detail: 'International flights and bike rental' },
                    { icon: 'bi-cup-hot', title: 'Meals', detail: 'Dutch cuisine and canal-side dining' },
                    { icon: 'bi-person-check', title: 'Guide', detail: 'Amsterdam cultural guide' },
                    { icon: 'bi-shield-check', title: 'Security', detail: 'Netherlands travel safety' }
                ],
                itinerary: [
                    'Day 1: Arrival, canal cruise and Red Light District',
                    'Day 2: Van Gogh Museum, Vondelpark',
                    'Day 3: Anne Frank House, Jordaan district',
                    'Day 4: Keukenhof Gardens (seasonal) or Rijksmuseum',
                    'Day 5: Bike tour and departure'
                ]
            }
        };

        /* ========================================
           MAIN FUNCTIONS
        ======================================== */
        
        // Toggle Module Visibility
        function toggleModule(moduleId) {
            const module = document.getElementById(moduleId);
            if (!module) return;
            
            const isVisible = module.style.display === 'block';
            
            // Hide all modules first
            document.querySelectorAll('.module-content').forEach(m => {
                m.style.display = 'none';
            });
            
            // Show the clicked module if it was hidden
            if (!isVisible) {
                module.style.display = 'block';
                module.classList.add('fade-in');
            }
        }

        // Show Section Content
        function showSection(module, section) {
            // Update active button
            const moduleElement = document.getElementById(module + '-module');
            if (!moduleElement) return;
            
            moduleElement.querySelectorAll('.section-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // Find and activate the clicked button
            const clickedBtn = event ? event.target : moduleElement.querySelector('.section-btn');
            if (clickedBtn) {
                clickedBtn.classList.add('active');
            }

            // Hide all sections in this module
            moduleElement.querySelectorAll('.section-content').forEach(content => {
                content.style.display = 'none';
            });

            // Show selected section
            const sectionElement = document.getElementById(module + '-' + section);
            if (sectionElement) {
                sectionElement.style.display = 'block';
                sectionElement.classList.add('fade-in');
            }
        }

        // Show Package Details in Modal
        function showPackageDetails(packageId) {
            const packageData = packageDetails[packageId];
            if (!packageData) {
                console.error('Package not found:', packageId);
                return;
            }

            const modalContent = document.getElementById('modalContent');
            if (!modalContent) {
                console.error('Modal content element not found');
                return;
            }

            // Build services HTML
            let servicesHTML = '';
            for (let i = 0; i < packageData.services.length; i++) {
                const service = packageData.services[i];
                servicesHTML += '<div class="service-item">';
                servicesHTML += '<h6><i class="' + service.icon + '"></i> ' + service.title + '</h6>';
                servicesHTML += '<p class="mb-0">' + service.detail + '</p>';
                servicesHTML += '</div>';
            }

            // Build itinerary HTML
            let itineraryHTML = '';
            for (let i = 0; i < packageData.itinerary.length; i++) {
                itineraryHTML += '<p class="mb-2"><strong>' + packageData.itinerary[i] + '</strong></p>';
            }

            modalContent.innerHTML = 
                '<div class="text-center mb-4">' +
                    '<div class="package-image d-inline-block mb-3" style="width: 100px; height: 100px; font-size: 2.5rem;">' +
                        packageData.image +
                    '</div>' +
                    '<h2>' + packageData.title + '</h2>' +
                    '<p class="lead">' + packageData.description + '</p>' +
                    '<div class="price-tag fs-4">' + packageData.price + '</div>' +
                '</div>' +

                '<div class="row">' +
                    '<div class="col-md-6">' +
                        '<h4><i class="bi bi-gear-fill"></i> Services Included</h4>' +
                        servicesHTML +
                    '</div>' +
                    '<div class="col-md-6">' +
                        '<h4><i class="bi bi-calendar-event"></i> Itinerary</h4>' +
                        '<div class="service-item">' +
                            itineraryHTML +
                        '</div>' +
                    '</div>' +
                '</div>' +

                '<div class="text-center mt-4">' +
                    '<button class="book-btn me-3" onclick="bookPackage(\'' + packageId + '\')">' +
                        '<i class="bi bi-credit-card"></i> Book This Package' +
                    '</button>' +
                    '<button class="btn btn-outline-secondary" onclick="closeModal()">' +
                        '<i class="bi bi-arrow-left"></i> Back to Packages' +
                    '</button>' +
                '</div>';

            const modal = document.getElementById('packageModal');
            if (modal) {
                modal.style.display = 'block';
            }
        }

        // Close Modal
        function closeModal() {
            const modal = document.getElementById('packageModal');
            if (modal) {
                modal.style.display = 'none';
            }
        }

        // Book Package (Demo Function)
        function bookPackage(packageId) {
            const packageData = packageDetails[packageId];
            if (packageData) {
                alert(`Thank you for your interest in ${packageData.title}!\n\nPrice: ${packageData.price}\n\nOur team will contact you shortly to complete the booking process.`);
            }
            closeModal();
        }

        /* ========================================
           EVENT LISTENERS
        ======================================== */
        
        // Close modal when clicking outside
        window.addEventListener('click', function(event) {
            const modal = document.getElementById('packageModal');
            if (event.target === modal) {
                closeModal();
            }
        });

        // Close modal with Escape key
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                closeModal();
            }
        });

        // Initialize the page when DOM is loaded
        document.addEventListener('DOMContentLoaded', function() {
            console.log('DOM loaded, initializing...');
            
            // Auto-open first module for demo
            setTimeout(() => {
                console.log('Opening Indian module...');
                toggleModule('indian-module');
            }, 1500);
            
            // Test if elements exist
            const indianModule = document.getElementById('indian-module');
            const internationalModule = document.getElementById('international-module');
            console.log('Indian module found:', !!indianModule);
            console.log('International module found:', !!internationalModule);
        });
    </script>
</body>
</html>