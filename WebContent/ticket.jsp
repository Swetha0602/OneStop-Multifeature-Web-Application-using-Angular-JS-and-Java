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
</head>
<body>
<html>
<head>
	<title>Ticket Thing</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<meta charset="UTF-8">
	<style>
	body{
	
	background-image: url("images/junction.jpg");
	background-position:center;
	}
	
	/* Font Loading */
@font-face {
	font-family: 'Monaco';
	/* src: url(''); */
}

#main {
	max-width: 960px;
}

span {
	display: inline-block;
}

/* Sections of Ticket */

.ticket-main {
	width: 580px;
	height: 368px;
	font-family: Monaco;
}

.ticket-top {
	border-top-left-radius: 19px;
	border-top-right-radius: 19px;
	background-color: rgb(255,94,3);
	height: 62px;
}

.ticket-middle {
	position: relative;
	background-color: rgb(255,255,244);
/* 	background-image: url('./images/ticket-bg.png');  */
	height: 238px;
}

.ticket-bottom {
	border-bottom-left-radius: 19px;
	border-bottom-right-radius: 19px;
	background-color: rgb(255,94,3);
	height: 68px;
}

/* Top Strip Positioning */

/* stuff only goes here on advance tickets ("VALID ONLY WITH RESERVATION[S]") or on new style tickets ("Off-Peak Day Return") */

/* Middle Area Positioning - 4 rows */

.middle-row {
	width: 93%;
	/*width: 539px;*/
	margin-left: 20.5px;
	height: ;
}

.ticket-label {
	font-size: 10px;
	text-transform: none;
}

.ticket-detail {
	font-size: 16px;
	text-transform: uppercase;
}

.ticket-detail-large {
	font-size: 18px;
	font-weight: 700;
	text-transform: uppercase;
}

.ticket-detail-small {
	font-size: 10px;
	font-weight: 700;
	text-transform: uppercase;
}

.middle-1 {
	display: inline-block;
	padding-top: 6px; /* Initial padding from top */
}

.middle-1-1 {
	display: inline-block;
	padding-bottom: 12px;
}

.middle-class {
	width: 88px;
}

.middle-type {
	width: 213px;
}

.middle-adult {
	width: 76px;
}

.middle-child {
	width: 91px;
}

.middle-rtn {

}

.middle-2 {
	display: inline-block;
}

.middle-2-2 {
	display: inline-block;
	padding-bottom: 22px; /* More padding between the two sets of rows */
}

.middle-railcard-spacer {
	width: 150px;
}

.middle-startdate {
	width: 150px;
}

.middle-number {
	width: 114px;
}

.middle-longnumber {
	text-align: right;
	display: inline-block;
	/* don't actually need to set a width here - need to right align this */
}

.middle-3 {
	display: inline-block;
}

.middle-3-3 {
	display: inline-block;
	padding-bottom: 12px;
}

.middle-from {
	width: 226px;
}

.middle-valid {
	width: 234px;
}

.middle-price {
	/* don't actually need to set a width here - need to right align this */
}

.middle-4 {
	display: inline-block;
}

.middle-4-4 {
	display: inline-block;
	padding-bottom: 12px;
}

.middle-to {
	width: 226px;
}

.middle-route {
	width: 156px;
}

.middle-validity {
	/* don't actually need to set a width here */
}

/* Bottom Strip Positioning */

.ticket-printed {
	text-align: right;
	margin-right: 20.5px;
	margin-top: -16px; /* because margin-bottom doesn't work for some reason */
}

/* Logo Stuff */

.ticket-logo-container {
	padding-top: 12px;
}

.ticket-logo-2-container {
	padding-top: 6px;
}

.ticket-logo {
/* 	background-image: url('./images/ticket-logo-2-small-transparent.png'); */
	height: 55px;
	width: 55px;
	margin-left: 4.7%;
}
a{
 margin:100px 200px;
 margin-bottom: 100px;
}
button{
color:black;
margin-top:100px;
}
.button1{
background-color:green;
margin:-50px 400px;
}
	
	</style>
