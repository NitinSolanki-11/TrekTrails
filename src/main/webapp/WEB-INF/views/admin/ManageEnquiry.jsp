<%@page import="java.sql.ResultSet"%>
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
<div class="row main p2 " style="background-color: ; min-height: 500px;">
  <!-- start : Enquiry reading  -->
  <div class="col-sm-1"></div>
  <div class="col-sm-10">
     <h2 class="mt-2 text-center"> Manage Enquiries</h2>
     <% 
  String msg="";
    if(request.getAttribute("result")!=null){
    	ResultSet rs=(ResultSet)request.getAttribute("result");
    	try{
    		%>
    		<table class="tbl tabble table-stripped table-bordered border-primary">
    		   <tr>
    		     <th>Enquiry ID</th>
    		     <th>Name</th>
    		     <th>MOB NO</th>
    		     <th>Email</th>
    		     <th>Query message </th>
    		     <th>Reply</th>
    		     <th>Asked On</th>
    		   </tr>
    		   <%
    		     while(rs.next()){
    		    	 int eid;
    		    	 String name,mobno,email,message,dt;
    		    	 eid=rs.getInt("Enquiry_id");
    		    	 name=rs.getString("name");
    		    	 mobno=rs.getString("mobno");
    		    	 email=rs.getString("emailid");
    		    	 message=rs.getString("query_msg");
    		    	 dt=rs.getString("enq_dt");
    		    	 out.print("<tr><td>"+eid+"</td><td>"+name+"</td><td>"+mobno+"</td><td>"+email+"</td><td>"+message+"</td><td>"+dt+"</td><td><a href='../admin/email?em="+email+"'>Send Email</a></td></tr>");
    		     }
    		    	 
    		   %>
    		</table>
    		<%
    	}
    	catch(Exception e){
    		out.print("sorry due to some technical error we are unable to process your request. Error:"+e.getMessage());
    		
    	}
    }else{
    	out.print("<h2 class='mt-2 text-center text-white'>No records are available in database.</h2>");
    	
    }
  %>
  </div>
  <div class="col-sm-1"></div>
  <!-- End enquiry -->
</div>
<jsp:include page="../common/admin_footer.jsp"></jsp:include>
</div>
</body>
</html>