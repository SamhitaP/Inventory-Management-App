<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page import = "java.sql.*"%>
 <%@ page import = "java.io.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
 
  <form method="post" action="add.jsp">
 
  <fieldset><br>
  <div align="center">
  

  Book Title:&nbsp<input class="btitle" type="text" name="btitle"><br><br>
       Price:&nbsp<input class="price" type="text" name="price"><br><br>
    Quantity:&nbsp<input class="quantity" type="text" name="quantity"><br><br>
  <input type="submit" value="Submit">
  </fieldset>
  </form>
  </div>

</body>
</html>