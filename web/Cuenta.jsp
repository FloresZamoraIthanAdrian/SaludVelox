<%@page import="Usuario.Usuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Cuenta | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = './Styles/Styles.css'>
        <link rel = "stylesheet" type = 'text/css' href = './Styles/Formulario.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>
        <header>
            <div class = "container logo-nav-container">
                <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-user-circle"></i>Cuenta</p>
                <div class = "espacio"></div>
                <span class="menu-icon animate__animated animate__zoomInRight">Ver Menú  <i class="fas fa-chevron-down"></i></span>
                <nav>
                    <ul class = "animate__animated animate__zoomInRight">
                        <li onclick="javascript:formulario()" id ="margenNav"><i class="far fa-smile"></i> ¡Formularios!</li>
                        <li onclick="javascript:info()"><i class="fas fa-book-open"></i> Información</li>
                        <div class="espaciado"></div>
                        <li onclick="javascript:resultado()" id = "margenNav2"><i class="fas fa-poll"></i> Resultados</li>
                        <li onclick="javascript:chat()"><i class="fas fa-comments"></i> Foro</li>
                            <%
                                HttpSession sesion = request.getSession();
                                String usuer, id;

                                if (sesion.getAttribute("user") != null) {
                                    usuer = sesion.getAttribute("user").toString();
                                    id = sesion.getAttribute("id_usuS").toString();
                                    int id_usu = Integer.parseInt(id);

                                    Usuario u = AccionesUsuario.listarDatosUser(id_usu);
                                    out.print("<a style='text-decoration: none; color: white;' href='IniciarSesion.jsp?cerrar=true'><li>Cerrar Sesion de " + u.getNom_usu() + "</li></a>");


                            %>
                    </ul>
                </nav>
            </div>
        </header>
        <section>
            <main>
                <image class="imagenHumano animate__animated animate__pulse animate__infinite" src = 'images/EscudoVelox2.png' title="Presióname para regresar al inicio del sitio web <3" alt = "No se porque no carga :c" onclick="javascript:inicio()"></image>
                <div class= "container1">

                    <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-user-circle"></i><%= u.getNom_usu()%></p>

                    <%
                        Usuario up = AccionesUsuario.listarDatosUsuario(id_usu);
                    %>

                    <p style="font-size: 22px; padding-left: 20px;">
                        Nombre: <br>
                        <%= up.getNombre()%><br><br>
                        Apellido Paterno: <br>
                        <%= up.getAppat()%><br><br>
                        Apellido Materno: <br>
                        <%= up.getApmat()%><br><br>
                    </p>
                    <form action="editarUsuario">
                        <input style="margin-top: 0px; font-size: 22px; border: none;" id="editar" 
                               value="<%= up.getCorreo()%>" type="email" name = "CorreoElectrónico" class="formulario__input" placeholder="Correo Electrónico">
                        <input style="margin-top: 0px; font-size: 22px; border: none;" 
                               value="<%= u.getNom_usu()%>"  type="text" name = "Usuario" class="formulario__input" placeholder="Nombre de Usuario">
                        <input style="margin-top: 0px; font-size: 22px;border: none;" 
                               value="<%= up.getEdad()%>" type="number" name="edad" class="formulario__input" placeholder="Edad" min="14" max="99">
                        <input style="margin-top: 0px; font-size: 22px; border: none;" 
                               value="<%= up.getSemestre()%>" type="number" name="semestre" class="formulario__input" placeholder="Semestre actual" min="1" max="6">

                        <select name="genero" class="formulario__input">
                            <option value="Maculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                            <option value="none">Prefiero no decirlo</option>
                        </select>
                    </form>
                    <button onclick="checkReadonly()" class="boton2 margen_boton">Editar datos</button>
                    <!--Clave api: AIzaSyBhUcyT-3XTOqyrImnE4KjBvL25bZWsYAQ -->
                    <a class="boton" href="Olvidar.jsp"><i class="fas fa-key"></i> Cambiar mi Contraseña</a>
                </div>
            </main>
        </section>

        <%
            } else {
                out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
            }
        %>

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

        <script src="./Scripts/Basicos.js"></script>
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