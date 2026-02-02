<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row" >
  <nav class="navbar navbar-expand-lg p-3  " style="background-color: #34495e">
  <div class="container-fluid ">
   <div class=" Logo">
    <img
      alt=""
      src="<c:url value='resources/Images/weblogo.png'/>"
      height="30px"
      width="30px"
    />
  </div>
  <div class="sitename text-center text-white ">
    <h3>Trektrails</h3>
    <p class="text-danger h6">Trails of Wonder</p>
  </div>
    <a class="navbar-brand" href="<c:url value="/"/>">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="aboutus">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="albumb">Gallery</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="Packages">Travel Packages</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link active"href="contact">Contactus</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active"href="trendingblog"> Trending Blogs</a>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 20px">
            <i class="bi bi-person-circle"></i>
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="lin">Login</a></li>
            <li><a class="dropdown-item" href="log">Sign Up</a></li>

          </ul>
        </li>
      </ul>
      
    </div>
  </div>
</nav>
</div>


