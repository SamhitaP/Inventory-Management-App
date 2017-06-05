
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
<h1>List of Books</h1>
 <h2>Click on the link to view details</h2>
 <a href="addpage.jsp">Add Book</a><br><br>
 <%


Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String dbName = "inventory";
String driver = "com.mysql.jdbc.Driver";
String username = "root"; 
String userPassword = "root";


try {
Class.forName(driver).newInstance();

while(true)
{
/* con = DriverManager.getConnection(url+dbName,username,userPassword); */

/* Statement st = con.createStatement(); */
String strQuery = "select * from admin "; 
// out.println(strQuery);
PreparedStatement statement = DriverManager.getConnection(url+dbName,username,userPassword).prepareStatement(strQuery);

ResultSet rs = statement.executeQuery();
%>
 <form method="Details.jsp" action="post">
<table align="center" border = "1" width = "100%">
<%
/* int count=0; */
while (rs.next()&&rs!=null) {
	
%>
 <tr><td>
  
 <a href="check.jsp">CHECKOUT</a>&nbsp&nbsp<a href="Details.jsp?title=<%session.setAttribute("title",rs.getString("title"));%>&price=<%session.setAttribute("price",rs.getObject("price"));%>&quantity=<%session.setAttribute("quantity",rs.getObject("quantity"));%>"><%=rs.getString("title")%></a>&nbsp&nbsp<a href="del.jsp">DELETE</a><br>
 <%--  <%System.out.println(session.setAttribute("title",rs.getString("title")););
 /* session.setAttribute("price",rs.getObject("price"));
 session.setAttribute("quantity",rs.getObject("quantity")); */
 %> --%> 
<%-- <input type="hidden" name="title" value="rs.getString("title")">
<input type="hidden" name="price" value="<%=rs.getInt("price")%>">
<input type="hidden" name="quantity" value="<%=rs.getString("quantity")%>"> --%>
 </td>
 </tr>
 
<% 
  }
%>
   <%
rs.close();
statement.close();
con.close();
}
} catch (Exception ex) {
ex.printStackTrace();
}
%>
</table>
</form>
</div>

</body>
</html>