<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

body{
background: #232526;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #414345, #232526);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #414345, #232526); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


}

.mobile{
  height:480px;
  width:270px;
  
  margin: 20px auto;
  position:relative;
}

.top-bar{
  height:15px;
  width:100%;
  position:absolute;
  top:0;
  background:#222;
}

img{
  position:relative;
  height:35%;
  width:35%;
  
  margin:0px 32.5%;
    
}
.screen{
  width:100%;
  height:465px;
  background:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.5)), url("https://images.unsplash.com/photo-1455218873509-8097305ee378?auto=format&fit=crop&w=334&q=80");
  background-size:cover;
  
  position:absolute;
  bottom:0;
}

nav{
  height:40px;
  width:100%;
  float:left;
  
}

.title{
  padding:10px;
  font-family:'Lato';
  float:left; 
  color:white;
  letter-spacing:1px;
  
}

.icon{
  height:40px;
    width:40px;
  float:right;
  
  margin:0 10px;
  box-sizing:border-box;
  padding:7px 8px;
  
}

.login{
  width:100%;
  height:auto;
  padding:10px 0;
  box-sizing:border-box;
  text-transform:uppercase;
  font-family:'Lato';
  color:white;
  font-size:40px;
  font-weight:300;
  text-align:center;
  margin-top:10px;
}

.underline{
  width:30%;
}

form{
  text-align:center;
  
  
}

.field{
  margin-bottom:10px;
  height:20px;
  width:70%;
  background:none;
  border:none;
  border-bottom:1px solid #3498db;
  color:white;
  outline:none;
  padding:0 5px;
  transition:all 200ms ease-in-out;
  
}

.field:focus{
  padding:3px 3px;
  background:rgba(255,255,255,0.2);
  border-bottom:3px solid #3498db;
  transition:all 200ms ease-in-out;
}

.field::placeholder{
color:#AAA;
}

.password{
  border-bottom:1px solid #e74c3c;
}

.password:focus{
  
  border-bottom:3px solid #e74c3c;

}

input[type='submit']
{
  background:none;
  border:none;
  padding:10px;
  color:#e74c3c;
  margin-top:30px;
  text-transform:uppercase;
  cursor:pointer;
  letter-spacing:1px;
  font-family:'Lato';
  border:2px solid #e74c3c;
  border-radius:10px;
  outline:none;
  transition:all 300ms ease-in-out;
}

input[type='submit']:hover{
  background:#e74c3c;
  color:white;
  transition:all 300ms ease-in-out;
}



</style>
</head>
<body>
<div class="mobile">
  <div class="top-bar">
  </div>
  <div class="screen">
    <nav>
      
      <div class="title">Admin</div>
      <div class="icon"><svg style="width:24px;height:24px" viewBox="0 0 24 24">
    
</svg></div>
    </nav>
    
    <div class="login">Login<hr class="underline"></div>
    <form action="Adminloginservlet" method="post">
      <input type="email" class="field username"  name="email" placeholder="Username" required><br><br><br>
      <input type="password" class="field password" name="pass" placeholder="Password" required><br>
      <input type="submit">
    </form>
  </div>
</div>
</body>
</html>