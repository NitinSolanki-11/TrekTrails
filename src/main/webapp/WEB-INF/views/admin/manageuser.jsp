<%@page import="java.sql.ResultSet"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER MANAGEMENT</title>
<jsp:include page="../common/Mylinks.jsp"></jsp:include>
</head>
<body>
<div class="container-fluid">
<jsp:include page="../common/admin_header.jsp"></jsp:include>
<div class="row main p2 " style="background-color: Lihtgrey; min-height: 500px;">

<div class="col-sm-1">

</div>
<div class="col-sm-10">
           <h2 class="mt-2 text-center">Manage USER</h2>
           <%
             if(request.getAttribute("result")!=null)
             {
            	 ResultSet rs=(ResultSet)request.getAttribute("result");
            	 try
            	 {
            		 %>
            		 <table class="tbl table table-stripped table-bordered ">
            		 <tr>
            		 <th>S.NO</th>
            		  <th>Name</th>
            		  <th>Gender</th>
            		   <th>DATE OF BIRTH</th>
            		   <th>EMAIL ID</th>
            		   <th>MOBILE NUMBER </th>
            		   <th>ADDRESS </th>
            		   <th>PINCODE </th>
            		   <th>AADHAR PHOTO</th>
            		   <th>DATE & TIME OF REG. </th>
            		 </tr>
            		 <%
            		 int x=1;
            		 while(rs.next())
            		 {
            		 %>
            		 <tr>
            		    <td><%=x%></td>
            		    <td><%=rs.getString("Name") %></td>
            		    <td><%=rs.getString("Gender") %></td>
            		    <td><%=rs.getString("DOB") %></td>
            		    <td><%=rs.getString("Email") %></td>
            		    <td><%=rs.getString("Mob_No") %></td>
            		    <td><%=rs.getString("Address") %></td>
            		    <td><%=rs.getString("Pin_code") %></td>
            		    <td><img src="../resources/Aadhar/<%=rs.getString("Aadhar")%>" style="width:300px;height:300px;border-radius:20%"/> </td>
            		    <td><%=rs.getString("log_dt") %></td>
            		 </tr>
            		 <%
            		 x++;
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