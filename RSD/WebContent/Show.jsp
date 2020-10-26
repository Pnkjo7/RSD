<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "userdb";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<a href="awelcome.jsp">Registration Page</a>
	

</tr>
<tr bgcolor="#A52A2A">
<td><b>name</b></td>
<td><b>Gender</b></td>
<td><b>email</b></td>
<td><b>cgpa</b></td>
<td><b>tenth</b></td>
<td><b>twelveth</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM userdb.register";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("Gender") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("cgpa") %></td>
<td><%=resultSet.getString("tenth") %></td>
<td><%=resultSet.getString("twelveth") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>