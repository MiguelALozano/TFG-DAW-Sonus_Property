<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Panel Usuario</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
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
	
	<main>
    <!-- ****************************************** SECTION PANEL USUARIO ****************************************** -->
        <section class="seccion-alta">
            <div>
                <h1>USUARIO</h1><br>
                <h1>Bienvenido ${sessionUserName}</h1>
                <h2>Selecciona que operación quieres realizar</h2><br>
 
                <div class="botonesAdmon">
                    <a href="/inicio"><button class="cuadro-form admon">Ver inmuebles</button></a>
                    <a href="/admon/modificarUsuario"><button id="botonVerFavoritoUsuario" class="cuadro-form admon">Ver favoritos</button></a>
                </div>
                <div class="botonesAdmon">
                    <a href="/admon/modificarUsuario"><button id="botonVerTodosUsuario" class="cuadro-form admon">Ver mis datos</button></a>
                    <a href="/user/modificarUsuario"><button id="botonModificarUsuario" class="cuadro-form admon">Modificar mis datos</button></a>
                    <a href="/admon/modificarUsuario"><button id="botonEliminarUsuario" class="cuadro-form admon">Darme de baja</button></a>
                </div>
                <div class="botonesAdmon">
                    <a href="/logout"><button id="botonCerrarSesion" class="cuadro-form admon">Cerrar sesión</button></a>
                </div>
            </div> 
        </section>

		<section class="seccion-fichas">
			<div>
				<h1>Mis Favoritas</h1>
			</div>
			<div class="seccion-fichas2">
				<c:forEach var="ele" items="${listaNovedades}">        
		            <article class="contenedor-fichas">
		                <div class="ficha">
		                    <div><a href="/inmueble/verInmueble/${ele.idInmueble}"><img src="images/inmuebles/${ele.imagen}.jpg" alt="Vivienda"></a></div>
		                    <div><h4>${ele.ciudad.nombre}</h4></div>
		                    <div><h3>${ele.tipo.tipo}</h3></div>
		                    <div><h4>${ele.tamanio} m2</h4></div>
		                    <div><h5>${ele.precio} &euro;</h5></div>
		                    <div><h4><a href="/inmueble/verInmueble/${ele.idInmueble}">Más información</a></h4></div>
		                    <div><h4><a class="añadirFavoritos" data-idInmueble=${ele.idInmueble } href="#">Añadir a Favoritos</a></h4></div>
		                </div>
		            </article>
	            </c:forEach> 
			</div>
        </section>     
	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
		
</body>
</html>