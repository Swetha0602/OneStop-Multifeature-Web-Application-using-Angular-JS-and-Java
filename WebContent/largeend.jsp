<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>@import url('https://fonts.googleapis.com/css2?family=Nunito&display=swap');
*{
  margin: 0;
  padding: 0;
  
  box-sizing: border-box;
  font-family: 'Nunito', sans-serif;
  
  transition: all .5s;
}
body{background: #f0f2f5;}

/*Table#1*/
#table1{
  border-collapse: collapse;
  
  width: 99%;
  
  margin-top: 70px;
  margin-left: 70px;
  
  font-size: 25px;
}
#table1:hover{
  width: 100%;
  
  margin-top: 75px;
  margin-left: 75px;
  
  font-size: 30px;
}

td, th{
  border-radius: 5px;
  
  padding: left; 
  text-align: left;
}

  /*TRs#1*/
#tr1{background: #e0e6eb; color: #0a0d0f;}
#tr1:hover{background: #0a0d0f; color: #e0e6eb;}

#tr2{background: #d1d9e1; color: #141a1f;}
#tr2:hover{background: #141a1f; color: #d1d9e1;}

#tr3{background: #c1ccd7; color: #1e272e;}
#tr3:hover{background: #1e272e; color: #c1ccd7;}

#tr4{background: #b2c0cd; color: #28333e;}
#tr4:hover{background: #28333e; color: #b2c0cd;}

#tr5{background: #a2b3c3; color: #32404d;}
#tr5:hover{background: #32404d; color: #a2b3c3;}

#tr6{background: #93a6b8; color: #3c4d5d;}
#tr6:hover{background: #3c4d5d; color: #93a6b8;}



</style>
</head>
<body>
<%
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String adult=request.getParameter("adult");
String child=request.getParameter("child");
String room=request.getParameter("room");
String indate=request.getParameter("indate");
String outdate=request.getParameter("outdate");
String amount=request.getParameter("amount");

%>
<table id="table1">
  <tr id="tr1">
    <th id="th1">Name</th>
    <th id="th1">Contact</th>
    <th id="th1">Adult</th>
    <th id="th1">Child</th>
    <th id="th1">Room</th>
    <th id="th1">Check In date</th>
  <th id="th1">Check out date</th>
  <th id="th1">Total Amount</th>
  <th id="th1">Payment Status</th>
  </tr>
  <tr id="tr2">
    <td id="td1"><%=name%></td>
    <td id="td1"><%=contact%></td>
    <td id="td1"><%=adult%></td>
    <td id="td1"><%=child%></td>
    <td id="td1"><%=room%></td>
    <td id="td1"><%=indate%></td>
  <td id="td1"><%=outdate%></td>
  <td id="td1"><%=amount%></td>
  <td id="td1">paid</td>
  </tr>
  
</table>
</body>
</html>