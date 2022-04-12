<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alta Usuario</title>
</head>
<body>
	<h2>Alta Usuario</h2>
	<form action="/altaUsuario" method="post">
		<input type="text" id="username" name="username">
		<label for="username">Username</label>
		<br>
		<input type="text" id="nombre" name="nombre">
		<label for="nombre">Nombre</label>
		<br>
		<input type="text" id="apellido" name="apellido">
		<label for="apellido">Apellido</label>
		<br>
		<input type="text" id="direccion" name="direccion">
		<label for="direccion">Direccion Completa</label>
		<br>
		<input type="email" id="email" name="email">
		<label for="email">Email</label>
		<br>
		<input type="password" id="password" name="password">
		<label for="password">Password</label>
		<br>
		<br>
		<input type="checkbox" id="perfilAdmon" name="perfilAdmon" value="true">
		
		<%-- La parte de añadir perfil de administrador solo sera visible para el administrador --%>
		<label for="perfilAdmon">Añadir perfil de administrador al usuario</label>
		<br>
		<button type="submit">Enviar</button>
	</form>
	<p>${mensaje}</p>
</body>
</html>