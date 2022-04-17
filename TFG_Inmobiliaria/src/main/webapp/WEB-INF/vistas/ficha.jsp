<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Ficha Pequeña</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styles.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"> <!-- definición de los textos -->
    <link rel="icon" type="image/svg+xml" href="images/svg/favicon.svg" sizes="any"> <!-- etiqueta en la que enlazamos el icono que aparecerá en la pesatña del navegador junto al title, llamado favicon-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script defer src="js/navbar.js"></script><!-- enlazamos con la librería JavaScript -->
</head>
<body>
	<article class="contenedor-fichas">
		<div class="ficha 1">
			<div><img src="../images/atico01/${inmueble.imagen}" alt="Vivienda ${inmueble.imagen}"></div>
                    <div><h4>${inmueble.idCiudad}</h4></div>
                    <div><h3>Título${inmueble.idCiudad}</h3></div>
                    <div><p>Descripción</p></div>
                    <div><h4>${inmueble.idTipo}</h4></div>
                    <div><h5>${inmueble.precio}</h5></div>
                    <div><h4>${inmueble.estado}Más información</h4></div>
                    <div><a href="/user/añadirFavorito/${inmueble.idCiudad}">Añadir a Favorito</a></div>
                </div>
     </article>     
           
	<article class="contenedor-fichas">
		<div class="ficha 1">
			<div><img src="images/atico01/a01.jpg" alt="Vivienda"></div>
                    <div><h4>Ciudad 1</h4></div>
                    <div><h3>Título</h3></div>
                    <div><p>Descripción</p></div>
                    <div><h4>Tipo</h4></div>
                    <div><h5>Precio</h5></div>
                    <div><h4>Más información</h4></div>
                </div>
     </article>           

</body>
</html>