</head>
<body>
<%
String name=session.getAttribute("name").toString(); 
String from=session.getAttribute("from").toString();
String to=session.getAttribute("to").toString();
String date=session.getAttribute("date").toString();
String adult=session.getAttribute("adult").toString();
%>

	 <%
       Connection con;


       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `train`.`alldatadetails` WHERE FFrom='"+from+"' and TTo='"+to+"' and Name='"+name+"'  and date='"+date+"' and Adult='"+adult+"' ");

       ResultSet rs=ps.executeQuery();

       while(rs.next())
       {
      
    	
    	  
       %>
<form action="ticketcancel" method="post">
<input type="hidden" name="from" value="<%=from%>">
<input type="hidden" name="to" value="<%=to%>">
	<div id="main">
		<div class="ticket-main">
			<div class="ticket-top">
			</div>
<input type="hidden" name="name" value="<%= name%>">
<input type="hidden" name="date" value="<%= date%>">
			<div class="ticket-middle">

				<div class="middle-row middle-1">
					<span class="ticket-label middle-class">class</span>
					<span class="ticket-label middle-type">Ticket Type</span>
					<span class="ticket-label middle-adult">Adult</span>
					<span class="ticket-label middle-child">Child</span>
				</div>
					<div class="middle-row middle-1-1">
					<span class="ticket-detail-large middle-class"><%=rs.getString(10)%></span>
					<span class="ticket-detail middle-type">Anytime Day R</span>
					<span class="ticket-detail middle-adult"><%= rs.getString(8)%></span>
					<span class="ticket-detail middle-child"><%= rs.getString(21)%></span>
					<span class="ticket-detail-large middle-rtn">RTN</span>
				</div>
				<div class="middle-row middle-2">
					<span class="middle-railcard-spacer"></span>
					<span class="ticket-label middle-startdate">Start Date</span>
					<span class="ticket-label middle-number">Train Name</span>
				</div>
				<div class="middle-row middle-2-2">
					<span class="ticket-detail-large middle-railcard-spacer">16-25</span>
					<span class="ticket-detail middle-startdate"><%= rs.getString(7)%></span>
					<span class="ticket-detail middle-number"><%= rs.getString(4)%></span>
					
				</div>
				<div class="middle-row middle-3">
					<span class="ticket-label middle-from">From</span>
					<span class="ticket-label middle-valid">Valid Until</span>
					<span class="ticket-label middle-price">Price</span>
				</div>
				<div class="middle-row middle-3-3">
					<span class="ticket-detail middle-from" name="from"><%= rs.getString(2)%></span>
					<span class="ticket-detail middle-valid"><%= rs.getString(7)%></span>
					<span class="ticket-detail middle-price"><%= rs.getString(20)%></span>
				</div>
				<div class="middle-row middle-4">
					<span class="ticket-label middle-to">To</span>
					<span class="ticket-label middle-route">Route</span>
					<span class="ticket-label middle-validity">Validity</span>
				</div>
				<div class="middle-row middle-4-4">
					<span class="ticket-detail middle-to" name="to"><%= rs.getString(3)%></span>
					<span class="ticket-detail-small middle-route">Any Permitted</span>
					<span class="ticket-detail-small middle-validity">On Date Shown</span>
				</div>
			</div>

			<div class="ticket-bottom">
				<div class="ticket-logo-2-container">
					<div class="ticket-logo"></div>
				</div>
				<div class="ticket-printed">
					<span class="ticket-label"></span>
				</div>
		
			</div>
		</div>
		<h4>If you want to cancel ticket? click cancel button</h4>
	<button class="button">cancel</button>
	</div>

	</form>
	<a href="userpage.jsp"><button class="button button1">back</button></a>
<%} %>

</body>
</html>

</html>