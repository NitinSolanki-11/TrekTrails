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
<div class="row main p2 " style="background-color: Lihtgrey; min-height: 500px;">

<div class="col-sm-1">

</div>
<div class="col-sm-10">
           <h2 class="mt-2 text-center">Manage feedback</h2>
           <%
             if(request.getAttribute("result")!=null)
             {
            	 ResultSet rs=(ResultSet)request.getAttribute("result");
            	 try
            	 {
            		 %>
            		 <table class="tbl table table-stripped table-bordered ">
            		 <tr>
            		 <th>FEEDBACK ID</th>
            		  <th>USER ID</th>
            		  <th>TITLE OF FEEDBACK </th>
            		   <th>MESSAGE OF FEEDBACK</th>
            		   <th>Name</th>
            		   <th>MOBILE NUMBER </th>
            		   <th>DATE/TIME OF FEEDBACK </th>
            		 </tr>
            		 <%
            		 while(rs.next())
            		 {
            		 int fid;
            		 String userid,title,feed_msg,Name,Mob_No,fdt;
            		 fid=rs.getInt("fid");
            		 userid=rs.getString("userid");
            		 title=rs.getString("title");
            		 feed_msg=rs.getString("feed_msg");
            		 Name=rs.getString("Name");
            		 Mob_No=rs.getString("Mob_No");
            		 fdt=rs.getString("fdt");
            		 out.print("<tr><td colspan-='4'>"+fid+"</td><td>"+userid+"</td><td>"+title+"</td><td colspan='4'>"+feed_msg+"</td></tr>");
            		 out.print("<tr style='border-bottom:2px solid black'><td >"+Name+"</td><td>"+Mob_No+"</td><td><b>Date and time of feedback:</b>"+fdt+"</td></tr>");
            		 }
            		 %>
            		   
            		 </table>
            		 <%
            	 }
            	 catch(Exception e)
            	 {
            		 out.print("Sorry! due to some technical errors, we are unable to process"+
            	        " your request.Error: "+e.getMessage());
            	 }
             }
             else 
             {
            	 out.print("<h2 class='mt-2 text-center bg-danger text-white'>"+
                          "No records are available in database.</h2>");
             }
           %>
         </div> 
        

<div class="col-sm-1">

</div>
       <!-- End: feedback -->
</div>
         
  <div class="col-sm-1"></div>
  <div>
<jsp:include page="../common/admin_footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>