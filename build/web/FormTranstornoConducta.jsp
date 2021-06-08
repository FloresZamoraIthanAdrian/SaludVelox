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
                <ol class="formulario_cuadro">
                    <form action="diagTConducta" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">A menudo pierde la calma</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta30" value="5" id = "Si11">
                        <label for="Si11">Si</label>
                        <input type="radio" name = "respuesta30" value="1" id = "No11">
                        <label for="No11">No</label>
                    </div>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nadie se da cuenta de lo hermoso que es viajar hasta que vuelve a casa y descansa sobre su almohada vieja y conocida. – Lin Yutang" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo está susceptible o se molesta con facilidad</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta31" value="5" id = "Si12">
                        <label for="Si12">Si</label>
                        <input type="radio" name = "respuesta31" value="1" id = "No12">
                        <label for="No12">No</label>
                    </div>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No esperes. El momento perfecto nunca llegará. – Napoleon Hill." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo está enfadado y resentido</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta32" value="5" id = "Si13">
                        <label for="Si13">Si</label>
                        <input type="radio" name = "respuesta32" value="1" id = "No13">
                        <label for="No13">No</label>
                    </div>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El mundo es un libro, y aquellos que no viajan leen solo una página. -San Agustín." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo acosa, amenaza o intimada a otros</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta33" value="5" id = "Si14">
                        <label for="Si14">Si</label>
                        <input type="radio" name = "respuesta33" value="1" id = "No14">
                        <label for="No14">No</label>
                    </div>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un buen viajero no tiene planes fijos ni tampoco la intención de llegar. – Lao Tzu" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo inicia peleas</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta34" value="5" id = "Si15">
                        <label for="Si15">Si</label>
                        <input type="radio" name = "respuesta34" value="1" id = "No15">
                        <label for="No15">No</label>
                    </div>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si rechazas la comida, ignoras la vestimenta, temes la religión y evitas a las personas, quizás sea mejor que te quedes en casa. – James Michener" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Discute a menudo con la autoridad o con los adultos, en el caso de los niños y los adolescentes</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta35" value="5" id = "Si16">
                        <label for="Si16">Si</label>
                        <input type="radio" name = "respuesta35" value="1" id = "No16">
                        <label for="No16">No</label>
                    </div>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viaje es como el matrimonio. La manera certera de estar errados es pensar que tenemos el control. – John Steinbeck" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Ha usado un arma que puede provocar serios daños a terceros (p. ej., un bastón, un ladrillo, una botella rota, un cuchillo, un arma)</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta36" value="5" id = "Si17">
                        <label for="Si17">Si</label>
                        <input type="radio" name = "respuesta36" value="1" id = "No17">
                        <label for="No17">No</label>
                    </div>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El éxito no se mide en el dinero, sino en la diferencia que marcas en las personas. – Michelle Obama" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Ha ejercido la crueldad física contra personas</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta37" value="5" id = "Si18">
                        <label for="Si18">Si</label>
                        <input type="radio" name = "respuesta37" value="1" id = "No18">
                        <label for="No18">No</label>
                    </div>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La gente que esta lo suficientemente loca para pensar que pueden cambiar el mundo, son aquellas que lo consiguen. – Rob Siltanen." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Ha ejercido la crueldad física contra animales</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta38" value="5" id = "Si19">
                        <label for="Si19">Si</label>
                        <input type="radio" name = "respuesta38" value="1" id = "No19">
                        <label for="No19">No</label>
                    </div>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No dejes que la vida te desanime; todo el que ha llegado lejos tuvo que comenzar desde nada. – Richard. L. Evans." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo desafía activamente o rechaza satisfacer la petición por parte de figuras de autoridad o normas</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta39" value="5" id = "Si20">
                        <label for="Si20">Si</label>
                        <input type="radio" name = "respuesta39" value="1" id = "No20">
                        <label for="No20">No</label>
                    </div>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Y aquí esta mi secreto, un secreto muy sencillo: solo con el corazón se puede ver bien; lo esencial es invisible a los ojos. – Antoine de Saint-Exupéry." alt = "No se porque no carga :c"></image>
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