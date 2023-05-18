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
<title>seatbooking.jsp</title>
<style>
body{
 background:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),url("images/denis.jpg");
  background-repeat: no-repeat;
  background-size: 100% 200%;
  
}
div{
color:white;
}
</style>
</head>
<body><center>
<%String frm= request.getParameter("frm");
String to= request.getParameter("to");
String trainname= request.getParameter("trainname");
String id=request.getParameter("nameid");
System.out.println(id);
String startname="";
String endtime= request.getParameter("endtime");




Connection con;


con=dbcon.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM train.` trainsnames` WHERE id='"+id+"' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	trainname=rs.getString(4);
	startname=rs.getString(5);
	endtime=rs.getString(6);
}
%>
<div>

<form action="adultdetails.jsp" method="post">
<div>
<label>From:</label>
<input type="text" name="frm" value="<%=frm%>"placeholder="" required>
</div>
<br>

<div>
<label>To:</label>
<input type="text" name="to" value="<%=to%>"placeholder="" required>
</div>
<br>

<div>
<label>Train Name:</label>
<input type="text" name="tname" value="<%=trainname%>" placeholder="" required>
</div>
<br>

<div>
<label>Start Time:</label>
<input type="text" name="stime" value="<%=startname%>"placeholder="" required>
</div>
<br>

<div>
<label>End Time:</label>
<input type="text" name="etime" value="<%=endtime%>"placeholder="" required>
</div>
<br>
<div>
<label>journey date</label>
<input type="date" name="date" placeholder="" required>
</div>
<br>
<div>
<label>Adult</label>
<select name="adult">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>

<label>Child</label>
<select name="child">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>


</select>
</div>
<div>
<br>

<label>Coach:</label>
<input type="radio" value="Ac" name="coach" placeholder="" required>
<label>AC</label>
<input type="radio" value="NonAc" name="coach" placeholder="" required>
<label>NonAc</label>
</div>
<br>
<div>
<label>SeatType</label>
<select name="seattype">
<option>1A</option>
<option>2A</option>
<option>SL</option>
<option>3A</option>
<option>2S</option>
<option>FC</option>
</select>
</div>
<br>
<div>
<input type="submit" name="" placeholder="Submit">

</div>

</form>
</div></center>
</body>
</html>