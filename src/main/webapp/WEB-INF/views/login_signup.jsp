<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Demo Project | Home </title>
        <jsp:include page="common/Mylinks.jsp"></jsp:include>
        <style>
           .form-control
           {
              margin-top:10px;
              margin-bottom:8px;
           }
        </style>
        <script type="text/javascript">
	$(document).ready(function name() {
		$('#btnrefresh').click(function() {
			//Make an ajax call
			$.get("Captcha",null,function(data){
				$("#ImgCaptcha").attr("src","Captcha");
			});
		});
	})
</script>
    </head>
    <body>
        <div class="container-fluid">
          <jsp:include page="common/general_header.jsp"></jsp:include>
          <div class="row main" style="min-height:600px;background-color: #e8f8f5;">
               <div class="col-sm-2"></div>
               <div class="col-sm-8 m-3 p-3" 
                   style="min-height:450px;background-color:#99A1AF;">
                   <h2 class="text-center">Sign Up Here</h2>
                   <hr/>
                   <div class="row">
                     <div class="col-sm-1"></div>
                     <div class="col-sm-10 myform p-2" style="min-height:600px;
                          background-color: #96F7E4;border-radius:2%;">
                        <form action="saveregister" method="post" 
                             enctype="multipart/form-data" class="m-3">
                           <div class="row">
                             <div class="col-sm-12">
                                <input type="text" name="Name" placeholder="Name" 
                                    class="form-control" />
                             </div>
                            
                           </div>
                           <div class="row">
                             <div class="col-sm-6">
                             <span class="form-control">
                                 Gender: 
                                 <input type="radio" name="Gender" value="Male"/>
                                 Male
                                 <input type="radio" name="Gender" value="Female"/>
                                 Female
                                </span>
                             </div>
                             <div class="col-sm-6">
                                <input type="text" name="DOB" placeholder="Enter Date of Birth" 
                                   class="form-control"/>
                             </div>
                           </div>
                            <div class="row">
                             <div class="col-sm-6">
                                <input type="email" name="Email" placeholder="Email Id" 
                                   class="form-control"/>
                             </div>
                             <div class="col-sm-6">
                                <input type="number" name="Mob_No" placeholder="Mobile No" 
                                   class="form-control"/>
                             </div>
                           </div>
                           <div class="row">
                            
                             <div class="col-sm-12">
                                <textarea name="Adderss" class="form-control"
                                   placeholder="Enter Permanent Address" rows="3"></textarea>
                            </div>
                           </div>
                           <div class="row">
                             <div class="col-sm-6">
                                <input type="number" name="pin_code" 
                                  placeholder="Enter Your Pincode" 
                                  class="form-control" />  
                             </div>
                             <div class="col-sm-6">
                              <span class="form-control">
                               Upload Your Aadhaar
                               <input type="file" name="UserAadhaarPhoto" /> 
                              </span>
                             </div>
                           </div>
                             <div class="row">
                             <div class="col-sm-6">
                                <input type="password" name="Pass" 
                                  placeholder="Enter Your Password" 
                                  class="form-control" />  
                             </div>
                             <div class="col-sm-6">
                              <input type="password" name="ConfPass" 
                                  placeholder="Confirm Your Password" 
                                  class="form-control" /> 
                             </div>
                           </div>
                             <div class="row">
                             <div class="col-sm-6">
                             
                                <span class="form-control">
                                Captcha Code:
                                  <img src="Captcha" id="ImgCaptcha" width="150px"
                                   height="40px" />
                                   <i class="bi bi-arrow-clockwise" id="btnrefresh" style="font-size: 30px;. title="Refresh  Code""></i>
                                </span>
                                
                                
                             </div>
                             <div class="col-sm-6">
                              <input type="text" name="CaptchaCode" 
                                  placeholder="Enter Captcha Code Here.." 
                                  class="form-control" style="height:50px;" /> 
                             </div>
                           </div>
                           <div class="row text-center mt-4">
                             <div class="col-sm-6">
                                <input type="submit" value="Sign Up" 
                                   class="btn btn-success btn-lg" />
                             </div>
                             <div class="col-sm-6">
                              <input type="reset" value="Reset" 
                                   class="btn btn-danger btn-lg" />
                             </div>
                            
                           </div>
                           <div class="col-sm-12" style="margin-left: 310px" >Already have an account <a href="lin"> &nbsp; login</a></div>
                        </form>
                        
                         
                     </div>
                     <div class="col-sm-1"></div>
                   </div>
                   
               </div>
               <div class="col-sm-2"></div>
          </div>
          <jsp:include page="common/general_footer.jsp"></jsp:include>
        </div>
    </body>
</html>