 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ticketbook.jsp</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Merriweather&family=Open+Sans&display=swap');

*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  width: 100%;
  height: auto;
  margin: 0;
      background: linear-gradient(rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.2)), url("images/images.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      font-family: 'Open Sans', sans-serif;
      font-size: 1.2rem;
      line-height: 1.618;
      color: rgb(255, 255, 255);
    }

h1 {
  font-size: 2rem;
  font-family: 'Merriweather', serif;
  text-transform: uppercase;
}

h1, p {
  margin: 1em auto;
  text-align: center;
}

form {
  width: 60vw;
  max-width: 500px;
  min-width: 300px;
  margin: 0 auto;
  padding-bottom: 2em;
}

fieldset {
  border: none;
  padding: 1.2rem 0;
}
label {
  font-size: 1rem;
  font-weight: bold;
  display: block;
  margin: 0.5rem 0;
}

.inline {
  width: unset;
  margin: 0 0.5em 0 0;
  vertical-align: middle;
}

input,
textarea,
select {
  margin: 7px 0 0 15px;
  width: 100%;
  min-height: 2em;
}

select, .room {
      width: 7rem;
      padding: 5px;
      border: none;
      background-color: rgba(255, 255, 255);
      box-shadow: rgba(0,0,0,.1) 0 0 8px;     
    }
select {           
      position: relative;
      border-radius: 5px;
      display: inline-block;
    }

input, textarea {
  border: none;
  border-radius: 5px;
  color: rgba(10, 10, 35, 0.7);
}

input[type="submit"] {
  display: block;
  width: 60%;
  margin: 1em auto;
  height: 2em;
  font-size: 1.1rem;
  background-color: #3b3b4f;
  border-color: white;
  min-width: 300px;
  color: inherit;
}


button{
backgound-color:#e7e7e7;
color:black;

}
a{
font-size:15px;
margin:0px;
}



</style>
</head>
<body>



  <h1>Search Your Trains</h1>
  <p>Please fill out this form with the required information</p>
  <form action="ticketbookdetails" method="post">
    
    <fieldset>
      
     
      
      <label>From
      <input type="text" name="from" required />
      </label>
      <label>To
      <input type="text" name="to" required />
      </label>
       </fieldset>
     
    <button>Search Train</button>
  </form>
</body>
