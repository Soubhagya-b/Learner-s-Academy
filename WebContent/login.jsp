<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	if (name == null || name.equals("") || pwd == null || pwd.equals("")) {
		response.sendRedirect("index.html");
	}
	else if(name.equals("academy")  || pwd.equals("student") ){
		response.sendRedirect("dashboard.jsp");
	}else{
		
		response.sendRedirect("index.html");
	}
		
%>