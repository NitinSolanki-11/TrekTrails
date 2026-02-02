<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.taglibs.standard.tag.common.xml.IfTag"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <style>
   *{
   margin: 0 auto;
   padding: 0;
   }
   </style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>TrekTrails.com</title>
         <link href='<c:url value="/Images/weblogo.png"/>' rel="icon"/>
        <jsp:include page="common/Mylinks.jsp"></jsp:include>
    </head>
    <body>
        <div class="container-fluid" style="background-color: #2D4687">
        <jsp:include page="common/general_header.jsp"></jsp:include>
        <div class="row">
        <div class="col-sm-2 bg-danger text-white">Important Info:</div>
        <div class="col-sm-10">
        <marquee direction="left">
          <%
            if(request.getAttribute("noti")!=null){
            	ResultSet rs=(ResultSet)request.getAttribute("noti");
            	while(rs.next()){
            		String sg=rs.getString("Notification"); //col name in table of notification
            		out.print("<span><i class='bi bi-circle-fill' style='color:navy;'></i>"+sg+"</span><i class='bi bi-circle-fill' style='color:gray;'></i>");
            	}
            }
          %>
          </marquee>
        </div>
        </div>
        
        <div style="min-height: 600px;">
        <div id="autoCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
            <!-- Indicators -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#autoCarousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#autoCarousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#autoCarousel" data-bs-slide-to="2"></button>
            </div>
            
            <!-- Slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="resources/Images/slider1.jpg" class="d-block w-100" alt="Map 1" style="height: 600px; object-fit: cover;" onerror="this.src=''; this.alt='Image failed to load'; this.style.display='none';">
                    <div class="carousel-caption d-none d-md-block" style="background: rgba(0, 0, 0, 0.6); border-radius: 10px; padding: 20px;">
                        <h5 style="font-size: 1.5rem; font-weight: bold; margin-bottom: 10px;"></h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img src="resources/Images/slider2.jpg" class="d-block w-100" alt="Map 2" style="height: 600px; object-fit: cover;" onerror="this.src=''; this.alt='Image failed to load'; this.style.display='none';">
                    <div class="carousel-caption d-none d-md-block" style="background: rgba(0, 0, 0, 0.6); border-radius: 10px; padding: 20px;">
                        <h5 style="font-size: 1.5rem; font-weight: bold; margin-bottom: 10px;">Second slide label</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img src="resources/Images/slider3.jpg" class="d-block w-100" alt="Mountain 2" style="height: 600px; object-fit: cover;" onerror="this.src=''; this.alt='Image failed to load'; this.style.display='none';">
                    <div class="carousel-caption d-none d-md-block" style="background: rgba(0, 0, 0, 0.6); border-radius: 10px; padding: 20px;">
                        <h5 style="font-size: 1.5rem; font-weight: bold; margin-bottom: 10px;">Third slide label</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                    </div>
                </div>
            </div>
            
            <!-- Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#autoCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#autoCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
     <section  style="min-height: 300px; background: white;">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="text-dark fw-bold mb-3">TrekTrails Services</h2>
                <p class="text-muted lead">Discover amazing adventures with our premium travel services</p>
            </div>
            
            <!-- Card 1 - Left -->
            <div class="row mb-4 align-items-center">
                <div class="col-md-6">
                    <div class="card border-0 shadow-lg" style="transition: all 0.3s ease; cursor: pointer;" 
                         onmouseover="this.style.transform='translateY(-10px) scale(1.02)'; this.style.boxShadow='0 20px 40px rgba(0,0,0,0.2)'" 
                         onmouseout="this.style.transform='translateY(0) scale(1)'; this.style.boxShadow='0 10px 30px rgba(0,0,0,0.1)'">
                        <div class="card-body text-center p-4">
                            <div class="mb-3" style="color: #667eea;">
                                <i class="bi bi-mountain display-4"></i>
                            </div>
                            <h5 class="card-title fw-bold mb-3">Adventure Trekking</h5>
                            <p class="card-text text-muted">Experience breathtaking mountain trails and challenging treks with expert guides and premium equipment.</p>
                            <div class="mt-3">
                                <span class="badge bg-primary rounded-pill">Popular</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6"></div>
            </div>

            <!-- Card 2 - Right -->
            <div class="row mb-4 align-items-center">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="card border-0 shadow-lg" style="transition: all 0.3s ease; cursor: pointer;" 
                         onmouseover="this.style.transform='translateY(-10px) scale(1.02)'; this.style.boxShadow='0 20px 40px rgba(0,0,0,0.2)'" 
                         onmouseout="this.style.transform='translateY(0) scale(1)'; this.style.boxShadow='0 10px 30px rgba(0,0,0,0.1)'">
                        <div class="card-body text-center p-4">
                            <div class="mb-3" style="color: #764ba2;">
                                <i class="bi bi-compass display-4"></i>
                            </div>
                            <h5 class="card-title fw-bold mb-3">Guided Tours</h5>
                            <p class="card-text text-muted">Explore hidden gems and cultural landmarks with our knowledgeable local guides and customized itineraries.</p>
                            <div class="mt-3">
                                <span class="badge bg-success rounded-pill">Recommended</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 3 - Left -->
            <div class="row mb-4 align-items-center">
                <div class="col-md-6">
                    <div class="card border-0 shadow-lg" style="transition: all 0.3s ease; cursor: pointer;" 
                         onmouseover="this.style.transform='translateY(-10px) scale(1.02)'; this.style.boxShadow='0 20px 40px rgba(0,0,0,0.2)'" 
                         onmouseout="this.style.transform='translateY(0) scale(1)'; this.style.boxShadow='0 10px 30px rgba(0,0,0,0.1)'">
                        <div class="card-body text-center p-4">
                            <div class="mb-3" style="color: #667eea;">
                                <i class="bi bi-camera display-4"></i>
                            </div>
                            <h5 class="card-title fw-bold mb-3">Photography Tours</h5>
                            <p class="card-text text-muted">Capture stunning landscapes and wildlife with professional photography workshops and scenic locations.</p>
                            <div class="mt-3">
                                <span class="badge bg-warning rounded-pill">New</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6"></div>
            </div>

            <!-- Card 4 - Right -->
            <div class="row mb-4 align-items-center">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="card border-0 shadow-lg" style="transition: all 0.3s ease; cursor: pointer;" 
                         onmouseover="this.style.transform='translateY(-10px) scale(1.02)'; this.style.boxShadow='0 20px 40px rgba(0,0,0,0.2)'" 
                         onmouseout="this.style.transform='translateY(0) scale(1)'; this.style.boxShadow='0 10px 30px rgba(0,0,0,0.1)'">
                        <div class="card-body text-center p-4">
                            <div class="mb-3" style="color: #764ba2;">
                                <i class="bi bi-building display-4"></i>
                            </div>
                            <h5 class="card-title fw-bold mb-3">Accommodation Booking</h5>
                            <p class="card-text text-muted">Premium hotels, cozy homestays, and adventure camps - we arrange comfortable stays for every budget and preference.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 5 - Left -->
            <div class="row mb-4 align-items-center">
                <div class="col-md-6">
                    <div class="card border-0 shadow-lg" style="transition: all 0.3s ease; cursor: pointer;" 
                         onmouseover="this.style.transform='translateY(-10px) scale(1.02)'; this.style.boxShadow='0 20px 40px rgba(0,0,0,0.2)'" 
                         onmouseout="this.style.transform='translateY(0) scale(1)'; this.style.boxShadow='0 10px 30px rgba(0,0,0,0.1)'">
                        <div class="card-body text-center p-4">
                            <div class="mb-3" style="color: #667eea;">
                                <i class="bi bi-map display-4"></i>
                            </div>
                            <h5 class="card-title fw-bold mb-3">Custom Itineraries</h5>
                            <p class="card-text text-muted">Personalized travel plans tailored to your interests, timeline, and budget with 24/7 support throughout your journey.</p>
                        </div>
                    </div>
                </div>
                
            </div>

        </div>
        <jsp:include page="common/general_footer.jsp"></jsp:include>
        <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" 
    data-bs-target="#staticBackdrop" style="position: fixed;right: 0; top: 50%; 
    transform: rotate(-90deg) translateY(-50%); transform-origin: right center; z-index: 1050;">
  Enquiry
</button>
<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" 
   tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">
           PLease ask your query/concern</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" 
        aria-label="Close"></button>
      </div>
      <div class="modal-body" style="background-color:lightcyan">
        <form action="saveenquiry" method="post">
        	<label for="name" class="form-label">Name:</label>
        	<input id="name" name="name" type="text" class="form-control">
        	<label for="email" class="form-label">Email:</label>
        	<input id="email" name="email" type="email" class="form-control">
        	<label for="mobno" class="form-label">Mob No:</label>
        	<input id="mobno" name="mobno" type="number" class="form-control">
        	<label for="detail" class="form-label">Enquiry detail:</label>
        	<textarea rows="5" name="query" cols="" class="form-control" 
        	id="detail" style="resize: none"></textarea>
        	<div class="modal-footer">
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
             <button type="submit" class="btn btn-primary">Submit</button>
            </div>
         </form>
                  <%
                     if(request.getAttribute("msg")!=null)
                     {
                    	 String result=request.getAttribute("msg").toString();
                    	 %>
                    	  <p class="text-center bg-info text-white h6 text-danger"><%=result%></p>; 
                    	 <% 
                     }
                   %>
      </div>
    </div>
  </div>
</div>
        <div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
        </div>
    </body>
</html>
