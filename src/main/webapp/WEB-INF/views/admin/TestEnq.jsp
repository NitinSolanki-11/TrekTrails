<!-- start : Enquiry reading  -->
  <%@page import="java.sql.ResultSet"%>
<div class="col-sm-1"></div>
  <div class="col-sm-10">
     <h2 class="mt-2 text-center"> Manage Enquiries</h2>
     <% 
  String msg="";
    if(request.getAttribute("result")!=null){
    	ResultSet rs=(ResultSet)request.getAttribute("result");
    	try{
    		%>
    		<table class="tbl tabble table-stripped">
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