<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;600;700&display=swap');
*{
    font-family: 'Ubuntu', sans-serif;

}
body{
  height:98vh;
  background-color: #4158D0;
background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
  font-family: 'Ubuntu', sans-serif;
  background-position:center center;
}
table {
/*   border: 1px solid #ccc; */
  border-collapse: collapse;
  margin: 0 auto;
  padding: 0;
  width: 80%;
  table-layout: fixed;
}

table caption {
    font-family: 'Ubuntu', sans-serif;
  font-size: 55px;
  font-weight:700;
  color:#00000090;
  padding: 15px;
}

table tr {
  background-color: #ffffff90;
  border: 1px solid #ddd;
  padding: 10px;
}
.thead{
  background-color: rgb(67 56 202);
  color:#fff;
}

table th,
table td {
  padding: 20px;
  text-align: center;
}

table th {
  font-size: 20px;
  letter-spacing: .1em;
  text-transform: capitalize;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }
  .thead{
  background-color: rgb(67 56 202);
  color:#fff;
}

  table caption {
     font-size: 35px;
  font-weight:700;
  color:#00000090;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}


</style>
</head>

<body>
<%

String food=request.getParameter("food");
String quan=request.getParameter("quan");
String price=request.getParameter("price");
String total=request.getParameter("total");
%>

<table>
  <caption>Food order Status</caption>
  <thead>
    <tr class="thead">
      <th scope="col">Food Name</th>
      <th scope="col">Food Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Total Amount</th>
      <th scope="col">Payment Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td data-label="Name" ><%=food %></td>
      <td data-label="Title"><%=quan %></td>
      <td data-label="Website"><%=price %></td>
      <td data-label="Role"><%=total %></td>
      <td data-label="Role">Paid</td>
    </tr>
    
  </tbody>
</table>

</body>
</html>