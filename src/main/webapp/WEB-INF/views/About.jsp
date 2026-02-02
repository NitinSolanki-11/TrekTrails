<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>TrekTrails|ABOUT</title>
         <link href='<c:url value="/resources/Images/weblogo.png"/>' rel="icon"/>
         <style>
    .about-img {
      object-fit: cover;
      height: 100%;
      border-radius: 0.5rem;
    }
    .card-title {
      font-weight: bold;
    }
  </style>
        <jsp:include page="common/Mylinks.jsp"></jsp:include>
    </head>
    <body>
        <div class="container-fluid">
        <jsp:include page="common/general_header.jsp"></jsp:include>
        <div class="container py-5">
  <h1 class="text-center mb-5">About TrekTrails</h1>

  <p class="lead text-center mb-5">
    TrekTrails is your trusted travel companion, offering a full spectrum of travel services—from itinerary planning to real-time support. We are committed to creating seamless, memorable journeys for adventure lovers, business travelers, and family vacationers alike.
  </p>

  <div class="row row-cols-1 row-cols-md-2 g-4">
    <div class="col">
      <div class="card h-100 shadow">
        <img src="resources/Images/globalre2.jpg" class="card-img-top about-img" alt="Explore">
        <div class="card-body">
          <h5 class="card-title">Explore With Us</h5>
          <p class="card-text">At TrekTrails, we turn your travel dreams into reality. From mountain getaways to beach escapes, our expert planning makes every journey unforgettable. We handle all your travel needs with care and precision.</p>
        </div>
      </div>
    </div>

    <div class="col">
      <div class="card h-100 shadow">
        <img src="resources/Images/adventure1.jpg" class="card-img-top about-img" alt="Journey">
        <div class="card-body">
          <h5 class="card-title">Curated Journeys</h5>
          <p class="card-text">Our mission is to craft personalized experiences for every traveler. Whether you seek adventure, relaxation, or cultural immersion, TrekTrails ensures every itinerary is tailored to your style and spirit.</p>
        </div>
      </div>
    </div>
     <div class="col">
      <div class="card h-100 shadow">
        <img src="resources/Images/journey1.jpg" class="card-img-top about-img" alt="Adventure">
        <div class="card-body">
          <h5 class="card-title">Adventure Awaits</h5>
          <p class="card-text">TrekTrails isn’t just a name—it’s a movement for explorers at heart. Whether you're chasing the Northern Lights or trekking remote valleys, we're here to guide your next big story.</p>
        </div>
      </div>
    </div>

    <div class="col">
      <div class="card h-100 shadow">
        <img src="resources/Images/about1.jpg" class="card-img-top about-img" alt="World" style="">
        <div class="card-body">
          <h5 class="card-title">Global Reach</h5>
          <p class="card-text">With a vast network of trusted partners across the globe, TrekTrails gives you access to world-class destinations and hidden gems. We make global travel hassle-free and exciting for everyone.</p>
        </div>
      </div>
    </div>

   
  </div>

  <div class="row mt-5">
    <div class="col-md-6">
      <h4>Our Vision</h4>
      <p>
        To become the leading global travel solutions provider by offering unparalleled experiences and innovative services that enrich the lives of our travelers.
      </p>
      <h4>Our Mission</h4>
      <p>
        To empower people to explore the world with confidence, comfort, and joy. We aim to simplify travel with customized packages, 24/7 customer support, and reliable local partnerships.
      </p>
    </div>
    <div class="col-md-6">
      <h4>Why Choose TrekTrails?</h4>
      <ul>
        <li>Over 10 years of experience in the travel industry</li>
        <li>Thousands of satisfied clients across the globe</li>
        <li>24/7 Customer Support</li>
        <li>Personalized Packages</li>
        <li>Secure Booking and Transparent Pricing</li>
      </ul>
    </div>
  </div>
</div>
        <jsp:include page="common/general_footer.jsp"></jsp:include>
        
        
        </div>
    </body>
</html>
