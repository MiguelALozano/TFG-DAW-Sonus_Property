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
            <li><a href="content/contact.html"><h4>Inicia Sesión</h4></a></li>
            <li><a href="content/contact.html"><h4>Regístrate</h4></a></li>
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
    <main class="main-index">
    <!-- ****************************************** SECTION BUSCAR ****************************************** -->
        <section class="seccion-buscar">
            <div>
                <h1>Búsqueda de inmuebles</h1>
                <h2>Encuentre aquí su casa de ensueño</h2>
                <form>  
                    <select id="ciudad" name="ciudad" class="cuadro-form">
                        <option value="">Ciudad</option>
                        <option value="malaga">Malaga</option>
                        <option value="marid">Madrid</option>
                        <option value="barcelona">Barcelona</option>
                        <option value="cantabria">Cantabria</option>
                    </select>
                    <select id="tipo" name="tipo" class="cuadro-form">
                        <option value="">Tipo de inmueble</option>
                        <option value="apto">Apartamento</option>
                        <option value="chalet">Chalet</option>
                        <option value="campo">Casa de campo</option>
                        <option value="atico">Ático</option>
                    </select>
                    <select id="room" name="room" class="cuadro-form">
                        <option value="">Habitaciones</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                    <input class="cuadro-form" type="reset" value="Borrar">
                    <input class="cuadro-form" type="submit" id="submit-btn" value="Buscar">
                </form>
            </div>  
        </section>

        <section class="seccion-fichas">
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
            <article class="contenedor-fichas">
                <div class="ficha 2"> 
                    <img src="images/atico01/a02.jpg" alt="Vivienda">
                    <h4>Ciudad 2</h4>
                    <h3>Título</h3>
                    <p>Descripción</p>
                    <h4>Tipo</h4>
                    <h5>Precio</h5>
                    <h4>Más información</h4>
                </div>
            </article>
            <article class="contenedor-fichas">
                <div class="ficha 3"> 
                    <img src="images/atico01/a03.jpg" alt="Vivienda">
                    <h4>Ciudad 3</h4>
                    <h3>Título</h3>
                    <p>Descripción</p>
                    <h4>Tipo</h4>
                    <h5>Precio</h5>
                    <h4>Más información</h4>
                </div>
            </article>
            <article class="contenedor-fichas">
                <div class="ficha 1"> 
                    <img src="images/atico01/a02.jpg" alt="Vivienda">
                    <h4>Ciudad 1</h4>
                    <h3>Título</h3>
                    <p>Descripción</p>
                    <h4>Tipo</h4>
                    <h5>Precio</h5>
                    <h4>Más información</h4>
                </div>
            </article>
            <article class="contenedor-fichas">
                <div class="ficha 2"> 
                    <img src="images/atico01/a03.jpg" alt="Vivienda">
                    <h4>Ciudad 2</h4>
                    <h3>Título</h3>
                    <p>Descripción</p>
                    <h4>Tipo</h4>
                    <h5>Precio</h5>
                    <h4>Más información</h4>
                </div>
            </article>
            <article class="contenedor-fichas">
                <div class="ficha 3"> 
                    <img src="images/atico01/a01.jpg" alt="Vivienda">
                    <h4>Ciudad 3</h4>
                    <h3>Título</h3>
                    <p>Descripción</p>
                    <h4>Tipo</h4>
                    <h5>Precio</h5>
                    <h4>Más información</h4>
                </div>
            </article>
        </section>
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