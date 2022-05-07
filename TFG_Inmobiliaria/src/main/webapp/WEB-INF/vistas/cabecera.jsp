<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Sonus Property</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/header.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"> <!-- definición de los textos -->
    <link rel="icon" type="image/svg+xml" href="images/svg/favicon.svg" sizes="any"> <!-- etiqueta en la que enlazamos el icono que aparecerá en la pesatña del navegador junto al title, llamado favicon-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    
</head>
<body>
	<header>
        <div id="cabecera" class="cabecera">
            <div class="logo">
                <a href="/"><img src="../images/svg/logo_svg.svg" alt="logo Sonus Property"></a><!-- utilizamos esta imagen como enlace a la dirección index.html -->
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
        	<li><a href="/"><img src="../images/svg/logo_svg.svg" alt="logo Sonus Property"></a><!-- utilizamos esta imagen como enlace a la dirección index.html -->
        	</li>
            <li><a href="/" class="activa">INICIO</a></li>
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
            <li><a href="../content/about.html">QUIÉNES SOMOS</a></li>
            <li><a href="../content/contact.html">CONTACTO</a></li>
            <li><h4 id="usuario">${sessionUserName}</h4></li>
            <li><h4><a href="/login">Inicia Sesión</a></h4></li>
            <li><h4><a href="/admon/altaUsuario">Regístrate</a></h4></li>
            <li><h4><a href="/logout">Cerrar Sesión</a></h4></li>
            <%-- La parte con su usuario correspondiente
            <li><h4>Bienvenido ${sesion.nombre  }</h4></li>
            <li><h4><a href="/logout">Cerrar Sesión</a></h4></li> --%>
        </ul>   
    </nav>
    <!--
    <nav1 class="nav1"> <!-- etiqueta navegador, hemos colocado los enlaces a las demás páginas de la web ->
        <a href="index2.html" class="activa">INICIO</a>
        <div class="desplegable1">INMUEBLES <!-- creamos un desplegable, desde el cual podemos acceder a las páginas Venta y Alquiler ->
            <i class="fa fa-caret-down"></i>
            <div class="desplegable-contenido">
                <a href="content/venta.html">VENTA</a>
                <a href="content/alquiler.html">ALQUILER</a>
            </div>
        </div>
        <a href="content/about.html">QUIÉNES SOMOS</a>
        <a href="content/contact.html">CONTACTO</a>
        <button class="icono" onclick="despliega()">&#9776;</button><!-- Botón que se despliega con enlace al resto de las páginas de nuestra web ->
    </nav1>
    -->
</body>
</html>


















