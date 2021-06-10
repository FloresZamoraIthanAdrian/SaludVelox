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
                    
                    <script>window.onload = function () {
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
                    <form action="diagAutismo" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <input type="hidden" name="fechaActual" id="fechaActual">
                        <input type="hidden" name="id_transtorno" value="7">
                        <li class="formulario_pregunta">¿Es capaz de hablar usando frases u oraciones cortas?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta57" value = "1" id = "Si38">
                            <label for="Si38">Si</label>
                            <input type="radio" name = "respuesta57" value="5" id = "No38">
                            <label for="No38">No</label>
                        </div>
                        <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un año a partir de ahora desearás haber comenzado hoy. – Karen Lamb." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Puede tener una conversación con él o ella, en la que participen ambos y se vayan turnando o vayan construyendo sobre lo ya dicho?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta58" value = "1" id = "Si39">
                            <label for="Si39">Si</label>
                            <input type="radio" name = "respuesta58" value="5" id = "No39">
                            <label for="No39">No</label>
                        </div>
                        <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cada strike me acerca más al siguiente home run. – Babe Ruth" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Ha usado alguna vez frases raras o ha dicho la misma cosa una y otra vez y casi exactamente de la misma manera?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta59" value = "5" id = "Si40">
                            <label for="Si40">Si</label>
                            <input type="radio" name = "respuesta59" value="1" id = "No40">
                            <label for="No40">No</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No viajamos para escaparnos de la vida, sino para que la vida no se nos escape." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Ha hecho alguna vez preguntas o informaciones socialmente inconvenientes, tales como preguntas indiscretas o comentarios personales en momentos inoportunos?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta60" value = "5" id = "Si41">
                            <label for="Si41">Si</label>
                            <input type="radio" name = "respuesta60" value="1" id = "No41">
                            <label for="No41">No</label>
                        </div>
                        <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Sólo le falta el tiempo a quien no sabe aprovecharlo. – Jovellanos" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Ha confundido alguna vez los pronombres diciendo (por ejemplo)”tú” o “ella” en lugar de yo?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta61" value = "5" id = "Si42">
                            <label for="Si42">Si</label>
                            <input type="radio" name = "respuesta61" value="1" id = "No42">
                            <label for="No42">No</label>
                        </div>
                        <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nuestra mayor gloria no está en no caer nunca, sino en levantarnos cada vez que caemos. – Confucio" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Ha mostrado alguna vez un interés especial por algún tema (ej. trenes, dinosaurios, etc.) que, aun siendo normal a su edad y en su ambiente, pudiese parecer fuera de lo normal por su intensidad?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta62" value = "5" id = "Si43">
                            <label for="Si43">Si</label>
                            <input type="radio" name = "respuesta62" value="1" id = "No43">
                            <label for="No43">No</label>
                        </div>
                        <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No te preocupes tanto por las arrugas de tu cara y atiende a las de tu alma… esas sí matan." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Cuando tenía entre 4 y 5 años, ¿imitaba alguna vez espontáneamente a otras personas o lo que hacían (como pasar la aspiradora, cocinar o arreglar cosas)?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta63" value = "5" id = "Si44">
                            <label for="Si44">Si</label>
                            <input type="radio" name = "respuesta63" value="1" id = "No44">
                            <label for="No44">No</label>
                        </div>
                        <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El verdadero viajero encuentra que el aburrimiento es más bien agradable que molesto. Es el símbolo de su libertad –su excesiva libertad. – Aldous Huxley" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Tiene un amigo íntimo o alguna amistad en particular?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta64" value = "1" id = "Si45">
                            <label for="Si45">Si</label>
                            <input type="radio" name = "respuesta64" value="5" id = "No45">
                            <label for="No45">No</label>
                        </div>
                        <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="odos somos viajeros en este mundo y lo mejor que podemos encontrar es un amigo honesto. – Robert Louis Stevenson." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Ha tenido alguna vez objetos que necesitaba llevar consigo, aparte de un muñeco o una manta?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta65" value = "5" id = "Si46">
                            <label for="Si46">Si</label>
                            <input type="radio" name = "respuesta65" value="1" id = "No46">
                            <label for="No46">No</label>
                        </div>
                        <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Viajar es vivir. – Hans Christian Andersen." alt = "No se porque no carga :c"></image>
                        <!--___________________________________________________________________Bipolaridad_____________________________________________________________________-->
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