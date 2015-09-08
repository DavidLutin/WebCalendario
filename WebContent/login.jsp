<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Introduce tu usuario</h1>
<form method="POST" action="acciones/hazlogin.jsp">
	<input type="text" name="usuario"><br>
	<input type="text" name="password"><br>
	<input type="submit">
</form>
<h1>Nuevo usuario</h1>
<form method="POST" action="acciones/nuevologin.jsp">
	<input type="text" name="usuario" placeholder="usuario"><br>
	<input type="text" name="password" placeholder="password"><br>
	<input type="text" name="nombre" placeholder="nombre"><br>
	<input type="text" name="apellidos" placeholder="apellidos"><br>
	<input type="text" name="email" placeholder="email"><br>
	<input type="submit">
</form>
</body>
</html>