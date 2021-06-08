<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner's Academy</title>
</head>
<body style="background-color:powderblue;">
<a href="dashboard.jsp"><button type="button">HOME</button></a><br>
<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String gender = request.getParameter("gender");
	String standard = request.getParameter("standard");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/academy?characterEncoding=latin1","root","master");
		PreparedStatement ps = conn.prepareStatement("insert into student(firstname,lastname,gender,standard) values(?,?,?,?)");
		
		ps.setString(1,firstname);
		ps.setString(2,lastname);
		ps.setString(3,gender);
		ps.setString(4,standard);
		int x = ps.executeUpdate();
		

		
		if(x > 0){
			out.println("Registration succeesfully");
		}else{
			out.println("Registration failed");
		}
		
	
		
	}catch(Exception e){
		out.println(e);
	}
	
%>

</body>
</html>
