<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Admin zone | dashboard</title>
<jsp:include page="../common/Mylinks.jsp"></jsp:include>
<style>
  html, body {
    overflow-x: hidden;
  }
</style>
</head>
<body>

   <div class="container-fluid">
    <jsp:include page="../common/admin_header.jsp"></jsp:include>
    <div class="row main p-2" style="background-color:lightgray; min-height:550px;">
    <div class="container">
      <div class="row">
       <div class="col-sm-6">
       <img src="../resources/Images/gallery1.jpg" style="border-radius: 20px; box-shadow: 5px 5px 15px;" height="550px" width="100%" />
        </div>
        <div class="col-sm-6  "  style="background-color: #F0E7E6; border-radius: 20px; box-shadow: 5px 5px 15px ;">
         <div class="form-section mt-5 mb-5">
         <h1 class="text-center text-dark fw-bold">Send Email to Anyone...</h1>
         <form action="../admin/submitsend" method="post">
          <div class="mb-3">
             <label for="sendto" class="form-label"><h6>Email address</h6></label>
            <input type="email"class="form-control" id="sendto" name="sendto"  placeholder="send to....">
             </div>
              <div class="mb-3">
             <label for="subject" class="form-label"><h6>Subject of the mail</h6></label>
            <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject of the mail ">
             </div>
             <div class="mb-3">
              <label for="message" class="form-label"><h6>Message...</h6></label>
             <textarea class="form-control" id="message" name="message" placeholder="Type mail message" rows="3"></textarea>
              </div>
              <div class="row d-flex justify-content-center">
              <input type="submit" class="btn  " style="background-color:#3F3F46; color: white; width:100px; border-radius: 20pxz" value="save"/> 
              </div>
              <%
        String msg="";
		  if(request.getAttribute("msg")!=null)
		  {
			  msg=request.getAttribute("msg").toString();
			 out.print("<p class='bg-info text-white h5 text-center mt-2 p-1'>"+msg+"</p>");
		  }
       %>
          </form>
          </div>
         
         </div>
      </div>
    </div>
     </div>
   </div>
   <script>
 $(document).ready(function(){
	 url=window.location.href;
	 equal_index=url.indexOf("=");
	 if(equal_index>0)
		 {
		 email=url.substr(equal_index+1);
		 $("#sendto").val(email);
		 }
 });
</script>
   <jsp:include page="../common/admin_footer.jsp"></jsp:include>
</body>
</html>