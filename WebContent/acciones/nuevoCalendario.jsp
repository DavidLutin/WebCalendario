<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="0; url=../index.jsp">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			String conexion = "jdbc:mysql://localhost:3306/webcalendario";
			Connection connection = null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(conexion, "web","calendario");
					
			Statement stmt = connection.createStatement();
			stmt.executeUpdate("INSERT INTO calendarios VALUES (NULL,"+session.getAttribute("idusuario")+",'"+request.getParameter("nombrecalendario")+"','255,200,200');");
			
			stmt.close();
			connection.close();
										
		}catch(Exception ex){
			out.println("Ha ocurrido el siguiente error "+ex.getMessage().toString());
										
		}
	%>
	
</body>
</html>