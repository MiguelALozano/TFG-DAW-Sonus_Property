<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Alta Inmueble</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/styles.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"> <!-- definición de los textos -->
    <link rel="icon" type="image/svg+xml" href="../images/svg/favicon.svg" sizes="any"> <!-- etiqueta en la que enlazamos el icono que aparecerá en la pesatña del navegador junto al title, llamado favicon-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script defer src="js/navbar.js"></script><!-- enlazamos con la librería JavaScript -->
</head>
<body>
	
	<jsp:include page="cabecera.jsp"></jsp:include>
	
	<main class="main-altaUsuario">
    <!-- ****************************************** SECTION ALTA INMUEBLE ****************************************** -->
        <section class="seccion-alta">
            <div>
                <h1>Dar de Alta un Inmueble</h1>
                <h2>Rellena los siguientes campos</h2><br><br>
				<h1>${mensaje}</h1>
				<form action="altaInmueble" method="post" class="form-alta">
					<label for="ciudad">Ciudad</label><br>
						<select name="idCiudad" id="ciudad" class="cuadro-form">
							<c:forEach var="ele" items="${listaCiudades}">
								<option value="${ele.idCiudad}">${ele.nombre}</option>
							</c:forEach>
						</select>
						<br>

					<!-- 
					<p>¿Raúl que te parece esta opción?</p>
					<select name="idCiudad" id="ciudad" class="cuadro-form">
						<option>Ciudad</option>
						<c:forEach var="ele" items="${listaCiudades}">
							<option value="${ele.idCiudad}">${ele.nombre}</option>
						</c:forEach>
					</select>
					 -->
					
					<div>Ascensor</div>
						<input type="radio" id="ascensorSi" name="ascensor" value="1" checked  class="cuadro-form">
						<label for="ascensorSi">Si</label>
						<input type="radio" id="ascensorNo" name="ascensor" value="0"  class="cuadro-form">
						<label for="ascensorNo">No</label>
					<br>
					<label for="baños">Número de baños</label><br>
					<input type="number" id="baños" name="baños" placeholder="Número de baños" class="cuadro-form alta" required><br>
					<label for="estado">Estado del inmueble</label><br>
					<input type="text" id="estado" name="estado" placeholder="Estado del inmueble" class="cuadro-form alta" required><br>
					<!--  mirar como meter la imagen, FALTA ESTA PARTE -->
					<label for="imagen">Nombre de la imagen del inmueble</label><br>
					<input type="text" id="imagen" name="imagen" placeholder="Nombre de la imagen" class="cuadro-form alta" required><br>
					
					
					
					
					<label for="novedad">Novedad</label>
						<select id ="novedad" name="novedad" class="cuadro-form">
							<option value="1">Si</option>
							<option value="0">No</option>
						</select>
						<br>
					<!-- 
						<p>¿Raúl que te parece esta opción?</p>
						<select id ="novedad" name="novedad" class="cuadro-form">
							<option value="">Novedad</option>
							<option value="1">Si</option>
							<option value="0">No</option>
						</select>
					 -->
					<br>
					<label for="numHabitaciones">Número de habitaciones</label><br>
					<input type="number" id="numHabitaciones" name="numHabitaciones" placeholder="Número de habitaciones" class="cuadro-form alta" required><br>
					<label for="planta">Planta</label><br>
					<input type="text" id="planta" name="planta" placeholder="Planta" class="cuadro-form alta" required><br>
					<label for="precio">Precio del inmueble</label><br>
					<input type="number" id="precio" name="precio" placeholder="Precio del inmueble" class="cuadro-form alta" required><br>
					<label for="tamanio">Tamaño de inmueble</label><br>
					<input type="number" id="tamanio" name="tamanio" placeholder="Tamaño del inmueble" class="cuadro-form alta" required><br>
					<label for="terraza">Terraza</label><br>
						<select name="terraza" id="terraza" class="cuadro-form">
							<option value="1">Si</option>
							<option value="0">No</option>
						</select>
					
					<br>
					<label for="tipoInmueble">Tipo de Inmueble</label><br>
						<select name="idTipo" id="tipoInmueble" class="cuadro-form">
							<c:forEach var="ele" items="${listaTipos}">
								<option value="${ele.idTipo}">${ele.tipo}</option>
							</c:forEach>
						</select>
					<br>
					<input type="submit" value="Alta" class="cuadro-form btn-pq">
					<input type="reset" value="Borrar" class="cuadro-form btn-pq">
				</form>
            </div>  
        </section>
	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>












































