<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <jsp:include page="common/Mylinks.jsp"></jsp:include>
  <script>
$(document).ready(function() {
    // Password toggle functionality
    $('#togglePassword').click(function() {
        const passwordField = $('#psw');
        const eyeIcon = $('#eyeIcon');
        
        if (passwordField.attr('type') === 'password') {
            passwordField.attr('type', 'text');
            eyeIcon.removeClass('bi-eye').addClass('bi-eye-slash');
        } else {
            passwordField.attr('type', 'password');
            eyeIcon.removeClass('bi-eye-slash').addClass('bi-eye');
        }
    });

    // Form validation
    $('#loginForm').submit(function(e) {
        const userid = $('#txt').val().trim();
        const password = $('#psw').val().trim();
        const usertype = $('#Select').val();
        
        // Reset error display
        $('#emailError').hide();
        
        // Gmail validation
        if (!userid.endsWith('@gmail.com')) {
            e.preventDefault();
            $('#emailError').show();
            $('#txt').focus();
            return false;
        }
        
        // Check if all fields are filled
        if (!userid || !password || !usertype) {
            e.preventDefault();
            alert('Please fill all fields');
            return false;
        }
        
        return true;
    });

    // Input focus effects
    $('.form-control, .form-select').focus(function() {
        $(this).css('border-color', '#667eea');
    }).blur(function() {
        $(this).css('border-color', '#e0e0e0');
    });
});
</script>
</head>
<body>
<div class="container-fluid">
 <jsp:include page="common/general_header.jsp"></jsp:include>
 
<div class="row  main" style="min-height:400px;background-color: #e8f8f5;">
<div class="col-sm-4" style="background-color: white;"></div>
<div class="col-sm-4" style="background-color: 
#6C7FAB; color: white">
<h2 class="text-center">Login</h2><hr>
<%
					if(request.getAttribute("msg")!=null){
						String result=request.getAttribute("msg").toString();
						%>
						<p class="text-center bg-info text-	 h4"><%=result%></p>
						<%
					}
				%>
<form action="processlogin" method="post" enctype="multipart/form-data">
<label for="text" class="form-label">UserId</label>
<input type="text" class="form-control" id="txt" name="userid" ><br>
<label for="psw" class="form-label">Password</label>
<input type="password" name="psw" class="form-control" id="psw" ><br>
<label for="select" class="form-label">User Type</label>
<select id="Select" name="usertype" class="form-select">
<option selected>--Select User type--</option>
<option value="user">User</option>
<option value="ADMIN">Admin</option>
</select>
<br>

<div class="text-center">
	<button class="btn btn-primary btn-lg" type="submit">Submit</button>
</div>

</form>
</div>
<div class="col-sm-4" style="background-color: white;"></div>
</div>

<jsp:include page="common/general_footer.jsp"></jsp:include>
</div>
</body>
</html>