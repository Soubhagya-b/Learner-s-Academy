<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner's Academy</title>
</head>
<body style="background-color:powderblue;">
<a href="standard.jsp"><button type="button">PREVIOUS PAGE</button></a>
<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String dburl = "jdbc:mysql://localhost:3306/academy?characterEncoding=latin1";
	String dbuser = "root";
	String dbpassword = "master";
	
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
%>
<h2 align="center">Welcome To Standard VI</h2>
<table border="1">
<tr>

</tr>
<tr bgcolor="#DEB887">
<td><b>Class Teacher</b></td>
</tr>
<tr bgcolor="white"><td>Mr.Sunny Chopra</td>

<table align="center" border="1">
<tr>

</tr>
<tr bgcolor="#DEB887">

<td><b>firstname</b></td>
<td><b>lastname</b></td>
<td><b>gender</b></td>


</tr>
<%
	try{ 
	conn = DriverManager.getConnection(dburl, dbuser, dbpassword);
	st=conn.createStatement();
	String sql ="SELECT * FROM student WHERE standard = 06";
	
	rs = st.executeQuery(sql);
	while(rs.next()){
%>
<tr bgcolor="white">

<td><%=rs.getString("firstname") %></td>
<td><%=rs.getString("lastname") %></td>
<td><%=rs.getString("gender") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>