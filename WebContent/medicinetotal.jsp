<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
table{
width:100%;
}
button {
  background-color: black;
  color:white;
  font-size:16px;
  }
</style>
 <button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button><br><br>
<body>

<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark">
 <thead>
    <tr class="table-active">
      <th style="text-align: center;">Medicine name</th>
      <th style="text-align: center;">Price</th>
      <th style="text-align: center;">Quantity</th>
       <th style="text-align: center;">Total</th>
      <th style="text-align: center;">Payment</th>
    </tr>
  </thead>
 
<%

String mname=session.getAttribute("mname").toString(); 
String quan=session.getAttribute("quantity").toString();
%>


<%
System.out.print("mname"+mname);
       Connection con;
      

       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `train`.medicinename WHERE Medicinename='"+mname+"' ");

       ResultSet rs=ps.executeQuery();

       while(rs.next())
       {
     
    	   Integer price=Integer.valueOf(rs.getString(3));
    	   Integer quantity=Integer.valueOf(quan);
    	   int total=price*quantity;
    	   
    	  System.out.println(price);
    	  HttpSession train=request.getSession();
  		train.setAttribute("total", total);
        %>
	
 
    

     <tr class="table-secondary">
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3)%></td>
      <td style="text-align: center;"><%= quan%></td>
      <td style="text-align: center;"><%= total%></td>
       <td style="text-align: center;"><a href="medicinepayment.jsp?mname=<%= rs.getString(2)%>&&quan=<%=quan%>"><button>make payment</button></a></td>

<%}%>


     
     </tr>
	


</table>

</div>

</center>

</body>
<script>
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<script>
function goBack() {
  window.history.back();
}
</script>
</html>