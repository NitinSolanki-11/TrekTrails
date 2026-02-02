<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>general trending blog</title>
<jsp:include page="common/Mylinks.jsp"></jsp:include>
</head>
<body>
<div class="container-fluid">
<jsp:include page="common/general_header.jsp"></jsp:include>
<h2 class="text-center">Photo gallery</h2>
<%
if(request.getAttribute("result")!=null){
	ResultSet rs=(ResultSet)request.getAttribute("result");
	try{
		while(rs.next()){
			%>
			<div class="col-sm-3 ">
			<img alt="" src="resources/travelpic/<%=rs.getString("photo_file") %>" style="width: 100%; height: 300px;"/>
			<p class="text-center h6 pt-2"><%=rs.getString("title") %></p>
			</div>
			<%
		}
		
	}catch(Exception e){
		out.println("sorry..! due to some technical error we are unable to display gallery ");
	}
}
%>


</div>
<jsp:include page="common/general_footer.jsp"></jsp:include>

</div>
</body>
</html>