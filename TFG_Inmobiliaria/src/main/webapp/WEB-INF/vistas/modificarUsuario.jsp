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
    <script type="text/javascript" src="/js/modificarUsuario.js" defer></script>
</head>
<body>
	
	<jsp:include page="cabecera.jsp"></jsp:include>
	
	<main class="main-altaUsuario">
    <!-- ****************************************** SECTION MODIFICAR USUARIO ****************************************** -->
        <section class="seccion-alta">
            <div>
                <h1>Datos de Usuario</h1>
                <h2>Busca el usuario registrado</h2>
				
				<form action="/modificarUsuario" method="post" id="formModificar" class="form-alta">
					<input type="text" id="username" name="username" placeholder="UserName" class="cuadro-form alta" autofocus>
					<button id="botonBuscarUsuario" class="cuadro-form btn-pq">Buscar</button><br>
					<input type="text" id="nombre" name="nombre" placeholder="Nombre" class="cuadro-form alta"><br>					
					<input type="text" id="apellido" name="apellido" placeholder="Apellidos" class="cuadro-form alta"><br>
					<input type="text" id="direccion" name="direccion" placeholder="Dirección" class="cuadro-form alta"><br>
					<input type="email" id="email" name="email" placeholder="E-mail" class="cuadro-form alta"><br>
					<input type="date" id="fechaAlta" name="fechaAlta" placeholder="Fecha de Alta" class="cuadro-form alta"><br>
					<select id="enabled" name="enabled" class="cuadro-form alta">
						<option value="1" selected>Enabled</option>
						<option value="0">Not enabled</option>
					</select><br>
					<input type="password" id="password" name="password" placeholder="Nueva Password" class="cuadro-form alta"><br>
									
					<%-- La parte de añadir perfil de administrador solo sera visible para el administrador --%>
					<h3><label for="perfilUser"><input type="checkbox" id="perfilUser" name="perfilUser" value="true">  Perfil de Usuario </label></h3><br>
					<h3><label for="perfilAdmon"><input type="checkbox" id="perfilAdmon" name="perfilAdmon" value="true">  Añadir perfil de administrador al usuario </label></h3><br>
					
					<input type="submit" value="Modificar Usuario" id="botonModificarUsuario" class="cuadro-form">
					<input type="submit" value="Eliminar Usuario" id="botonBorrarUsuario" class="cuadro-form">
					<input type="reset" value="Borrar Formulario" class="cuadro-form">
					<input type="button" onclick="history.back()" name="volver atrás" value="Volver atrás" class="cuadro-form">
				</form>
				<p>${mensaje}</p>
            </div>  
        </section>
	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>












































