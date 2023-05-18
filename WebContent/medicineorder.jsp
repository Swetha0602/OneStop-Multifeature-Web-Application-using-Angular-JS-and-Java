<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{font-family: arial; font-size: 12px;}
    body, h1, h2, h3 {margin: 0px; padding: 0px;}
    fieldset {display: block; width: 100%;}
    fieldset label {font-weight: 600; display: block; margin-bottom:5px;}
    fieldset input { width: 100%; padding: 8px; border-radius: 2px; border: 1px solid #ccc; box-sizing: border-box; }
    .row { border: 1px solid #ccc; padding: 10px; margin: 0 0 10px 0; box-sizing: border-box; position: relative; }
    .row-inner-wrap { overflow: hidden; }
    .row-inner-wrap span{display: block; margin: 5px 0;}
    .form-wrap {border-left: 1px solid #ccc; background-color: #f4f4f4; padding: 10px; width: 200px; height: 100vh; position: fixed; right: 0px; top; 0px; box-sizing: border-box;}
    fieldset {border: 0px; margin: 15px 0; padding: 0px;}
    #demo { width:calc(100% - 200px); box-sizing: border-box; padding: 10px; position: absolute; top: 0; left: 0; height: 100vh; overflow: auto; }
    button { cursor: pointer; color: #fff; background-color: #4CAF50; padding: 8px 15px; border: 0px; }
    button:hover{ background-color: #444; }
    
    /**/
    .med-image { width: 78px; float: right; }
    .med-description { display: block; margin-right: 90px; }
    .actions {position: absolute;right: -1px;top: -1px;height: 86px; text-align: center;}    
    .actions span { display: block;left: 43px;font-size: 18px;color: #777;width: 40px;border: 1px solid #ccc;padding: 5px;margin: 0; box-sizing: border-box; background-color: #f4f4f4; cursor: pointer; }
    .actions span.edit {border-bottom: 0px;}
    .actions span i {margin-top: 7px;}
body{
background-image: url("images/medicine3.jpg");

background-position:center;

}


</style>


</head>
<body>
<center>
<div id="demo"></div>

<div class="form-wrap">
  <form id="form" action="usermedicineservlet" method="post">
    <h2>Add New Medicine</h2>
    <fieldset>
        <label>Medicine Name</label>
        <input type="text" id="medname" placeholder="Medicine name" name="mname" required/>
    </fieldset>
    
    <fieldset>
        <label>Dosage</label>
        <input type="text" id="dosage" placeholder="Dosage"  name="dname" required />
    </fieldset>
    <fieldset>
        <label>Quantity</label>
        <input type="number" id="qty" placeholder="Quantity" name="quantity" required/>
    </fieldset>
    
    
    <fieldset>
        <label>Presecribed By</label>
        <input type="text" id="pb" placeholder="Presecribed By" name="presecribed" required />
    </fieldset>
    
 
  <button>Submit</button>
   </form>
</div>
</center>


</body>
</html>