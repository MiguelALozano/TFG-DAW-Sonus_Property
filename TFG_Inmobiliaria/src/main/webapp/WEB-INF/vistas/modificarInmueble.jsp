<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Modificar Usuario</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
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
    <script type="text/javascript" src="/js/modificarInmueble.js" defer></script>
</head>
<body>
	
	<jsp:include page="cabecera.jsp"></jsp:include>
	
	<main class="main-altaUsuario">
    <!-- ****************************************** SECTION MODIFICAR INMUEBLE ****************************************** -->
        <section class="seccion-alta">
            <div>
                <h1>Datos del Inmueble</h1>
                <h2>Rellena los siguientes campos</h2>
                <p id="msgInmuebleNoExiste" style="display:none">No existe ningun inmueble con ese id</p>
				
				<form id="formModificar" class="form-alta">
					<input type="number" id="idInmueble" name="idInmueble" placeholder="Id Inmueble" class="cuadro-form alta" autofocus>
					<button id="botonBuscarInmueble" class="cuadro-form btn-pq">Buscar</button><br>
					<label for="ciudad">Ciudad</label><br>
					<select name="idCiudad" id="ciudad">
						<c:forEach var="ele" items="${listaCiudades}">
							<option value="${ele.idCiudad}">${ele.nombre}</option>
						</c:forEach>
					</select>
					<br>
					<label for="fechaAlta">Fecha de Alta</label><br>
					<input type="date" id="fechaAlta" name="fechaAlta" placeholder="Fecha de Alta" class="cuadro-form alta"><br>
					<div>Ascensor</div>
						<input type="radio" id="ascensorSi" name="ascensor" value="1" checked>
						<label for="ascensorSi">Si</label>
						<input type="radio" id="ascensorNo" name="ascensor" value="0">
						<label for="ascensorNo">No</label>
					<br>
					<label for="baños">Número de baños</label><br>
					<input type="number" id="baños" name="baños" placeholder="Número de baños" class="cuadro-form alta" autofocus required><br>
					<label for="estado">Estado del inmueble</label><br>
					<input type="text" id="estado" name="estado" placeholder="Estado del inmueble" class="cuadro-form alta" required><br>
					<!--  mirar como meter la imagen, FALTA ESTA PARTE -->
					<label for="imagen">Imagen del inmueble</label><br>
					<input type="text" id="imagen" name="imagen" placeholder="imagen del inmueble" class="cuadro-form alta" required><br>
					<label for="novedad">Novedad</label><br>
						<select id ="novedad" name="novedad">
							<option value="1">Si</option>
							<option value="0">No</option>
						</select>
					<br>
					<label for="numHabitaciones">Número de habitaciones</label><br>
					<input type="number" id="numHabitaciones" name="numHabitaciones" placeholder="número de habitaciones" class="cuadro-form alta" autofocus required><br>
					<label for="planta">Planta</label><br>
					<input type="text" id="planta" name="planta" placeholder="Planta" class="cuadro-form alta" required><br>
					<label for="precio">Precio del inmueble</label><br>
					<input type="number" id="precio" name="precio" placeholder="Precio del inmueble" class="cuadro-form alta" autofocus required><br>
					<label for="tamanio">Tamaño del inmueble</label><br>
					<input type="number" id="tamanio" name="tamanio" placeholder="Tamaño del inmueble" class="cuadro-form alta" autofocus required><br>
					<label for="terraza">Terraza</label><br>
						<select name="terraza" id="terraza">
							<option value="1">Si</option>
							<option value="0">No</option>
						</select>
					
					<br>
					<label for="tipoInmueble">Tipo de Inmueble</label><br>
						<select name="idTipo" id="tipoInmueble">
							<c:forEach var="ele" items="${listaTipos}">
								<option value="${ele.idTipo}">${ele.tipo}</option>
							</c:forEach>
						</select>
					<br>
					<input type="submit" value="Modificar" id="botonModificarInmueble" class="cuadro-form btn-pq">
					<input type="submit" value="Borrar Inmueble" id="botonBorrarInmueble" class="cuadro-form btn-pq">
					<input type="reset" value="Borrar Formulario" class="cuadro-form btn-pq">
				</form>
				<p>${mensaje}</p>
            </div>  
        </section>
	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>












































