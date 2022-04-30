<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Iniciar Sesión</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
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

	<jsp:include page="cabecera.jsp"></jsp:include>
	
	<main>
    <!-- ****************************************** SECTION ALTA USUARIO ****************************************** -->
        <section class="seccion-alta">
            <div>
                <h1>Iniciar Sesión</h1>
                <h2>Accede a tu cuenta</h2><br>
	            <form action="/inicioSesion" method="post">
						<h3>Introduce tu usuario y contraseña</h3><br><br>
						<h1>${mensaje }</h1>
						<input type="text" name="nombreUsuario" placeholder="Nombre de usuario" class="cuadro-form alta" autofocus required><br><br>
						<input type="password" name="password" placeholder="Contraseña" class="cuadro-form alta" required><br><br>
						<input type="submit" value="Acceder" class="cuadro-form btn-pq">
						<input type="reset" value="Borrar" class="cuadro-form btn-pq"><br><br>
						
						<a href="/admon/panelAdmon"><button type="button" class="cuadro-form alta">Acceder como Administrador</button></a>
						
				</form><br><br>
				<h3>¿Aún no eres cliente nuestro?</h3><br>
				<a href="/altaUsuario"><button type="button" class="cuadro-form btn-pq">Regístrate</button></a>
			
				<h2>${mensaje2 }</h2>
            </div>  
        </section>
	</main>

	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>