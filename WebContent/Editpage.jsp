<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h1>  <%String title = session.getAttribute("title").toString(); %></h1>
  <form>
 
  <fieldset><br>
  <div align="center">
  
  Product_No:&nbsp<input class="pno" type="text" name="pno"><br><br>
  Book Title:&nbsp<input class="btitle" type="text" name="btitle"><br><br>
       Price:&nbsp<input class="price" type="text" name="price"><br><br>
    Quantity:&nbsp<input class="quantity" type="text" name="quantity"><br><br>
  
  </fieldset>
  </form>
  </div>
</div>
</body>