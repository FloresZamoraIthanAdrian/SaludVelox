<%@page import="Control.AccionesUsuario"%>
<%@page import="Usuario.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Formulario | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = 'Styles/Styles.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    </head>
    <body>
        <header>

            <div class = "container logo-nav-container">
                <p class = "logo textoForm animate__animated animate__zoomInLeft" id = "textoForm"><i class="far fa-smile"></i> Formulario</p>
                <div class = "espacio"></div>
                <span class="menu-icon animate__animated animate__zoomInRight">Ver Menú  <i class="fas fa-chevron-down"></i></span>
                <nav class="nav">
                    <ul class = "animate__animated animate__zoomInRight">
                        <li onclick="javascript:resultado()"><i class="fas fa-poll"></i> Resultados</li>
                        <div class="espaciado"></div>
                        <li onclick="javascript:info()"><i class="fas fa-book-open"></i> Estadísticas</li>
                        <li onclick="javascript:cuenta()" id ="margenNav2"><i class="fas fa-user-circle"></i> Cuenta</li>
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
            <main class="margen_superior">

                <form action="diagAnsiedad" class="formulario">
                    <input type="hidden" value="<%= id_usu %>" name="id_usu">
                    <ol class= "formulario_cuadro">
                        <!--___________________________________________________________________Depresión_____________________________________________________________________-->
                        <li class="formulario_pregunta">¿Durante las últimas semanas, ha padecido de un sentimiento de tristeza, depresión o pérdida de energía durante la mayor parte del tiempo?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta9" value="5" id = "Si">
                        <label for="Si">Si</label>
                        <input type="radio" name = "respuesta9" value="1" id = "No">
                        <label for="No">No</label>
                    </div>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La lógica te llevará desde A hasta B. La imaginación te llevará a cualquier parte. – Albert Einstein." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">En las 2 últimas semanas ¿ha experimentado ataques de ansiedad, cuando de repente tenía miedo, estaba nervioso/a o bastante intranquilo/a? </li>
                    <div class="radio">
                        <input type="radio" name = "respuesta10" value="5" id = "Si1">
                        <label for="Si1">Si</label>
                        <input type="radio" name = "respuesta10" value="1" id = "No1">
                        <label for="No1">No</label>
                    </div>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los dos días más importantes de tu vida son el dí­a en que naciste y el día en el que encontraste el por qué. – Mark Twain." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las últimas semanas ¿ha experimentado fuertes temores irracionales, en situaciones sociales tal como hablando con otros, haciendo cosas delante de otros o siendo el centro de atención?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta11" value="5" id = "Si2">
                        <label for="Si2">Si</label>
                        <input type="radio" name = "respuesta11" value="1" id = "No2">
                        <label for="No2">No</label>
                    </div>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Debemos dejar ir la vida que hemos planeado, para así­ aceptar las que nos está esperando. – Joseph Campbell" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las dos últimas semanas ¿ha estado molestado por fuertes temores irracionales de usar el trasporte público, estar en una tienda, haciendo cola o en sitios públicos?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta12" value="5" id = "Si3">
                        <label for="Si3">Si</label>
                        <input type="radio" name = "respuesta12" value="1" id = "No3">
                        <label for="No3">No</label>
                    </div>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="En 20 años desde hoy estarás más decepcionado de las cosas que no hiciste que de las que hiciste. – Mark Twain." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">En los 2 últimos meses ¿ha experimentado acontecimiento inusual o situación terrible o inquietante o ha padecido de las secuelas de tal acontecimiento?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta13" value="5" id = "Si4">
                        <label for="Si4">Si</label>
                        <input type="radio" name = "respuesta13" value="1" id = "No4">
                        <label for="No4">No</label>
                    </div>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La felicidad es una forma de viajar, no un destino. – Roy. M. Goodman" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las últimas 4 semanas ¿ha estado molesto con un sentimiento de estar preocupado/a, tenso/a, ansioso/a la mayor parte del tiempo?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta14" value="5" id = "Si5">
                        <label for="Si5">Si</label>
                        <input type="radio" name = "respuesta14" value="1" id = "No5">
                        <label for="No5">No</label>
                    </div>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No soy la misma habiendo visto la luna o el otro lado del mundo. – Mary Anne Radmacher." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Estuvo ansioso/a, preocupado/a por cosas de su vida diaria, tal como tareas de casa, el trabajo, la familia, el/la compañero/a, los niños?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta15" value="5" id = "Si6">
                        <label for="Si6">Si</label>
                        <input type="radio" name = "respuesta15" value="1" id = "No6">
                        <label for="No6">No</label>
                    </div>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Ningún hombre tiene una memoria lo suficientemente buena para ser un mentiroso exitoso. – Abraham Lincoln" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Estuvo preocupándose de su salud física o enfermedad somática?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta16" value="5" id = "Si7">
                        <label for="Si7">Si</label>
                        <input type="radio" name = "respuesta16" value="1" id = "No7">
                        <label for="No7">No</label>
                    </div>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Todos nuestros sueños se pueden hacer realidad si tenemos el coraje de perseguirlos. – Walt Disney." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Estuvo preocupado por otras cosas?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta17" value="5" id = "Si8">
                        <label for="Si8">Si</label>
                        <input type="radio" name = "respuesta17" value="1" id = "No8">
                        <label for="No8">No</label>
                    </div>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La valentía no siempre ruge. A veces, es la vocecita al final del día que dice: mañana lo volveré a intentar.  – Mary Anne Radmacher" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Se preocupó mucho más de lo que otra gente haría en su situación?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta18" value="5" id = "Si9">
                        <label for="Si9">Si</label>
                        <input type="radio" name = "respuesta18" value="1" id = "No9">
                        <label for="No9">No</label>
                    </div>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viaje se mide mejor en amigos que en millas. –  Tim Cahill" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Cuando estuvo preocupado o ansioso ¿sintió frecuentemente intranquilidad, temor o “los pelos de punta”?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta19" value="5" id = "Si10">
                        <label for="Si10">Si</label>
                        <input type="radio" name = "respuesta19" value="1" id = "No10">
                        <label for="No10">No</label>
                    </div>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si piensas que la aventura es peligrosa, prueba la rutina. Es mortal.- Pablo Coelho" alt = "No se porque no carga :c"></image>
                    </ol>
                    <input type="submit" class="boton2 margen_boton" value="Terminar Fomulario">
                </form>

            </main>
        </section>

        <%            } else {
                out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
            }
        %>

        <script src="./Scripts/FormularioEnfermedades.js"></script>            

        <footer>
            <h3>Redes Sociales</h3>
            <ul>
                <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"> Facebook </i></li>
                <li onclick="javascript:instagram()"><i class="fab fa-instagram"> Instagram </i></li>
                <li onclick="javascript:twitter()"><i class="fab fa-twitter">  Twitter </i></li>
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