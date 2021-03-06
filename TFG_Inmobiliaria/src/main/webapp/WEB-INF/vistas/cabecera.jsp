<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Sonus Property</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../css/header.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
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
                <a href="/"><img src="../../images/svg/logo_svg.svg" alt="logo Sonus Property"></a><!-- utilizamos esta imagen como enlace a la dirección index.html -->
            </div>
        </div>
    </header>
    
    <!-- ****************************************** NAV ****************************************** -->
    <nav>
        <ul class="menu">
            <li><a href="/" class="activa">INICIO</a></li>
            <li><a href="/inmueble/verTodos">INMUEBLES</a></li>
            <li><a href="../../content/about.html">QUIÉNES SOMOS</a></li>
            <li><a href="../../content/contact.html">CONTACTO</a></li>
            <li><h4 id="usuario">${sessionUserName}</h4></li>
            <sec:authorize access="!isAuthenticated()">
            	<li><h4><a href="/login">Inicia Sesión</a></h4></li>
            	<li><h4><a href="/admon/altaUsuario">Regístrate</a></h4></li>
           	</sec:authorize>
            <sec:authorize access="isAuthenticated()">
            	<li><h4><a href="/user/verFavoritos/${sessionUserName}">Favoritos</a></h4></li>
            </sec:authorize>
            
            <sec:authorize access="hasAuthority('ROL_ADMON')">
            	<li><h4><a href="/admon/panelAdmon">Admin. panel</a></h4></li>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
            	<li><h4><a href="/logout">Cerrar Sesión</a></h4></li>
            </sec:authorize>
            <%-- La parte con su usuario correspondiente
            <li><h4>Bienvenido ${sesion.nombre  }</h4></li>
            <li><h4><a href="/logout">Cerrar Sesión</a></h4></li> --%>
        </ul>   
    </nav>
</body>
</html>


















