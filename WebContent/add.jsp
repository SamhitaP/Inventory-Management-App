<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<%@page import="java.sql.*,java.util.*"%>
<%
String title=request.getParameter("btitle");
int price=Integer.parseInt(request.getParameter("price"));
int quantity=Integer.parseInt(request.getParameter("quantity"));

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into admin(title,price,quantity) values('"+title+"',"+price+","+quantity+")");
           int l=st.executeUpdate("insert into users(title,price,quantity) values('"+title+"',"+price+","+quantity+")");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>

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
con = DriverManager.getConnection(url+dbName,username,userPassword);

Statement st = con.createStatement();
String strQuery = "select * from admin "; 
// out.println(strQuery);

ResultSet rs = st.executeQuery(strQuery);
%>
 
<table align="center" border = "1" width = "100%">
<%
/* int count=0; */
while (rs.next()&&rs!=null) {
	
%>
 <tr><td>
 <a href="#">CHECKOUT</a>&nbsp&nbsp<a href="Details.jsp"><%=rs.getString("title")%></a>&nbsp&nbsp<a href="#">DELETE</a><br>
 </td>
 </tr>
 
<% 
/* System.out.println("MySQL Connect Example."+count++);  */
  }
%>
   <%
rs.close();
st.close();
con.close();
}
} catch (Exception ex) {
ex.printStackTrace();
}
%>
</table>

</div>

</body>
</html>       