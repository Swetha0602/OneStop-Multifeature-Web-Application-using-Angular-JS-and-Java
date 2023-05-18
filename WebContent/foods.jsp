<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>foods.jsp</title>
<style>

 #header{
    background-color: black;
    color: white;
    font-size: 15px;
    padding-top: 1px;
    padding-bottom: 1px;
    padding-left: 50px;
    
    
}
ul{
  margin-bottom: 20px;
  padding-bottom: 22px;
  position: static;
}
#menu{
  margin-left: 1000px;
  margin-right: 40px;
  padding-bottom: 20px;
}
#main{
    
    
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 350px;
  padding-top: 150px;
  
}
#onestop{
    margin-top: 20px;
}
a:hover{
    background-color: black;
    height: 50px;
    padding-top: 2px;
    padding-right: 5px;
    padding-left: 5px;
    padding-bottom: 2px;
   
}
select{
padding:10px 40px;
}
button:hover{
padding:10px 30px;
background-color:green;
cursor:pointer;
}
button{
color:black;
padding:10px 30px;
}
body{
background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("images/food.jpg");
background-repeat: no-repeat;
background-size:1800px 800px;
}
.mydiv{
margin:100px 600px;
}



</style>
</head>
<body>
<form action="locationservlet" method="post">
<nav class="navbar navbar-inverse">


<div id="header">
    <span id="onestop"><h2 style="padding-top: 10px;padding-bottom: 10px; text-align: center;">One Stop Food Ordering System</h2> </span>
</div>
<div id="main" style="padding-top: 55px; background-image: url(../../assets/images/food.jpg);background-repeat:no-repeat ;background-size: cover;">
    <span id="third" style="color: antiquewhite;font-size: 50px;margin-left: 330px">Order Food Online</span><br><br>
     <span id="para" style="color: blanchedalmond;font-size: 20px;font-family: cursive;margin-left: 400px;">Best restaurants in TamilNadu delivering to your doorstep</span><br><br><br>
     <span id="loc" style="margin-left: 450px;">
         <select name="location">
             <option>Choose your location</option>
             <option>Ariyalur</option>
             <option>Chennai</option>
             <option>Dindigul</option>
             <option>Erode</option>
             <option>Karur</option>
             <option>Madurai</option>
             <option>Nagapattinam</option>
             <option>Perambalur</option>
             <option>Salem</option>
             <option>Tiruchirapalli</option>
             <option>Villupuram</option>
         </select>
     </span>&nbsp;
    
   <button>Find Restaurants</button>
</nav>
  </form>
</body>
</html>