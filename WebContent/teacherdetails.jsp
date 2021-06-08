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
<a href="dashboard.jsp"><button type="button">HOME</button></a>
<%
	
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
<h2 align="center">Facualties</h2>
<table align="center" border="1">
<tr>

</tr>
<tr bgcolor="#DEB887">

<td><b>teacher-id</b></td>
<td><b>teacher-name</b></td>
<td><b>designation</b></td>

</tr>
<%
	try{ 
	conn = DriverManager.getConnection(dburl, dbuser, dbpassword);
	st=conn.createStatement();
	String sql ="SELECT * FROM teacher";
	
	rs = st.executeQuery(sql);
	while(rs.next()){
%>
<tr bgcolor="white">

<td><%=rs.getString("teacher-id") %></td>
<td><%=rs.getString("teacher-name") %></td>
<td><%=rs.getString("designation") %></td>

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