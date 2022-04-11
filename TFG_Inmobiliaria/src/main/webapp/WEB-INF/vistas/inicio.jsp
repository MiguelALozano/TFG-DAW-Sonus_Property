 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
<title>Inicio Inmobiliaria</title>

</head>
	<body> 
	  	<div>SONUS PROPERTY</div>
	  	<nav>
		  	<ul>
		  		<li>INICIO</li>
		  		<li>QUIENES SOMOS</li>
		  		<li>CONTACTO</li>
		  	</ul>
		</nav>
		<br>
		<h2>NOVEDADES</h2>
		<c:forEach var="ele" items="${novedades}">
			<section id="CardInmueble">
				<div class="cardPhoto">
					<p>Espacio para la foto</p>
				</div>
				<div class="cardItem">
					<p>Numero de baños: ${ele.baños}</p>
					<p>Número Habitaciones: ${ele.numHabitaciones}</p>
					<p>Estado: ${ele.estado} </p>
					<p>Planta: ${ele.planta}</p>
					<p>Precio: ${ele.precio}</p>
				</div>
				<div class="cardLinks">
					<p>Enlaces</p>
				</div>
			</section>
		</c:forEach>
		<br>
		
		
	</body>
</html>
	