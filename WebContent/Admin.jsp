  
     <%@page import=" dbcon.dbcon"%>
      <%@page import="servlet.*"%>
      <%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>



<body>
<table class="table table-striped">
 <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Contact</th>
      <th scope="col">Name</th>
    </tr>
    
  </thead>
  <%
      String email= request.getParameter("email");
       Connection con;
       String pass;
       String name;
       con=dbcon.create();
      /*  PreparedStatement pn=con.prepareStatement("SELECT * FROM `train`.`admin` where email='"+email+"' ");
       
       */ PreparedStatement ps=con.prepareStatement("SELECT * FROM `train`.`userlist` ");
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	try{
    	  name=forenc.dec(rs.getString(3));
    	  pass= forenc.dec(rs.getString(5));
    	
       %>
	
  <tbody>
    <tr>
      
      
      
      <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(2)%></td>
      

   </tr>
    </tbody>
    
     <%}
    	catch(Exception e){
    		System.out.println(e);
    	}}%>
	</table>
</body>
</html>