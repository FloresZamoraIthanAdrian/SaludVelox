<%@page import="Control.AccionesUsuario"%>
<%@page import="Usuario.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Foro | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Mukta+Vaani:wght@300&display=swap" rel="stylesheet">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="./Scripts/Basicos.js"></script>
        <script src="./Scripts/ValidacionTeclado.js"></script> 
        <link rel = "stylesheet" type = 'text/css' href = './Styles/Styles.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>
        <header>
            <div class = "container logo-nav-container">
                <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-comments"></i> Foro</p>
                <div class = "espacio"></div>
                <span class="menu-icon animate__animated animate__zoomInRight">Ver Men�  <i class="fas fa-chevron-down"></i></span>
                <nav>
                    <ul class="animate__animated animate__zoomInRight">
                        <li onclick="javascript:formulario()" id = "margenNav"><i class="far fa-smile"></i> �Formularios!</li>
                        <li onclick="javascript:resultado()"><i class="fas fa-poll"></i> Resultados</li>
                        <div class="espaciado"></div>
                        <li onclick="javascript:cuenta()" id = "margenNav2"><i class="fas fa-user-circle"></i> Cuenta</li>
                        <li onclick="javascript:info()"><i class="fas fa-book-open"></i> Informaci�n</li>
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
                <image class="imagenHumano animate__animated animate__pulse animate__infinite" src = 'images/EscudoVelox2.png' title="Presi�name para regresar al inicio del sitio web <3" alt = "No se porque no carga :c" onclick="javascript:inicio()"></image>
                <div class= "chat_contenedor">
                    <div class="chat_caja">
                        <div class="chat">
                            <div class="chat_datos">
                                <span style="color: #1c62c4;">Velox</span>
                                <span style="color: #848484;">Holi :3</span>
                                <span style="float: right;">10:04 am</span>
                            </div>
                        </div>
                    </div>
                    <form method = "POST" action= "Chat.html">
                        <textarea name="Mensaje" placeholder="Ingresa tu Mensaje"></textarea>
                        <div class="espacio1"></div>
                        <input type="submit" onkeypress="return validarAlfaNumericos(event)" name = "Enviar" value = "Enviar" class="input__submit">
                    </form>
                </div>
            </main>

            <%                } else {
                    out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
                }
            %>

        </section>
        <footer>
            <h3>Redes Sociales</h3>
            <ul>
                <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"></i> Facebook</li>
                <li onclick="javascript:instagram()"><i class="fab fa-instagram"></i> Instagram</li>
                <li onclick="javascript:twitter()"><i class="fab fa-twitter"></i> Twitter</li>
            </ul>
            <h3>Correo Electr�nico</h3>
            <ul>
                <li>velox.software.09@gmail.com</li>
            </ul>
            <h3>P�gina Web</h3>
            <ul>
                <li onclick="javascript:velox()">VeloxSoftware.com</a></li>
            </ul>
            <h3>Integrantes</h3>
            <div class="nombres">
                <ul onclick="javascript:velox()">
                    <li>Casta�eda Rodr�guez<br>Rafael Gil</li>
                    <li>Coronado Segundo<br>Juan Yael</li>
                    <li>Flores Zamora<br>Ithan Adrian</li>
                    <li>Gallegos Gonz�lez<br>Gian Carlo</li>
                    <li>P�rez L�pez<br>Jes�s Eduardo</li>
                    <li>Salazar Valdez<br>�ngel Yahir</li>
                </ul>
            </div>
        </footer>
    </body>
</html>
