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
    <link rel="stylesheet" type="text/css" href="../../css/fichaUsuario.css">
    <link rel="stylesheet" type="text/css" href="../../css/styles.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="stylesheet" type="text/css" href="../../css/detalles.css">    
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
				<section class="contenedorFichasUSuario">
					<c:forEach var="ele" items="${listaUsuarios}">
						<div class="contenedorDetallesUsuario">
							<section class="picture">
								<div class="imagenDetallesUsuario">
				                	<img src="../../images/avatar.png" alt="Foto Usuario">
				                </div>					
							</section>
							<section class="data1">
								<div><p>Username: <span>${ele.username}</span></p></div> 
								<div><p>Nombre: <span>${ele.nombre}</span></p></div>
						        <div><p>Apellido: <span>${ele.apellido}</span></p></div>
						        <div><p>Email: <span>${ele.email}</span></p></div>
							</section>
							<section class="data2">
								<div><p>Dirección: <span>${ele.direccion}</span></div>
						        <div><p>Perfil:
							        <c:forEach var="ele" items="${ele.perfiles}">
							        	<span>${ele.descripcion}</span>
							         </c:forEach>
						        </div>						
							</section>
							<section class="button">
								<div>
									<a href="/admon/modificarUsuario"><button id="botonModificarUsuario" class="botonUsuario">Modificar/Eliminar usuario</button></a>
								</div>
							</section>
						</div>
					</c:forEach>
				</section>
			</div>
			<div class="btn-volver">
				<input type="button" onclick="history.back()" name="volver atrás" value="VOLVER ATRÁS" class="cuadro-form admon">
			</div>
		</section>
	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>