<%@page import="Usuario.Usuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <link rel = "stylesheet" type = 'text/css' href = 'Styles/Estilos.css'>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Lobster&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <title>Contraseña | Salud Velox</title>
        <link rel="icon" href= "./images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="./Scripts/ValidacionFormularios.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = './Styles/stylesforms.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>

        <header>
            <div class = "container logo-nav-container">
                <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-key"></i> Cambiar <br class = 'espacioV'>Contraseña</p>
                <div class = "espacio"></div>
                <nav class="nav">
                    <ul class = "animate__animated animate__zoomInRight animate__slow">
                        <div class="espaciado"></div>
                        <a style="text-decoration: none; color: white;" href="Cuenta.jsp" ><li id ="margenNav2"><i class="fas fa-user-circle"></i> Cuenta</li></a>
                    </ul>
                </nav>
            </div>
        </header>
        <section>

            <main>

                <div class="formulario">

                    <%
                        HttpSession sesion = request.getSession();
                        String usuer, id;

                        if (sesion.getAttribute("user") != null) {
                            usuer = sesion.getAttribute("user").toString();
                            id = sesion.getAttribute("id_usuS").toString();
                            int id_usu = Integer.parseInt(id);

                            Usuario u = AccionesUsuario.listarDatosUser(id_usu);

                        } else {
                            out.print("<script>location.replace('IniciarSesion.jsp');</script>");
                        }
                    %>

                    <form action="CambiarContrasena" onsubmit="return cambiarContrasena(this)" name="cambiarContrasenaForm">
                        <h4 class="formulario__titulo animate__animated animate__rubberBand animate__infinite animate__slower">Complete los siguientes campos para cambiar la contraseña.</h4>
                        <p class="centro">Digite el correo que registro al crear la cuenta.</p>
                        <input type="text" name = "correoRec" class="formulario__input" placeholder="CorreoElectrónico">
                        <p class="centro">Digite la antigua contraseña.</p>
                        <input onkeypress="return validarAlfaNumericos(event)" type="password" name = "antiguaContrasena" class="formulario__input" placeholder="Contraseña (6 caracteres mínimo)">
                        <p class="centro">Digite la nueva contraseña.</p>
                        <input onkeypress="return validarAlfaNumericos(event)" type="password" name = "nuevaContrasena" class="formulario__input" placeholder="Nueva Contraseña">
                        <input onkeypress="return validarAlfaNumericos(event)" type="password" name = "VerificarContrasena" class="formulario__input" placeholder="Las contraseñas deben coincidir">
                        <input type="submit" value="Cambiar Contraseña" onclick="" class = "boton">
                    </form>
            </main>

        </section>

        <footer>
            <h3>Redes Sociales</h3>
            <ul>
                <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"></i> Facebook</li>
                <li onclick="javascript:instagram()"><i class="fab fa-instagram"></i> Instagram</li>
                <li onclick="javascript:twitter()"><i class="fab fa-twitter"></i> Twitter</li>
            </ul>
            <h3>Correo Electrónico</h3>
            <ul>
                <li>velox.software.09@gmail.com</li>
            </ul>
            <h3>Página Web</h3>
            <ul>
                <li onclick="javascript:velox()">VeloxSoftware.com</a></li>
            </ul>
            <h3>Integrantes</h3>
            <div class="nombres">
                <ul onclick="javascript:velox()">
                    <li>Castañeda Rodríguez<br>Rafael Gil</li>
                    <li>Coronado Segundo<br>Juan Yael</li>
                    <li>Flores Zamora<br>Ithan Adrian</li>
                    <li>Gallegos González<br>Gian Carlo</li>
                    <li>Pérez López<br>Jesús Eduardo</li>
                </ul>
            </div>
        </footer>

        <script src="./Scripts/Basicos.js"></script>
        <script src="./Scripts/ValidacionFormularios.js"></script>
        <script src='./Scripts/ValidacionTeclado.js'></script>
        <noscript>
        <div class="sinJS">
            <p class="error_titulo">ERROR</p>
            <image src = "images/Js.svg" class="error_imagen animate__animated animate__jello animate__infinite animate__slower"></image>
            <p class="error_subtitulo">Esta página web necesita Javascript</p>
        </div>
        </noscript>

        <script>
            function info() {
                location.href = "Info.jsp"
            }
            function cuenta() {
                location.href = "Cuenta.jsp";
            }
            function formulario() {
                location.href = "Formulario.jsp"
            }
            function resultado() {
                location.href = "Resultado.jsp"
            }
            function chat() {
                window.open("https://chat-velox.herokuapp.com/");
            }
            function velox() {
                window.open("https://giancarlogall.github.io/VeloxPagina/Velox.html");
            }
            function facebook() {
                window.open("https://www.facebook.com/VeloxSoftware");
            }
            function instagram() {
                window.open("https://www.instagram.com/veloxsoftware/");
            }
            function twitter() {
                window.open("https://twitter.com/SoftwareVelox");
            }
        </script>
        <script>
                    jQuery('document').ready(function ($) {
                        var menuBtn = $('.menu-icon'),
                                menu = $('.nav ul');

                        menuBtn.click(function () {
                            if (menu.hasClass('show')) {

                                menu.removeClass('show');

                            } else {

                                menu.addClass('show')
                            }
                        });
                    });
        </script>

    </body>
</html>