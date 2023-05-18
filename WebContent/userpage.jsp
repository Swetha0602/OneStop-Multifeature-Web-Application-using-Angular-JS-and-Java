<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>userpage.jsp</title>
<style>
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,400i,700");
*
{
  padding:0;
  margin:0;
  box-sizing:border-box;
}
.curved-header
{
  width:100%;
  height:80vh;
  display:flex;
  justify-content:space-between;
  align-items:baseline;
  font-family: Montserrat, sans-serif;
  position:relative;
}
.curved-header::before
{
  content:"";
  position:absolute;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url("images/train.jpg");
  background-position: center;
  background-size: cover;
  background-attachment: fixed;
  border-radius: 0 0 50% 50%/ 0 0 100% 100%;
  transform:scale(1.5);
  z-index:-1;
  background-attachment: fixed;
}
.curved-header .logo
{
  margin:50px;
}
.curved-header .logo a 
{
  text-decoration:none;
  color:#fff;
  font-size:30px;
}
.curved-header .nav-links
{
  margin:50px;
  list-style-type:none;
  display:flex;
  justify-content:flex-end;
  width:40%;
}
.curved-header .nav-links li 
{
  margin: 0 15px;
}
.curved-header .nav-links li a
{
  text-decoration:none;
  color:#fff;
  font-size:20px;
  position:relative;
}
.nav-links li a:after
{
  content:"";
  position:absolute;
  bottom:-5px;
  left:0;
  right:0;
  width:100%;
  height:2px;
  background-color:#fff;
  transform: scaleX(0);
  transition: transform 0.3s;
}
.nav-links li a:hover:after
{
  transform:scaleX(1);
}
.toggle-button 
{
  position:absolute;
  top:0.55rem;
  right:2rem;
  display:none;
  flex-direction:column;
  justify-content:space-between;
  width:20px;
  height:16px;
  text-decoration:none;
}
.toggle-button i 
{
  color:white;
  font-size:35px;
}
/*
@media (max-width:850px)
{
  
  .toggle-button
  {
    display:block;
  }
  .nav-links
  {
    /*display:none;
  }
  
}*/
center{

color:#ffffff;

}
</style>
</head>
<body>
<%String name=session.getAttribute("name").toString(); %>
<center>
<h1>WECOME<br><%=name %></h1>
</center>
<header class="curved-header">
  <div class="logo">
    
  </div>
    <a href="#" class="toggle-button">
    <i class="ri-layout-grid-fill"></i>
    
  </a>
  <ul class="nav-links">
    <li><a href="ticketbook.jsp">Train Ticket booking</a></li>
   <li><a href="hotelsearch.jsp">Restaurant</a></li>
    <li><a href="foods.jsp">Food Order</a></li>
    <li><a href="pharmacylocation.jsp">Pharmacy</a></li>
  </ul>
  
</header>
</body>
</html>