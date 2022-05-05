<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html><!-- definimos el lenguaje que vamos a utilizar, en nuesto caso html5 -->
<html lang="es"> <!-- con esta etiqueta indicamos el idioma de la web -->
<head><!-- en esta etiqueta añadimos los encabezados de la página, el usuario se abstrae de esto -->
    <title>Footer</title><!-- etiqueta que le da nombre a la web, aparece en la pestaña del navegador junto al favicon -->
    <meta charset="UTF-8"> <!-- etiqueta meta para especificarle al navegador que codificación de carácteres vamos a utilizar, en nuestro caso UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/footer.css"><!-- enlace que hacemos a la hoja de estilos independiente que define esta página -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"> <!-- definición de los textos -->
    <link rel="icon" type="image/svg+xml" href="images/svg/favicon.svg" sizes="any"> <!-- etiqueta en la que enlazamos el icono que aparecerá en la pesatña del navegador junto al title, llamado favicon-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    
</head>
<body>
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
            <a href="https://www.facebook.com/" target="blank"><img src="../images/svg/facebook.svg" alt="icono facebook" class="icono-redes"></a>
            <a href="https://www.twitter.com/" target="blank"><img src="../images/svg/twitter.svg" alt="icono twitter" class="icono-redes"></a>
            <a href="https://www.pinterest.com/" target="blank"><img src="../images/svg/pinterest.svg" alt="icono pinterest" class="icono-redes"></a>
            <a href="https://www.instagram.com/" target="blank"><img src="../images/svg/instagram.svg" alt="icono instagram" class="icono-redes"></a>
            <a href="https://www.youtube.com/" target="blank"><img src="../images/svg/youtube.svg" alt="icono youtube" class="icono-redes"></a>
        </section>
    </footer>
</body>
</html>