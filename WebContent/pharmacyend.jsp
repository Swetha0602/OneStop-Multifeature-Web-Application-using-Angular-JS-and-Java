<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table { 
	width: 900px; 
	border-collapse: collapse; 
	margin:50px auto;
	}

th { 
	background: #3498db; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border-bottom: 1px solid #ccc;
	text-align: center; 
	font-size: 18px;
	}

.tbl-accordion-header a {
	color: #28c76f !important;
}

.tbl-accordion-body {
	display: none;
}

.tbl-accordion-body td {
  border-bottom: 0px; 
}

.tbl-accordion-body tr:last-child {
  border-bottom: 1px solid #ccc; 
}


</style>
<title>Insert title here</title>



</head>
<body>
<% String medicine=request.getParameter("mname");
String quantity=request.getParameter("quan");
%>


<center>
<h1>Medicine order status</h1>
</center>
<table>
  <thead>
    <tr>
      <th>medicine name</th>
      <th>quantity</th>
      <th>payment status</th>
    </tr>
  </thead>
  <tbody>
  <tbody class="tbl-accordion-header">
    <tr>
      
      <td><%=medicine %></td>
      <td><%=quantity %></td>
      <td>paid</td>
    </tr>
  </tbody>
  <tbody class="tbl-accordion-body">
  
  </tbody>
  <tbody class="tbl-accordion-header">
    
  </tbody>
  <tbody class="tbl-accordion-body">
   
   
  </tbody>
  </tbody>
</table>
</body>
<script>
$(document).ready(function () {
	$('[data-toggle="toggle"]').click(function () {
		$(this).parents().next(".tbl-accordion-body").toggle();
	});
});

</script>
</html>