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

 <div class="d-flex align-items-center justify-content-center " style="background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%); min-height: 100vh;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="card text-center p-4" style="background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(10px); border: none; border-radius: 20px; box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1); transition: all 0.3s ease;" onmouseover="this.style.transform='translateY(-10px)'; this.style.boxShadow='0 25px 50px rgba(0, 0, 0, 0.2)'" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 15px 35px rgba(0, 0, 0, 0.1)'">
                        <div style="background: linear-gradient(135deg, #667eea, #764ba2); color: white; border-radius: 50%; width: 100px; height: 100px; margin: -50px auto 20px; display: flex; align-items: center; justify-content: center; font-size: 3rem; box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);">
                            <i class="bi bi-person-circle"></i>
                        </div>
                        <div class="card-body">
                            <h5 class="fs-4 mb-3" style="background: linear-gradient(135deg, #667eea, #764ba2); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; font-weight: 600; text-transform: uppercase; letter-spacing: 1px;">User Management</h5>
                            <p class="text-muted mb-4">Manage users, roles, and permissions with ease</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="../common/admin_footer.jsp"></jsp:include>
</div>
</body>
</html>