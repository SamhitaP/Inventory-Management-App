<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String title=(String)session.getAttribute("title"); %>
<%Integer price=Integer.parseInt(session.getAttribute("price").toString()); %>
<%Integer quantity=Integer.parseInt(session.getAttribute("quantity").toString()); %>
<div align="center">
 
  <form>
  <a href="Editpage.jsp" text-align="right">EDIT</a>
  <fieldset>
  
  Book Title: <br><%= title %><br>
  Price: <br><%= price%><br>
  Quantity: <br><%= quantity%><br>
  </fieldset>
  </form>
</div>
</body>
</html>