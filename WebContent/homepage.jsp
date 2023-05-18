<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>homepage.jsp</title>
<style>
body {
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
    font-family: 'Roboto', sans-serif;
    font-family: 'Roboto Mono', monospace;
    font-size: 14px;
    line-height: 1.42857143;
    background: rgb(238,238,238);
    background: linear-gradient(90deg, rgba(238,238,238,1) 0%, rgba(172,158,168,1) 54%, rgba(162,177,180,1) 86%);
}

.nav {
    padding-left: 0;
    list-style: none;
    border-top: 2px solid;
    border-bottom: 2px solid;
    margin-bottom: 20px;
}
.navs2 {
    margin-top: 0;
    margin-bottom: 10px;
    padding-inline-start: 40px;

}
ul li {
    display: inline-block;
    padding: 0.6rem;
}

ul li a {
    text-decoration: none;
    color: black;
}
ul li a:hover {
    text-decoration: none;
    color: #ffffff;
    transition: 0.7s;
}
@media screen and (max-width: 625px) {
    .nav{
        display: flex;
        flex-direction: column;
        text-align: center;
    }

  }

</style>
</head>
<body>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Fonts Google-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
    <ul class="nav navs navs2">
        <li><a href="#">Home</a></li>
         <li><a href="Adminlogin.jsp">Admin</a></li>
        <li><a href="login.jsp">User</a></li>
    </ul>
</body>
</html>
</body>
</html>