<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row header" style="min-height: 100px">
	<div class="col-sm-1 logo">
		<img alt="" src="<c:url value='../resources/Images/weblogo.png'/>"
			width="120px" height="100px">
	</div>
	<div class="col-sm-11">
		<h1 class="text-center mt-3">Welcome to Admin zone</h1>
	</div>
</div>
<div class="row menu bg-info" style="min-height: 40px">
<nav class="navbar navbar-expand-lg navbar-bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="../admin/dashboard">Dashboard</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../admin/ManageEnquiry">Manage enquiry</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../admin/Notification">Notification</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="../admin/managefeed">Manage feedback</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="../admin/manageuser">Manage User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../admin/send">Send Email</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="../admin/Changepass">changepass</a></li>
            <li><a class="dropdown-item" href="../admin/Logout">Logout</a></li>
          </ul>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
</div>