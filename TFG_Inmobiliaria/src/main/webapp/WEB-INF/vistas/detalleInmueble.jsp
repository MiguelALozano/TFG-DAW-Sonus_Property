<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Inmueble</title>
</head>
<body>
	
	<h3>Detalle del inmueble</h3>
	<p>Ascensor: ${inmueble.ascensor}</p><br>
	<p>Número de baños: ${inmueble.baños}</p><br>
	<p>Estado del inmueble: ${inmueble.estado}</p><br>
	<p>Número de habitaciones: ${inmueble.numHabitaciones}</p><br>
	<p>Planta: ${inmueble.planta}</p><br>
	<p>Precio: ${inmueble.precio}</p><br>
	<p>Tamaño: ${inmueble.tamanio}</p><br>
	<p>Terraza : ${inmueble.terraza}</p><br>
	<p>Ciudad: ${inmueble.ciudad.nombre}</p><br>
	<p>Tipo de inmueble: ${inmueble.tipo.tipo}</p><br>
</body>
</html>