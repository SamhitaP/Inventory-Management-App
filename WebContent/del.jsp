<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<%@page import="java.sql.*,java.util.*,java.lang.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 <%


Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String dbName = "inventory";
String driver = "com.mysql.jdbc.Driver";
String username = "root"; 
String userPassword = "root";

String d_title=(String)session.getAttribute("title"); 
try {
Class.forName(driver).newInstance();

while(true)
{
con = DriverManager.getConnection(url+dbName,username,userPassword);

Statement st = con.createStatement();
String strQuery = "delete from users where title=?"; 
// out.println(strQuery);

 st.executeQuery(strQuery);
String new_query="select * from admin";
PreparedStatement preparedStmt=con.prepareStatement(strQuery);

preparedStmt.setString(d_title,title);
String p=preparedStmt.executeUpdate();
preparedStmt.close();
%>



  <h3><%System.out.println(p);%></h3>
 

   <%

st.close();
con.close();
}
} catch (Exception ex) {
ex.printStackTrace();
}
%>

</body>
</html>       