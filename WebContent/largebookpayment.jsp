<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 body{
    margin: 0;
    font-family: 'Baloo Tamma 2', cursive;
    height: 100vh;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #323232;
}

.container{
    display: flex;
    align-items: center;
    justify-content: center;
    background-image: linear-gradient(45deg, #fad714, #ffbe05);
    height: 550px;
    width: 350px;
}

.register-div{
    width: 300px;
    height: 100%;
    position: relative;
}
.title{
    position: absolute;
    top: 30px;
    width: 100%;
    box-sizing: border-box;
    padding-left: 15px;
    margin-left: -25px;
    border-left: 10px solid black;
}

.register-form{
    position: absolute;
    width: 100%;
    top: 170px;
}

.input-div{
    width: 100%;
    font-size: 18px;
}

input{
    position: relative;
    box-sizing: border-box;
    display: block;
    width: 100%;
    height: 30px;
    background: none;
    border: none;
    border-bottom: solid 1px black;
    outline: none;
    box-shadow: none;
}

input::selection{
    background-color: black;
    color: #fad714;
}

.bar::before{
    display: block;
    position: relative;
    top: -27px;
    content: '';
    width: 0;
    height: 2px;
    background-color: black;
    transition: 250ms;
}

input:focus ~ .bar::before{
    height: 2px;
    width: 100%;
}

input[type=submit]{
    cursor: pointer;
    height: 35px;
    margin-left: auto;
    margin-top: 15px;
    font-size: 20px;
    width: 50%;
    background-color: black;
    color: #fad714;
    transition: 200ms;
}
input[type=submit]{
font-size: xx-large;
}

input[type=button]:hover{
    transform: translateX(45px);
}

label{
    display: inline-block;
    position: relative;
    bottom: 27px;
    transition: 200ms;
    transform-origin: left;
    cursor: text;
}

input:focus + label{
    bottom: 50px;
    transform: scale(.8);
    font-weight: 400;
}

input:valid + label{
    bottom: 50px;
    transform: scale(.8);
}

.go-to-login{
    position: absolute;
    bottom: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    border-bottom: solid 7px black;
    transition: 150ms;
    padding-bottom: 3px;
}

.go-to-login:hover{
    border-bottom: solid 15px black
}

.go-to-login:hover a{
    font-weight: 600
}

.go-to-login h3{
    margin: 0;
    font-size: 14px;
    font-weight: 400;
}

a{
    text-decoration: none;
    color: black;
    transition: 100ms;
}




</style>
</head>
<body>
<body>
<%
String adult=session.getAttribute("adultt").toString();
String child=session.getAttribute("childd").toString();
String room=session.getAttribute("roomm").toString();
String indate=session.getAttribute("indate").toString();
String outdate=session.getAttribute("outdate").toString();

System.out.println("adult"+adult);
int adultt=Integer.valueOf(adult);
int childd=Integer.valueOf(child);
int roomm=Integer.valueOf(room);

int arate=300,crate=100,rrate=500;

int aprice=arate*adultt;
int cprice=crate*childd;
int rprice=rrate*roomm;
int total=aprice+cprice+rprice;

%>

<div class="container">
    <div class="register-div">
        <div class="title">
            <h1>Enter Details</h1>
        </div>
        <div class="register-form">
            <div class="input-div">
            <form action="largepayment.jsp" method="post">
            
            <input type="hidden" name="adult" value="<%=adult%>">
            <input type="hidden"  name="child" value="<%=child%>">
            <input type="hidden"  name="room" value="<%=room%>">
            <input type="hidden" name="indate" value="<%=indate%>">
            <input type="hidden" name="outdate" value="<%=outdate%>">
                    <input type="text" id="username" name="name" required autocomplete="off">
                    <label for="username">Name </label>
                    <div class="bar"></div>
               
                <div class="input-div">
                    <input type="text" id="username" required name="contact" autocomplete="off">
                    <label for="username">Contact </label>
                    <div class="bar"></div>

                </div>
                <div class="input-div">
                    <input type="email" id="email" required name="email" autocomplete="off">
                    <label for="email">email</label>
                    <div class="bar"></div>

                </div>
                <div class="input-div">
                    <input type="number" id="pass" required name="anumber" autocomplete="off">
                    <label for="pass">Adhar number</label>
                    <div class="bar"></div>

                </div>
               
                
                 <div class="input-div">
                 <h3><label for="fullname">Total Amount</label></h3>
                   <input type="text" id="" value="<%=total%>" name="amount" required autocomplete="on">
                    <div class="bar"></div>
                    </div>
                  <div class="input-div">
                    <input type="submit" value="make payment">
                </div>
                
            </form>
    </div>
</div>
</div>

       
</body>
</html>
</body>
</html>