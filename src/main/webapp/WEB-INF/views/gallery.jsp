<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  .custom-card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1), 
                        0 5px 15px rgba(0, 0, 0, 0.08);
            overflow: hidden;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            background: white;
            width: 100%;
            aspect-ratio: 1;
        }
        
        .custom-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15), 
                        0 10px 25px rgba(0, 0, 0, 0.1),
                        0 5px 15px rgba(102, 126, 234, 0.2);
        }
        
        .card-img-top {
    width: 100%;
    height: 60%;
    object-fit: fill;
    object-position: center;
    display: block;
    max-width: 100%;
    max-height: 100%;
}
        
        .card-body {
            padding: 13px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 25%;
        }
        
        .card-text {
            color: #6c757d;
            line-height: 1.4;
            margin: 0;
            font-size: 14px;
            text-align: center;
        }
        
        .card-footer {
            background: #f8f9fa;
            border-top: 1px solid #e9ecef;
            padding: 10px 13px;
            height: 15%;
            display: flex;
            align-items: center;
        }
        
        .author-info {
            display: flex;
            align-items: center;
            gap: 8px;
            width: 100%;
        }
        
        .author-avatar {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            background: linear-gradient(45deg, #667eea, #764ba2);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
            font-size: 14px;
            flex-shrink: 0;
        }
        
        .author-details {
            flex: 1;
            min-width: 0;
        }
        
        .author-details h6 {
            margin: 0;
            color: #2c3e50;
            font-weight: 600;
            font-size: 14px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        
        .author-details small {
            color: #6c757d;
            font-size: 11px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            display: block;
        }
</style>
<link href='<c:url value="/resources/Images/weblogo.png"/>' rel="icon"/>
<jsp:include page="common/Mylinks.jsp"></jsp:include>
</head>
<body>
<div class="container-fluid">

        <jsp:include page="common/general_header.jsp"></jsp:include>
       <div class="container-fluid" style="padding: 20px;">
        <div class="row  g-3">
            <!-- Card 1 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images//gallery/earth1.jpg" alt="Card Image" class="card-img-top" >
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Beautiful mountain landscape with stunning views.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                NJ
                            </div>
                            <div class="author-details">
                                <h6>Nitin Jaat</h6>
                                <small class="text-muted">Adventure Guide / 2 days ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/gallery3.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Stunning sunset over the ocean with vibrant colors.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                YJ
                            </div>
                            <div class="author-details">
                                <h6>Yogesh Jaat</h6>
                                <small class="text-muted">Photographer / 1 day ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/gallery2.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Peaceful forest path with morning sunlight filtering through.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                SJ
                            </div>
                            <div class="author-details">
                                <h6>Sachin Jaat</h6>
                                <small class="text-muted">Nature Guide • 3 days ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 4 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/globe1.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Urban cityscape at night with glowing lights and energy.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                AJ
                            </div>
                            <div class="author-details">
                                <h6>Aman Jaat</h6>
                                <small class="text-muted">City Explorer • 5 days ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          <div class="row  g-3 " style="margin-top: 20px">
            <!-- Card 1 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/journey1.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Beautiful mountain landscape with stunning views.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                JJ
                            </div>
                            <div class="author-details">
                                <h6>Jeetu Jaat</h6>
                                <small class="text-muted">Adventure Guide • 2 days ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/mount2.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Stunning sunset over the ocean with vibrant colors.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                LC
                            </div>
                            <div class="author-details">
                                <h6>Lalit Jaat</h6>
                                <small class="text-muted">Photographer • 1 day ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/group1.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Peaceful forest path with morning sunlight filtering through.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                MJ
                            </div>
                            <div class="author-details">
                                <h6>Mohit Jaat</h6>
                                <small class="text-muted">Nature Guide • 3 days ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 4 -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card custom-card">
                    <!-- Card Image -->
                    <img src="resources/Images/gallery/globalre2.jpg" alt="Card Image" class="card-img-top">
                    
                    <!-- Card Body -->
                    <div class="card-body">
                        <p class="card-text">
                            Urban cityscape at night with glowing lights and energy.
                        </p>
                    </div>
                    
                    <!-- Card Footer -->
                    <div class="card-footer">
                        <div class="author-info">
                            <div class="author-avatar">
                                SJ
                            </div>
                            <div class="author-details">
                                <h6>Shashank Jaat</h6>
                                <small class="text-muted">International Guide • 5 days ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <jsp:include page="common/general_footer.jsp"></jsp:include>
        </div>
        
        
        
</body>
</html>