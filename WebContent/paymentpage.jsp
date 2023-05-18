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
<title>pamentpage.jsp</title>
<style>

@import url('https://fonts.googleapis.com/css2?family=Oxygen:wght@400;700&display=swap');

@import url('https://fonts.googleapis.com/css2?family=Sen&display=swap');

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Oxygen', sans-serif;


}


:root{

    /* Font Size */
    
    --heading: 2.5rem;
    --s_head: 2rem;
    --text: 1.5rem;
    --s_text: 1rem;

}


.container{
    min-height: 100vh;
    background-color: #093e5f;
    display: flex;
    justify-content: center;
    align-items: center;
}


.center{
    background: #ffffff;
    border-radius: 3em 0 3em 0;
    margin: 2em;
}

.payment-box{
    max-width: 500px;
    padding: .5em .8em 1em .8em;
    
}

.pay-h{
    font-size: var(--heading);
    text-align: center;
    margin-bottom: .6em;
}



form label{
    display: block;
    font-size: var(--text);
    margin-bottom: .4em;
    
}

form input{
    font-family: 'Sen', sans-serif;
    font-weight: 600;
    font-size: var(--s_text);
    padding: 0.4em .3em;
    margin-left: .6em;
    outline: none;
    letter-spacing: .3em;
    margin-bottom: .7em;
}

input::placeholder{
    font-weight: 100;

    color: rgb(179, 179, 179);
}


.cc-number{
    background: url(https://bit.ly/3QaanyT)  no-repeat;
    width: 90%;
   
}

.expiry-month{
    background: url(https://bit.ly/3zK1dn6) no-repeat;
    width: 20%;
   
}

.expiry-year{
    background: url(https://bit.ly/3oIcwG8) no-repeat;
    width: 30%;
   
}

.cvv{
    background: url(https://bit.ly/3PJ0qse) no-repeat;
    width: 25%;
  
}

.card-holder{
    background: url(https://bit.ly/3oJUPG8) no-repeat;
    width: 90%;
    
}

.icon{
    background-position: .4em .2em;
    background-size: 25px;
    padding-left: 3em;
  
    border: 1px solid black;
    border-radius: 5px;
}

.pay-now{
    display: block;
    margin: .6em auto;
    width: 60%;
    padding: 0.5em;
    border: 1px solid black;
    border-radius: 5px;
    background-color: white;
}

.pay_text{
    font-size: var(--s_text);
    vertical-align: middle;
    
}

.pay_icon{
    width: 20px;
    margin-right: 1em;
    vertical-align: middle;
}

.pay_icon:hover, .pay-icon:focus{
    filter: invert(100%);
}

.pay-now:hover, .pay-now:focus{
    cursor: pointer;
    background-color: #093e5f;
    color: rgb(255, 255, 255);
    
}


/* For  smaller mobile device  */

@media (min-width:100px) and (max-width:250px){
    :root{

        /* Font Size */
        
        --heading: 1.8rem;
        --s_head: 1.5rem;
        --text: 1rem;
        --s_text: 0.7rem;
    
    }

    .center{
        
        margin: 1em;
        
    }

    .payment-box{
        max-width: 230px;
    }

    form input{
        letter-spacing: 0.1em;
    }

    .expiry-month{
        width: 30%;
    }

    .expiry-year{
        width: 40%;
    }
    
    .cvv{
        width: 40%;
    }


    .icon{
        background-position: .4em;
        background-size: 10px;
        padding-left: 2em;
    }

    .pay_icon{
        width: 10px;
    }
    




}


/* For mobile device  */
@media (min-width:251px) and (max-width:450px){
    :root{

        /* Font Size */
        
        --heading: 2.4rem;
        --s_head: 2rem;
        --text: 1.2rem;
        --s_text: 1rem;
    
    }


    .payment-box{
        max-width: 350px;
    }
    

    form input{
        letter-spacing: .3em;
    }

    .icon{
        background-position: .4em;
        background-size: 15px;
        padding-left: 2em;
    }

    .expiry-month{
        width: 28%;
    }

    .expiry-year{
        width: 40%;
    }
    .cvv{
        width: 40%;
    }
}




/* For 4k & Full HD+  */

@media (min-width:1921px){
    :root{

        /* Font Size */
        
        --heading: 6rem;
        --s_head: 3rem;
        --text: 2.5rem;
        --s_text: 2.2rem;
    }

    .payment-box{
        max-width: 1500px;
    }

    .icon{
        
        background-size: 50px;
        
    }

    .pay_icon{
        width: 50px;
    }

}





  





</style>
</head>
<body>
<% 
String from=request.getParameter("from");
String to=request.getParameter("to");
String tname=request.getParameter("tname");
String stime=request.getParameter("stime");
String etime=request.getParameter("etime");
String date=request.getParameter("date");
String adult=request.getParameter("adult");
String child=request.getParameter("child");
String seattype=request.getParameter("seattype");
String coach=request.getParameter("coach");
String Name=request.getParameter("Name");
String age=request.getParameter("age");
String contact=request.getParameter("contact");
String ano=request.getParameter("ano");
String Amount=request.getParameter("amount");
%>



<div class="container">
	<div class="center">
		<div class="payment-box">
			<h1 class="pay-h">Card Details</h1>

			<form class="form" action="alldataservlet" method="post">
			
			
			
<input  value="<%=from%>" type="hidden"  name="from">
<input  value="<%=to%>" type="hidden"  name="to">
<input value="<%=tname%>"type="hidden"  name="tname">
<input value="<%=stime%>"type="hidden"  name="stime">
<input value="<%=etime%>"type="hidden"  name="etime">
<input value="<%=date%>"type="hidden"  name="date">
<input value="<%=adult%>"type="hidden"  name="adult">
<input value="<%=child%>"type="hidden"  name="child">
<input value="<%=seattype%>"type="hidden"  name="seattype">
<input value="<%=coach%>"type="hidden"  name="coach"> 
<input value="<%=Name%>"type="hidden"  name="Name">
<input value="<%=age%>"type="hidden"  name="age">
<input value="<%=contact%>"type="hidden"  name="contact">
<input value="<%=ano%>"type="hidden"  name="ano">
<input value="<%=Amount%>"type="hidden"  name="amount">
				<label for="Card Number">Card Number</label>

				<input class="cc-number icon" maxlength="16" name="cardnumber" pattern="\d*" required placeholder="XXXX XXXX XXXX" type="tel">

				<label for="Expiry Date">Expiry Date</label>
				<input class="expiry-month icon" type="tel" maxlength="2" name="expirymonth" pattern="\d*" required placeholder="01">
				<input class="expiry-year icon" type="tel" maxlength="4" name="expiryyear" pattern="\d*" required placeholder="0000">

				<label for="CVV">CVV</label>
				<input class="cvv icon" type="tel" maxlength="3" name="cvv" pattern="\d*" required placeholder="XXX">

				<input class="card-holder icon" type="text" placeholder="Cardholder Name" name="ph">

				<button class="pay-now" type="submit">
					<img src="https://bit.ly/3Q8KZcM" alt="" class="pay_icon">
					<span class="pay_text">Pay Now</span>
				</button>

			</form>
		</div>
	</div>
</div>
</body>
</html>