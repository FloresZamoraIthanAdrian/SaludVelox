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
                <nav class="nav">
                    <ul class = "animate__animated animate__zoomInRight">
                        <li onclick="javascript:formulario()" id ="margenNav"><i class="far fa-smile"></i> ¡Formularios!</li>
                        <li onclick="javascript:info()"><i class="fas fa-book-open"></i> Estadísticas</li>
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
                        Genero: <br><br>
                        <%= up.getGenero()%>
                    </p>
                    <form action="editarUsuario" method="post" id="editarDatos">

                        <input type="hidden" readonly value="<%= id_usu%>" name="id_usuForm">

                        <input style="margin-top: 0px; font-size: 22px; border: none; border-bottom: 2px solid #9f0000;" 
                               value="<%= up.getCorreo()%>" type="email" 
                               name = "CorreoElectrónico" class="formulario__input" placeholder="Correo Electrónico">

                        <input style="margin-top: 0px; font-size: 22px; border: none; border-bottom: 2px solid #9f0000;" 
                               value="<%= u.getNom_usu()%>"  type="text" name = "Usuario" 
                               class="formulario__input" placeholder="Nombre de Usuario">

                        <input style="margin-top: 0px; font-size: 22px;border: none; border-bottom: 2px solid #9f0000;" 
                               value="<%= up.getEdad()%>" type="number" name="edad" class="formulario__input" 
                               placeholder="Edad" min="14" max="99">

                        <input style="margin-top: 0px; font-size: 22px; border: none; border-bottom: 2px solid #9f0000;" 
                               value="<%= up.getSemestre()%>" type="number" name="semestre" class="formulario__input" 
                               placeholder="Semestre actual" min="1" max="6">

                        <select style="margin-top: 0px; font-size: 22px; border: none; border-bottom: 2px solid #9f0000;" 
                                name="genero" class="formulario__input">
                            <option value="Maculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                            <option value="Prefiero no decirlo">Prefiero no decirlo</option>
                        </select>

                        <input style="margin-top: 0px; font-size: 22px; border: none; border-bottom: 2px solid #9f0000;" 
                               type="password" placeholder="Para editar los datos debes resgistrar la contraseña"
                               name="passwd" class="formulario__input">

                        <input type="submit" class="boton" value="Editar Datos">

                    </form>
                    <!--Clave api: AIzaSyBhUcyT-3XTOqyrImnE4KjBvL25bZWsYAQ -->
                    <a class="boton" class="olvidar" href="Olvidar.jsp"><i class="fas fa-key"></i> Cambiar mi Contraseña</a>
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
                </ul>
            </div>
        </footer>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

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
                        location.href = "https://chat-velox.herokuapp.com/"
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
            $(document).ready(function () {
                $("#editarDatos").validate({
                    rules: {
                        edad: {
                            required: true,
                            number: true,
                            min: 14,
                            max: 99
                        },
                        semestre: {
                            required: true,
                            numbrer: true,
                            min: 1,
                            max: 6,
                            minlength: 1
                        },
                        CorreoElectrónico: {
                            required: true,
                            email: true
                        },
                        Usuario: {
                            required: true,
                            minlength: 3,
                            maxlength: 30
                        },
                        passwd: {
                            required: true,
                            minlength: 3,
                            maxlength: 20
                        }
                    },
                    messages: {
                        edad: {
                            required: "Por favor ingresa la edad",
                            number: "Ingresa solo números por favor",
                            min: "Debes ser mayor de 14 años",
                            max: "Debes ser menor de 99 años"
                        },
                        semestre: {
                            required: "Por favor ingresa el semestre",
                            number: "Ingresa solo números por favor",
                            min: "Debes ser mayor a 1",
                            max: "Debes ser menor a 6",
                            minlength: "Los semestres solo son de un número"
                        },
                        CorreoElectrónico: {
                            required: "Por favor ingresa el correo",
                            email: "Ingresa un correo con formato valido"
                        },
                        Usuario: {
                            required: "Por favor ingresa el usuario",
                            minlength: "El usuario debe tener más de 3 caracteres ",
                            maxlength: "El usuario debe tener menos de 30 caracteres"
                        },
                        passwd: {
                            required: "Para editar datos se requiere la contraseña",
                            minlength: "La contraseña debe tener más de 3 caracteres ",
                            maxlength: "La contraseña debe tener menos de 10 caracteres"
                        }
                    }
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $("input").on('paste', function (e) {
                    e.preventDefault();
                    alert('Esta acción está prohibida');
                });

                $("input").on('copy', function (e) {
                    e.preventDefault();
                    alert('Esta acción está prohibida');
                });
            });
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