<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>foodorder.jsp</title>
<style>
@import url("https://fonts.googleapis.com/css?family=Poppins:200i,400&display=swap");
*,
*::before,
*::after {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  outline: none;
}
:root {
  --white-color: #fff;
  --greenish-color: #006d77;
}
::placeholder {
  font-size: 15px;
  font-family: inherit;
  color: var(--greenish-color);
}
:focus {
  border-color: #80bdff;
  box-shadow: 0 0 0 0.1rem rgba(0, 123, 255, 0.25);
  transition: 0.2s linear;
}
label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
  text-transform: capitalize;
}
.optional {
  font-weight: lighter;
  font-size: 15px;
}
.form-option:not(:last-child) {
  margin-bottom: 20px;
}
body {
  font-family: "Poppins", sans-serif;
  line-height: 1.5;
  font-size: 16px;
  font-weight: 400;
}
body::after {
  position: fixed;
  content: "";
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: hsl(232, 65%, 81%);
  background-image: linear-gradient(
      135deg,
      rgba(0, 0, 0, 0.7),
      rgba(0, 0, 0, 0.7)
    ),
    url("https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: top;
  background-attachment: fixed;
  z-index: -1;
}
.container {
  width: 70%;
  margin: 75px auto;
}

.container header {
  text-align: center;
  padding: 10px;
  color: var(--white-color);
  margin-bottom: 25px;
}
.container header h1 {
  margin-bottom: 10px;
}
.container form {
  padding: 30px;
  background: var(--white-color);
  border-radius: 6px;
}
.form-option p {
  text-transform: capitalize;
  font-weight: bold;
  font-size: 18px;
  margin-bottom: 15px;
}
input,
textarea,
select {
  width: 100%;
  outline: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 10px 12px;
  font-size: 18px;
  font-family: inherit;
  -webkit-accent-color: var(--greenish-color);
  -moz-accent-color: var(--greenish-color);
  accent-color: var(--greenish-color);
}
select option {
  text-transform: capitalize;
}
textarea {
  resize: vertical;
  height: 180px;
}
.form-radio-option {
  margin-bottom: 5px;
  display: flex;
  align-items: center;
}
.form-radio-option label,
.form-checkbox-option label {
  display: inline-block;
  font-size: 17px;
  font-weight: 500;
}
.form-radio-option input,
.form-checkbox-option input {
  display: inline-block;
  margin-right: 5px;
  width: 1.2rem;
  height: 1.2rem;
}
.submit {
  display: block;
  background: hsl(185, 100%, 32%);
  color: var(--white-color);
  text-transform: capitalize;
  cursor: pointer;
  font-weight: 400;
  letter-spacing: 1px;
  transition: background-color 0.2s linear;
}
.submit:hover {
  background: hsl(185, 100%, 28%);
}
@media (max-width: 991px) {
  .container {
    width: 88%;
  }
}
@media (max-width: 667px) {
  .container {
    width: 100%;
  }
  .container header h1 {
    font-size: 26px;
  }
  .container form {
    padding: 15px;
  }
}

}

</style>
</head>
<body>
<div class="container">
  <!-- Header -->
  <header>
    <h1 id="title">Your Best Food Ever</h1>
   
  </header>
  <!-- Form -->
  <form action="userfood" id="survey-form"  method="post">
    <!-- Username -->
    <div class="form-option">
      <label for="name" id="name-label">Food Name</label>
      <input type="text" id="name" name="fname" placeholder="Enter food name" required>
    </div>
    <div class="form-option">
      <label for="email" id="email-label">Quantity</label>
      <input type="number" id="email" name="quan" placeholder="Enter food quantity" required>
    </div>
     <div class="form-option">
      <label for="number" id="number-label">Train name<span class="optional"></span></label>
      <input type="search" id="number" name="tname" placeholder="Enter train name" min="10" max="100">
    </div>
   <div class="form-option">
      <label for="number" id="number-label">Train Coach<span class="optional"></span></label>
      <input type="search" id="number" name="cname" placeholder="Enter coach number" min="10" max="100">
    </div>
     <div class="form-option">
      <label for="number" id="number-label">Seat number<span class="optional"></span></label>
      <input type="search" id="number" name="sname" placeholder="Enter seat number" min="10" max="100">
    </div>
    <br>
    <div>
    <label>
   <input type="Submit" value="Submit" >
    </label>  
    </div>
    <!-- Submit -->
   
  </form>
</div>
</body>
</html>