<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<%@ page errorPage="Msg.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Time</title>
</head>
<body>

	<jsp:useBean id="rabbit" class="com.caps.dto.Rabbit" scope="application"/>
	<jsp:setProperty name="rabbit" property="name" value="Pikachu"/>
	<jsp:setProperty name="rabbit" property="color" value="Yellow"/>
	<jsp:setProperty name="rabbit" property="gender" value="Male"/>
	<jsp:setProperty name="rabbit" property="age" value="3"/>
	

	<%
		int i = 10/0;
	%>

	<%!
		String quot = "Hunt your Dreams";
	%>
	
	<%!
		public void show(){
		System.out.println(quot);
	}
	%>

	<%
		out.println("I am Printing Something in the Browser");
	%>
	
	<%= "I am Printing something with ease" %>


	<h1>Current time is: <%= new Date() %></h1>
	
	<%--This is a JSP Comment --%>
	<!-- This is a HTML Comment -->
	
	<%
		StringBuffer url = request.getRequestURL();
		response.setContentType("text/html");
		out.println("URL: "+url);
		application.setAttribute("name", "Pikachu");
		System.out.println("Context object is set");
		pageContext.getRequest();
		out.println("<h1> "+quot+"</h1>");
		show();
	%>
	
</body>
</html>




