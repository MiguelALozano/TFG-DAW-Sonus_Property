<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Detalles del Inmueble</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../css/styles.css">
	<link rel="stylesheet" type="text/css" href="../../css/detalles.css">  <!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"> <!-- definición de los textos -->
    <link rel="icon" type="image/svg+xml" href="../../images/svg/favicon.svg" sizes="any"> <!-- etiqueta en la que enlazamos el icono que aparecerá en la pesatña del navegador junto al title, llamado favicon-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script defer src="js/navbar.js"></script><!-- enlazamos con la librería JavaScript -->
</head>
<body>

	<jsp:include page="cabecera.jsp"></jsp:include>

	<main>
        <!-- ****************************************** SECTION DETALLES ****************************************** -->
        <section class="seccionDetalle">
            <div>
                <h1>Detalles del Inmueble</h1><br>
                <div class="contenedorDetalles">
	                <div class="imagenDetalles">
	                	<img src="../../images/inmuebles/${inmueble.imagen}.jpg" alt="Vivienda">
	                </div> 
                    <div>
                        <h3>Descripción del Inmueble</h3><hr>    
                        <p>${inmueble.descripcion}</p>    
                    </div>
                    <div class="detalles">
                        <h3>Detalles del Inmueble<hr></h3><br>
                        <p>Precio:  <span> ${inmueble.precio} &euro;</span></p>
                        <p>Estado del inmueble: <span>${inmueble.estado}</span></p>
                        <p>Planta: <span>${inmueble.planta}</span></p>
                        <p>Ascensor: <span>${inmueble.ascensor}</span></p>
                    </div>

                    <div class="detalles">
                        <h3>Características del Inmueble<hr></h3><br>
                        <p>Número de habitaciones: <span>${inmueble.numHabitaciones}</span></p>
                        <p>Tamaño: <span>${inmueble.tamanio}</span></p>
                        <p>Número de baños: <span>${inmueble.baños}</span></p>
                        <p>Terraza: <span>${inmueble.terraza}</span></p>
                    </div>

                    <div class="detalles">
                    	<h3>Localización<hr></h3><br>
                        <p>Ciudad: <span>${inmueble.ciudad.nombre}</span></p>
                        <p>Tipo de inmueble: <span>${inmueble.tipo.tipo}</span></p>
                    </div>
	                <div class="map">
	                    <a href="https://www.google.com/maps/place/ESCUELA+TELEFONICA/@40.3833361,-3.6287205,19.95z/data=!4m13!1m7!3m6!1s0xd4225af7347dfc9:0x5087831a051c8a7c!2sC.+de+Bruno+Ab%C3%BAndez,+28031+Madrid!3b1!8m2!3d40.3834547!4d-3.6283768!3m4!1s0xd4225af1583175d:0xca4496d5b6b32cd6!8m2!3d40.3836392!4d-3.6289247" target="blank">
	                    <img src="../../images/map.png"></a>
	                </div>
                 
                </div>    
	                <div class="btn-volver">
	                		<input type="button" onclick="history.back()" name="volver atrás" value="VOLVER ATRÁS" class="cuadro-form admon">
	                </div>
            	</div>
            	 
        </section>
    </main>
	
	<jsp:include page="footer.jsp"></jsp:include>
		
</body>
</html>




































































