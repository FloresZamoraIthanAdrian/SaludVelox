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
                    <form action="diagBipolaridad" class="formulario">
                        <input type="hidden" name="fechaActual" id="fechaActual">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <input type="hidden" name="id_transtorno" value="8">
                        <li class="formulario_pregunta">¿Ha tenido períodos de ánimo extraordinariamente elevados que le llamen la atención a usted y sus cercanos?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta66" value="5" id = "Si47">
                            <label for="Si47">Si</label>
                            <input type="radio" name = "respuesta66" value = "1" id = "No47">
                            <label for="No47">No</label>
                        </div>
                        <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Todos somos aficionados. La vida es tan corta que no da para más. – Charles Chaplin" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos de ánimo elevado habla usted más que de costumbre y más rápidamente?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta67" value="5" id = "Si48">
                            <label for="Si48">Si</label>
                            <input type="radio" name = "respuesta67" value = "1" id = "No48">
                            <label for="No48">No</label>
                        </div>
                        <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No busques personas con tus mismos gustos, busca personas con tus mismos valores." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos de ánimo elevado el flujo de sus pensamientos es más rápido y tiene muchas ideas al mismo tiempo?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta68" value="5" id = "Si49">
                            <label for="Si49">Si</label>
                            <input type="radio" name = "respuesta68" value = "1" id = "No49">
                            <label for="No49">No</label>
                        </div>
                        <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando no sepas dónde ir, sigue el perfume de un sueño." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos tiene usted más energía física de lo habitual, anda más “acelerado” y realiza muchas más actividades que de costumbre?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta69" value="5" id = "Si50">
                            <label for="Si50">Si</label>
                            <input type="radio" name = "respuesta69" value = "1" id = "No50">
                            <label for="No50">No</label>
                        </div>
                        <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La vida es una obra teatral que no importa cuánto haya durado, sino lo bien que haya sido representada. – Séneca" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos requiere usted menos horas de sueño que lo habitual?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta70" value="5" id = "Si51">
                            <label for="Si51">Si</label>
                            <input type="radio" name = "respuesta70" value = "1" id = "No51">
                            <label for="No51">No</label>
                        </div>
                        <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Estar preparado es importante, saber esperar lo es aún más, pero aprovechar el momento adecuado es la clave de la vida. – Arthur Schnitzler" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos está usted más impaciente, no tolera mínimas provocaciones, se enoja usted más fácilmente y se pone agresivo?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta71" value="5" id = "Si52">
                            <label for="Si52">Si</label>
                            <input type="radio" name = "respuesta71" value = "1" id = "No52">
                            <label for="No52">No</label>
                        </div>
                        <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="¡Qué pequeñas son mis manos…! En relación con todo lo que la vida ha querido darme. – Ramón J. Sénder" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos aumenta considerablemente su apetito sexual, se siente más atractivo y conquistador y puede llegar a tener varias parejas?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta72" value="5" id = "Si53">
                            <label for="Si53">Si</label>
                            <input type="radio" name = "respuesta72" value = "1" id = "No53">
                            <label for="No53">No</label>
                        </div>
                        <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El verdadero viaje del descubrimiento no consiste en ver nuevos paisajes, sino en tener nuevos ojos. – Marcel Proust." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos se siente usted “un triunfador” o se embarca en proyectos y negocios estando seguro de su éxito?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta73" value="5" id = "Si54">
                            <label for="Si54">Si</label>
                            <input type="radio" name = "respuesta73" value = "1" id = "No54">
                            <label for="No54">No</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Viajar es descubrir que todo el mundo esta equivocado sobre otros países. -Aldous Huxley." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos aumenta considerablemente su actividad social y se siente más “desinhibido”?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta74" value="5" id = "Si55">
                            <label for="Si55">Si</label>
                            <input type="radio" name = "respuesta74" value = "1" id = "No55">
                            <label for="No55">No</label>
                        </div>
                        <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los turistas no saben donde han estado, los viajeros no saben donde van. – Paul Theroux." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Durante estos períodos ha tenido creencias marcadamente irreales, por ejemplo, cree poseer habilidades poder o conocimientos extraordinarios?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta75" value="5" id = "Si56">
                            <label for="Si56">Si</label>
                            <input type="radio" name = "respuesta75" value = "1" id = "No56">
                            <label for="No56">No</label>
                        </div>
                        <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El impulso a viajar es uno de los signos esperanzadores de la vida. – Agnes Repplier." alt = "No se porque no carga :c"></image>
                        <!--___________________________________________________________________Transtorno Obsecivo Compulsivo_____________________________________________________________________-->
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