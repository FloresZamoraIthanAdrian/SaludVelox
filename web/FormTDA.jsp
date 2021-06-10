<%@page import="Control.AccionesUsuario"%>
<%@page import="Usuario.Usuario"%>
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
                        <li onclick="javascript:chat()"><i class="fas fa-comments"></i> Chat</li>

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
        <script>
            window.onload = function () {
                var fecha = new Date();
                var mes = fecha.getMonth() + 1;
                var dia = fecha.getDate();
                var ano = fecha.getFullYear();
                if (dia < 10)
                    dia = '0' + dia;
                if (mes < 10)
                    mes = '0' + mes
                document.getElementById('fechaActual').value = ano + "-" + mes + "-" + dia;
            }</script>
        <section>
            <main class="margen_superior">
                <ol class="formulario_cuadro">
                    
                    <form action="diagTDA" class="formulario">
                        <input type="hidden" name="fechaActual" id="fechaActual">
                        <input type="hidden" name="id_transtorno" value="5">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">¿A menudo no presta atención suficiente a los detalles o incurre en errores por descuido en las tareas escolares, en el trabajo o en otras actividades?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta40" value="5" id = "Si21">
                            <label for="Si21">Si</label>
                            <input type="radio" name = "respuesta40" value="1" id = "No21">
                            <label for="No21">No</label>
                        </div>
                        <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No desees que fuese más sencillo, desea que fueses mejor. – Jim Rohn." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo tiene dificultades para mantener la atención en tareas o en actividades lúdicas?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta41" value="5" id = "Si22">
                            <label for="Si22">Si</label>
                            <input type="radio" name = "respuesta41" value="1" id = "No22">
                            <label for="No22">No</label>
                        </div>
                        <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El pesimista ve dificultad en toda oportunidad. El optimista ve oportunidad en toda dificultad. – Winston Churchill." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo parece no escuchar cuando se le habla directamente?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta42" value="5" id = "Si23">
                            <label for="Si23">Si</label>
                            <input type="radio" name = "respuesta42" value="1" id = "No23">
                            <label for="No23">No</label>
                        </div>
                        <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Para evitar la crítica, no digas nada, no hagas nada, no seas nada. – Fred Shero." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo no sigue instrucciones y no finaliza tareas escolares, encargo u obligaciones en el centro de trabajo?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta43" value="5" id = "Si24">
                            <label for="Si24">Si</label>
                            <input type="radio" name = "respuesta43" value="1" id = "No24">
                            <label for="No24">No</label>
                        </div>
                        <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="A menudo el cambio de uno mismo es más necesario que el cambio de escenario. – Arthur Christopher Benson." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo tiene dificultad para organizar tareas y actividades?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta44" value="5" id = "Si25">
                            <label for="Si25">Si</label>
                            <input type="radio" name = "respuesta44" value="1" id = "No25">
                            <label for="No25">No</label>
                        </div>
                        <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No importa lo lento que vayas mientras que no pares. – Confucio." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo evita, le disgusta o es renuente en cuanto a dedicarse a tareas que requieren un esfuerzo mental sostenido?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta45" value="5" id = "Si26">
                            <label for="Si26">Si</label>
                            <input type="radio" name = "respuesta45" value="1" id = "No26">
                            <label for="No26">No</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si haces lo que siempre has hecho, llegarás donde siempre has llegado. – Tony Robbins." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo extravía objetos necesarios para tareas o actividades?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta46" value="5" id = "Si27">
                            <label for="Si27">Si</label>
                            <input type="radio" name = "respuesta46" value="1" id = "No27">
                            <label for="No27">No</label>
                        </div>
                        <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nunca en la vida aprendí algo de alguien que estuviese de acuerdo conmigo. – Dudley Field Malone." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo se distrae fácilmente por estímulos irrelevantes?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta47" value="5" id = "Si28">
                            <label for="Si28">Si</label>
                            <input type="radio" name = "respuesta47" value="1" id = "No28">
                            <label for="No28">No</label>
                        </div>
                        <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No podemos ayudar a todos, pero todo el mundo puede ayudar a alguien. – Ronald Reagan." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A menudo olvida realizar actividades cotidianas?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta48" value="5" id = "Si29">
                            <label for="Si29">Si</label>
                            <input type="radio" name = "respuesta48" value="1" id = "No29">
                            <label for="No29">No</label>
                        </div>
                        <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Odié cada minuto de entrenamiento, pero dije, “no te rindas, sufre ahora y vive el resto de tu vida como un campeón”. – Mohamed Ali." alt = "No se porque no carga :c"></image>
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