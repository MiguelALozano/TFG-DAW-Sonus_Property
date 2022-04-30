<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Resultado de la Busqueda de Inmuebles</title>
</head>
<body>
	<h3>Aqui muestro los resultados de la búsqueda de inmuebles</h3>
	
	<section>
			<c:forEach var="ele" items="${listaInmuebles}">        
	            <article class="contenedor-fichas">
	                <div class="ficha 1">
	                    <div><img src="images/atico01/a01.jpg" alt="Vivienda"></div>
	                    <div><h4>${ele.ciudad.nombre}</h4></div>
	                    <div><h3>${ele.tipo.tipo}</h3></div>
	                    <div><h4>${ele.tamanio}</h4></div>
	                    <div><h5>${ele.precio}</h5></div>
	                    <div><h4><a href="/inmueble/verInmueble/${ele.idInmueble}">Más información</a></h4></div>
	                </div>
	            </article>
            </c:forEach> 
    </section>
	
</body>
</html>