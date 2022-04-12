<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Alta Usuario</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
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
    <!-- ****************************************** HEADER ****************************************** -->
    <header>
        <div id="cabecera" class="cabecera">
            <div class="logo">
                <img src="images/svg/logo_svg.svg" alt="logo Sonus Property"><!-- utilizamos esta imagen como enlace a la dirección index.html -->
            </div>
        </div>
        <!-- <div class="cabecera">
            <a href="index.html" class="activa">INICIO</a>
            <div>INMUEBLES</div>
            <a href="content/alquiler.html">ALQUILER</a>
            <a href="content/venta.html">VENTA</a>
            <a href="content/about.html">QUIENES SOMOS</a>
            <a href="content/contact.html">CONTACTO</a>
        </div> -->
    </header>
    <!-- ****************************************** NAV ****************************************** -->
    <nav>
        <ul class="menu">
            <li><a href="/inicio" class="activa">INICIO</a></li>
            <li>
                <div class="desplegable">INMUEBLES <!-- creamos un desplegable, desde el cual podemos acceder a las páginas Venta y Alquiler -->
                    <!--
                <i class="fa fa-caret-down"></i>
                 <div class="desplegable-contenido">
                     <a href="content/venta.html">VENTA</a>
                     <a href="content/alquiler.html">ALQUILER</a>
                 </div> -->      
                </div>
            </li>
            <li><a href="content/about.html">QUIÉNES SOMOS</a></li>
            <li><a href="content/contact.html">CONTACTO</a></li>
            <li><h4>Bienvenido ${sesion.nombre  }</h4></li>
            <li><a href="content/contact.html"><h4>Cerrar Sesión</h4></a></li>
        </ul>   
    </nav>
    
    <main class="main-altaUsuario">
    <!-- ****************************************** SECTION ALTA USUARIO ****************************************** -->
        <section class="seccion-alta">
            <div>
                <h1>Dar de Alta un Usuario</h1>
                <h2>Rellena los siguientes campos</h2>
				<form action="/altaUsuario" method="post" class="form-alta">
					<input type="text" id="username" name="username" placeholder="UserName" class="cuadro-form alta" autofocus required><br>
					<input type="text" id="nombre" name="nombre" placeholder="Nombre" class="cuadro-form alta" required><br>
					<input type="text" id="apellido" name="apellido" placeholder="Apellidos" class="cuadro-form alta" required><br>
					<input type="text" id="direccion" name="direccion" placeholder="Dirección" class="cuadro-form alta" required><br>
					<input type="email" id="email" name="email" placeholder="E-mail" class="cuadro-form alta" required><br>
					<input type="password" id="password" name="password" placeholder="Password" class="cuadro-form alta" required><br>
					<%-- La parte de añadir perfil de administrador solo sera visible para el administrador --%>
					<label for="perfilAdmon"><h3><input type="checkbox" id="perfilAdmon" name="perfilAdmon" value="true" placeholder="UserName" class="cuadro-form alta">Añadir perfil de administrador al usuario</h3></label><br>
					<input type="submit" value="Enviar" class="cuadro-form alta">
					<input type="reset" value="Borrar" class="cuadro-form alta">
				</form>
            </div>  
        </section>
		<p>${mensaje}</p>
	</main>

    <!-- ****************************************** FOOTER ****************************************** -->

    <footer> <!-- Sección que se encuentra al final de la página -->
        <section class="copyright">
            <p>&copy; Copyright 2022. Todos los derechos reservados.</p>
        </section>

        <section class="cookies">
            <ul>
                <li><a href="#">Términos y condiciones |</a></li>
                <li><a href="#">Trabaja con nosotros |</a></li>
                <li><a href="#">Política de privacidad</a></li>
            </ul>
        </section>

        <section class="redes">
            <a href="https://www.facebook.com/" target="blank"><img src="images/svg/facebook.svg" alt="icono facebook" class="icono-redes"></a>
            <a href="https://www.twitter.com/" target="blank"><img src="images/svg/twitter.svg" alt="icono twitter" class="icono-redes"></a>
            <a href="https://www.pinterest.com/" target="blank"><img src="images/svg/pinterest.svg" alt="icono pinterest" class="icono-redes"></a>
            <a href="https://www.instagram.com/" target="blank"><img src="images/svg/instagram.svg" alt="icono instagram" class="icono-redes"></a>
            <a href="https://www.youtube.com/" target="blank"><img src="images/svg/youtube.svg" alt="icono youtube" class="icono-redes"></a>
        </section>
    </footer>
</body>
</html>