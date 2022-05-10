<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Ver Usuarios</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../css/styles.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="stylesheet" type="text/css" href="../../css/detalles.css">    
    <link rel="stylesheet" type="text/css" href="../../css/fichaUsuario.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"> <!-- definición de los textos -->
    <link rel="icon" type="image/svg+xml" href="../images/svg/favicon.svg" sizes="any"> <!-- etiqueta en la que enlazamos el icono que aparecerá en la pesatña del navegador junto al title, llamado favicon-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
</head>
<body>
	
	<jsp:include page="cabecera.jsp"></jsp:include>
	
	<main>
        <!-- ****************************************** SECTION FICHA USUARIO ****************************************** -->
		<section class="seccionFichaUsuario">
			<div>
				<h1>Fichas de usuarios</h1><br>
				<div class="contenedorDetallesUsuario">
					<div class="imagenDetallesUsuario">
	                		<img src="../images/avatar-migue.png" alt="Foto Usuario">
	                </div>
	                <div><h3>PRUEBA</h3></div>
				
			
			
			
			
			
				</div>
			</div>
		
		
		
			<div class="btn-volver">
				<input type="button" onclick="history.back()" name="volver atrás" value="VOLVER ATRÁS" class="cuadro-form admon">
			</div>
		</section>
		
		
		
		
		
		
		<section class="seccionFichaUsuario">
			<div class="seccion-fichasUsuario">
				<c:forEach var="ele" items="${listaUsuarios}">        
					<article class="contenedor-fichasUsuario">
				    	<div class="fichaUsuario">
					        <div><h3>Username: ${ele.username}</h3></div>   
					        <div><h3>Nombre: ${ele.nombre}</h3></div>
					        <div><h3>Apellido: ${ele.apellido}</h3></div>
					        <div><h3>Email: ${ele.email}</h3></div>     
					        <div><h3>Dirección: ${ele.direccion}</h3></div>
					        <div><h3>Perfil:
						        <c:forEach var="ele" items="${ele.perfiles}">
						        	<div><h3>${ele.descripcion}</h3></div>
						         </c:forEach>
					         </h3></div>
				         </div>
					</article>
				</c:forEach> 
			</div>
		</section>
	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>