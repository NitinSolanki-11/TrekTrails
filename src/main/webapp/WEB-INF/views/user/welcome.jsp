<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<jsp:include page="../common/Mylinks.jsp"></jsp:include>
</head>
<body>
<div class="container-fluid">
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="welcome">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="blog">blogs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="feedback">feedback</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="../user/Logout">Logout</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="">bookings</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</div>

</body>
</html>