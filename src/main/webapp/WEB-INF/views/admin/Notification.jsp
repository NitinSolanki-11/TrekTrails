<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notification| admin</title>
 <jsp:include page="../common/Mylinks.jsp"></jsp:include>
 
</head>
<body>
<div class="container-fluid">
 <jsp:include page="../common/admin_header.jsp"></jsp:include>
<div class="row main p-2" style="background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%); min-height: 100vh;">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="notification-box mt-5 p-4" style="background: rgba(255, 255, 255, 0.95); border-radius: 20px; box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);">
                <h1 class="text-center text-primary mb-4">
                    <i class="bi bi-bell-fill" style="margin-right: 10px;"></i>Notification
                </h1>
                <form>
                    <div class="mb-4">
                        <label for="messageTextarea" class="form-label fw-bold">Message Content</label>
                        <textarea 
                            class="form-control" 
                            placeholder="Enter your notification message here..." 
                            id="messageTextarea" 
                            rows="5" 
                            name="event_msg"
                            style="border-radius: 15px; border: 2px solid #e9ecef; padding: 15px;"
                        ></textarea>
                    </div>
                    <div class="text-center">
                        <button 
                            type="submit" 
                            class="btn text-white px-5 py-3" 
                            style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border: none; border-radius: 25px; font-weight: 600; text-transform: uppercase; letter-spacing: 1px;"
                        >
                            <i class="bi bi-send-fill me-2"></i>SUBMIT
                        </button>
                         <% 
  String msg="";
    if(request.getAttribute("msg")!=null){
    	msg=request.getAttribute("msg").toString();
    	out.print("<p class='bg-info text-white h5 text-center mt-2 p-1'> "+msg+"</p>");
    }
  %>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
  <jsp:include page="../common/admin_footer.jsp"></jsp:include>
  </div>

</body>
</html>