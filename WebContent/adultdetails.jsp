<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>adultdetails.jsp</title>

<style>

:root {
  --main-color: black;
}
/* import google fonts */
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
/* body styling */
body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  background-color: var(--main-color);
  color: var(--main-color);
}
/* container styling */
.container {
  max-width: 400px;
  width: 90%;
  margin: 0 auto;
  position: relative;
}
/* input styling */
#form input[type="text"],
#form button[type="submit"],
#form input[type="email"],
#form input[type="password"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}
#form input[type="text"],
#form input[type="number"],
#form input[type="number"] {
  width: 100%;
  border: 1px solid var(--main-color);
  background: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  outline: none;
}
#form button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: var(--main-color);
  color: #FFF;
  margin: 0 0 5px;
  margin-top: 10px;
  padding: 10px;
  font-size: 15px;
  text-transform: capitalize;
}
/* form styling */
#form {
  background: #F9F9F9;
  padding: 25px;
  margin: 150px 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  border-radius: 10px;
}
#form h3 {
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
  text-align: center;
  text-transform: uppercase;
}
/* fieldset styling */
fieldset {
  border: none;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}
/* attribution styling */
.copyright {
  text-align: center;
}
.copyright a {
  color: white;
  background-color: var(--main-color);
  padding: 4px;
  text-transform: capitalize;
}
.follow a {
    color: black;
    border: 1px solid var(--main-color);
    background: transparent;
}

</style>
</head>
<body>
<%
String from=request.getParameter("frm");
String to=request.getParameter("to");
String tname=request.getParameter("tname");
String stime=request.getParameter("stime");
String etime=request.getParameter("etime");
String date=request.getParameter("date");
String adult=request.getParameter("adult");
String child=request.getParameter("child");
System.out.println("child" +child);
;String seattype=request.getParameter("seattype");
String coach=request.getParameter("coach");

int arate,crate,rate=0;
if(coach.equals("NonAc")){
	  arate=100;
	  Integer result = Integer.valueOf(adult);
	  arate*=result;
      crate=50;
      Integer result1 = Integer.valueOf(child);
	  crate*=result1;
       rate=crate+arate;
}
else
{
	   arate=150;
	   Integer result = Integer.valueOf(adult);
		  arate*=result;
		  crate=75;
		   Integer result1 = Integer.valueOf(child);
			  crate*=result1;
			  rate=crate+arate;
}
String price=String.valueOf(rate);
System.out.println(rate);
%>
<div class="container">
      <!-- form -->
      <form id="form" action="paymentpage.jsp" method="post">
      

<input  value="<%=from%>" type="hidden"  name="from">
<input  value="<%=to%>" type="hidden" name="to">
<input value="<%=tname%>"type="hidden"  name="tname">
<input value="<%=stime%>"type="hidden"  name="stime">
<input value="<%=etime%>"type="hidden"  name="etime">
<input value="<%=date%>"type="hidden"  name="date">
<input value="<%=adult%>"type="hidden"  name="adult">
<input value="<%=child%>"type="hidden"  name="child">
<input value="<%=seattype%>"type="hidden"  name="seattype">
<input value="<%=coach%>"type="hidden"  name="coach"> 


 <div class="container">
      <!-- form -->
     
      
        <!-- form heading -->
        <h3>PASSENGER DETAILS</h3>
        <!-- form inputs -->
        <fieldset>
          <label for="name">Name:</label>
          <input type="text" id="name" required name="Name">
        </fieldset>
        <fieldset>
            <label for="phone">Age:</label>
            <input type="number" required name="age">
        </fieldset>
        <fieldset>
            <label for="phone">Contact:</label>
            <input type="number" name="contact" id="password" required>
        </fieldset>
        <fieldset>
            <label for="phone">Adhar No:</label>
            <input type="number" name="ano" id="confirm_password" required>
        </fieldset>
        <fieldset>
            <label for="phone">Total Amount:</label>
            <input type="number" name="amount" value="<%=price %>" id="confirm_password">
        </fieldset>
        
        <fieldset>
          <button name="submit" value="" type="submit" id="submit">Pay</button>
        </fieldset>
        
          </form>
  </div>      
     


</body>
</html>