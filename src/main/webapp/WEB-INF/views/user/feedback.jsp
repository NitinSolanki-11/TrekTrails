<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../common/Mylinks.jsp"></jsp:include>
</head>
<body  class="bg-info">
<div class="container-fluid  ">
        <h1 class="text-center">Feedback/Suggestion</h1>
        <div class="row g-0 text-center">
  <div class="col-sm-6 bg-danger ">.col-sm-6 .col-md-8</div>
  <div class="col-sm-6   bg-secondary " style="height: 400px;"><form >
  <div class="form-group">
    <label for="exampleFormControlInput1">User Id</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Example select</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>About Hotel Bookings/Services</option>
      <option>About Transportation Service</option>
      <option>About  Online Booking Services</option>
      <option>About Company Services  </option>
      <option>5</option>
    </select>
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Example textarea</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  <button name="submit" class="bg-danger text-white">Submit</button>
           </form>
       </div>
   </div>
        
        
</div>


</body>
</html>