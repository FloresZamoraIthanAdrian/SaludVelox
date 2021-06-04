<%@page import="Control.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Iniciar Sesión | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = 'Styles/stylesforms.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>


        <header>
            <div class = "container logo-nav-container">
                <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-home"></i> Iniciar<br class = 'espacioV'> Sesión</p>
                <div class = "espacio"></div>
                <nav class="sin_menu">
                    <ul class="animate__animated animate__zoomInRight">
                        <li onclick="javascript:crearcuenta()"><i class="fas fa-user-circle"></i> Crear Cuenta</li>
                    </ul>
                </nav>
            </div>
        </header>

        <section>
            <main>
                <image class="imagenHumano animate__animated animate__pulse animate__infinite" src = 'images/EscudoVelox2.png' title="Presióname para regresar al inicio del sitio web <3" alt = "No se porque no carga :c" onclick="javascript:chat()"></image>
                <div class="formulario">

                    <form method="post" action="IniciarSesion.jsp" id="iniciarSesion" name = "formularioInicio" >

                        <h4 class="formulario__titulo animate__animated animate__rubberBand animate__infinite animate__slower">¡Bienvenido!</h4>


                        <input id="Correo" type="email" name = "CorreoElectronico" class="formulario__input" placeholder="Correo Electrónico" >
                        <input id="Pass" type="password" name = "Contrasena" class="formulario__input" placeholder="Contraseña" >

                        <input type="submit" name="btnIngresar" value="Iniciar Sesión" class="boton">

                    </form>

                    <%

                        HttpSession sesion = request.getSession();
                        String usuer;
                        if (request.getParameter("btnIngresar") != null) {

                            Connection con = Conexion.getConnection();
                            Statement set = null;
                            ResultSet rs = null;
                            String Correo = request.getParameter("CorreoElectronico");
                            String contra = request.getParameter("Contrasena");

                            try {
                                String q = "select id_usu, correo from usuario where correo='" + Correo + "' and pass_usu='" + contra + "' ";
                                set = con.createStatement();
                                rs = set.executeQuery(q);
                                while (rs.next()) {
                                    session.setAttribute("id_usuS", rs.getInt(1));
                                    session.setAttribute("user", rs.getString(2));
                                }
                                rs.close();
                                set.close();
                                response.sendRedirect("Info.jsp");
                            } catch (SQLException ed) {
                                System.out.println("No se encontro");
                                System.out.println(ed.getMessage());
                    %>  

                    <h3>Usuario o contraseña incorrecto</h3>
                    <%
                            }
                            con.close();

                        }
                        if (request.getParameter("cerrar") != null) {
                            session.invalidate();
                        }
                    %>


                </div>
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
                    <li>Salazar Valdez<br>Ángel Yahir</li>
                </ul>
            </div>
        </footer>

        <script>
            $(document).ready(function () {
                $("#iniciarSesion").validate({
                    rules: {
                        CorreoElectronico: {
                            required: true,
                            email: true
                        },
                        Contrasena: {
                            required: true,
                            minlength: 3,
                            maxlength: 20
                        }
                    },
                    messages: {
                        CorreoElectronico: {
                            required: "Por favor ingresa el correo",
                            email: "Ingresa un correo con formato valido"
                        },
                        Contrasena: {
                            required: "Por favor ingresa la contraseña",
                            minlength: "La contraseña debe tener más de 3 caracteres ",
                            maxlength: "La contraseña debe tener menos de 20 caracteres"
                        }
                    }
                });
            });

        </script>

        <script>
            function crearcuenta() {
                location.href = "CrearCuenta.html"
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