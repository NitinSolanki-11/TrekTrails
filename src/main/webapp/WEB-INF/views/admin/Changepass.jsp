<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome to admin area</title>
<jsp:include page="../common/Mylinks.jsp"></jsp:include>
</head>
<body>
<div class="container-fluid">
<jsp:include page="../common/admin_header.jsp"></jsp:include>
<div class="row main p2 " style="background-color: Lihtgrey; min-height: 500px;">
<div class="col-sm-3"></div>
<div class="col-sm-6 bg-light mb-3 mt-3 " style="border-radius: 20px;">
<div class="password-box mt-5">
<h3 class="mb-4 text-center"> <i class="bi bi-key" style="font-size: 30px;"></i>Change Password</h3>
 <% 
  String msg="";
    if(request.getAttribute("msg")!=null){
    	msg=request.getAttribute("msg").toString();
    	out.print("<p class='bg-info text-white h5 text-center mt-2 p-1'> "+msg+"</p>");
    }
  %>
<form action="../admin/updatepass" method="post" >
  <div class="mb-3">
    <label for="exampleInputpassword" class="form-label">Enter current password</label>
    <input type="password" placeholder="Enter your current password"  class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" name="cur_pass">
  </div>
  <div class="mb-3">
    <label for="new password" class="form-label">Enter New password</label>
    <input type="password" placeholder="Enter new password here" class="form-control" id="exampleInputPassword2" name="new_pass">
  </div>
  <div class="mb-3">
    <label for="confirm new password" class="form-label">Confirm New Password</label>
    <input type="password" placeholder="Confirmr new password here" class="form-control" id="exampleInputPassword3" aria-describedby="emailHelp" name="conf_pass">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
<div class="col-sm-3"></div>
</div>
<jsp:include page="../common/admin_footer.jsp"></jsp:include>
</div>
</body>
</html>