<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../common/Mylinks.jsp"></jsp:include>

</head>
<body>
<div class="container-fluid  ">
<div class="row ">
         <div class="col-md-8">
            <div class="card shadow p-4 mb-4">
               <form action="saveblog" method="post" enctype="multipart/form-data">
               <%
						if (request.getAttribute("msg") != null) {
							String result = request.getAttribute("msg").toString();
						%>
						<p class="text-center bg-info text-white h4"><%=result%></p>
						<%
						}
						%>
                  
                  <div class="mb-3">
                     <label for="location" class="form-label"> Location / City</label>
                     <input type="text" class="form-control" id="location" name="location" placeholder="Enter city name" required>
                  </div>

                  <div class="mb-3">
                     <label for="travelDate" class="form-label">Date of Travel</label>
                     <input type="date" class="form-control" id="traveldate" name="traveldate" required>
                  </div>

                  <div class="mb-3">
                     <label for="title" class="form-label"> Blog Title</label>
                     <input type="text" class="form-control" id="title" name="title" placeholder="Enter blog title" required>
                  </div>

                  <div class="mb-3">
                     <label for="content" class="form-label">Write Blog</label>
                     <textarea class="form-control" id="content" name="content" rows="7" placeholder="Write your travel experience here..." required></textarea>
                  </div>

                  <div class="mb-3">
                     <label for="photo" class="form-label"> Blog Photo</label>
                     <input class="form-control" type="file" id="photo" name="photo_file" accept="image/*" required>
                  </div>

                  <div class="d-grid">
                     <button type="submit" class="btn btn-success btn-lg">Save Blog</button>
                  </div>
               </form>
            </div>
         </div>
         </div>
         </div>
         

</body>
</html>