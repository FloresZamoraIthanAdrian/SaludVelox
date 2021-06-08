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
                    <form action="diagTConductaAlimentaria" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">¿Cuánto te preocupa tu peso y tu figura corporal, en comparación con otras personas de tu edad?</li>
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta86" value="5" id = "MuchoM">
                            <label for="MuchoM">Me preocupa mucho menos que a los demás</label>
                            <input type="radio" name = "respuesta86" value="4" id = "PocoM">
                            <label for="PocoM">Me preocupa un poco menos que a los demás</label>
                            <input type="radio" name = "respuesta86" value="3" id = "Igual">
                            <label for="Igual">Me preocupa igual que a los demás</label>
                            <input type="radio" name = "respuesta86" value="2" id = "PocoS">
                            <label for="PocoS">Me preocupa un poco más que a los demás</label>
                            <input type="radio" name = "respuesta86" value="1" id = "MuchoS">
                            <label for="MuchoS">Me preocupa mucho más que a los demás.</label>
                        </div>
                        <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Tomas tu vida en tus propias manos ¿y qué ocurre? Algo terrible, no poder culpar a nadie. – Erica Jong." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Cuánto te preocupa ganar 2 kg?</li>
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta87" value="5" id = "MuchoM1">
                            <label for="MuchoM1">No me asusta nada ganarlos</label>
                            <input type="radio" name = "respuesta87" value="4" id = "PocoM1">
                            <label for="PocoM1">Me asusta un poco ganarlos</label>
                            <input type="radio" name = "respuesta87" value="3" id = "Igual1">
                            <label for="Igual1">Me asusta bastante ganarlos</label>
                            <input type="radio" name = "respuesta87" value="2" id = "PocoS1">
                            <label for="PocoS1">Me asusta mucho ganarlo</label>
                            <input type="radio" name = "respuesta87" value="1" id = "MuchoS1">
                            <label for="MuchoS1">Estoy aterrorizado/a de ganarlos</label>
                        </div>
                        <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Una persona que nunca cometió un error nunca intentó nada nuevo. – Albert Einstein" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Cuándo fue la última vez que hiciste una dieta?</li>
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta88" value="5" id = "MuchoM2">
                            <label for="MuchoM2">Nunca he estado a dieta</label>
                            <input type="radio" name = "respuesta88" value="4" id = "PocoM2">
                            <label for="PocoM2">Estuve a dieta hace menos de un mes</label>
                            <input type="radio" name = "respuesta88" value="3" id = "Igual2">
                            <label for="Igual2">Estuve a dieta hace 3 meses</label>
                            <input type="radio" name = "respuesta88" value="2" id = "PocoS2">
                            <label for="PocoS2">Estuve a dieta hace un año</label>
                            <input type="radio" name = "respuesta88" value="1" id = "MuchoS2">
                            <label for="MuchoS2">Estoy en dieta en este momento</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si estas tratando siempre de ser normal, nunca sabrás lo increíble que puedes llegar a ser. – Desconocido." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">En comparación a otros aspectos de tu vida ¿Cuánta importancia le das a tu peso?</li>
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta89" value="1" id = "PocoM3">
                            <label for="PocoM3">Mi peso es ligeramente más importante para mí que otros aspectos de mi vida</label>
                            <input type="radio" name = "respuesta89" value="3" id = "Igual3">
                            <label for="Igual3">Mi peso no es importante en comparación a otros aspectos de mi vida</label>
                            <input type="radio" name = "respuesta89" value="5" id = "MuchoS3">
                            <label for="MuchoS3">Mi peso es lo más importante en mi vida.</label>
                        </div>
                        <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Dos caminos terminaban en un bosque, yo tomé el menos transitado, y eso ha marcado toda la diferencia. – Robert Frost." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Sueles sentirte “gordo/a”?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta90" value="5" id = "Siempre19">
                            <label for="Siempre19">Siempre</label>
                            <input type="radio" name = "respuesta90" value="4" id = "Casi_Siempre19">
                            <label for="Casi_Siempre19">Casi Siempre</label>
                            <input type="radio" name = "respuesta90" value="3" id = "A_Veces19">
                            <label for="A_Veces19">A Veces</label>
                            <input type="radio" name = "respuesta90" value="2" id = "Rara_Vez19">
                            <label for="Rara_Vez19">Rara Vez</label>
                            <input type="radio" name = "respuesta90" value="1" id = "Nunca19">
                            <label for="Nunca19">Nunca</label>
                        </div>
                        <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Lo único que tenemos que temer es al miedo mismo. – Franklin D. Roosevelt." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">En los últimos tres meses, ¿cuántas veces has sentido una pérdida de control y has comido una gran cantidad de comida en poco tiempo, mucho más de lo que comería otra persona en las mismas circunstancias?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta91" value="5" id = "Siempre20">
                            <label for="Siempre20">Siempre</label>
                            <input type="radio" name = "respuesta91" value="4" id = "Casi_Siempre20">
                            <label for="Casi_Siempre20">Casi Siempre</label>
                            <input type="radio" name = "respuesta91" value="3" id = "A_Veces20">
                            <label for="A_Veces20">A Veces</label>
                            <input type="radio" name = "respuesta91" value="2" id = "Rara_Vez20">
                            <label for="Rara_Vez20">Rara Vez</label>
                            <input type="radio" name = "respuesta91" value="1" id = "Nunca20">
                            <label for="Nunca20">Nunca</label>
                        </div>
                        <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No hay atajos a cualquier lugar que merezca la pena ir. – Beverly Sills." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante esos episodios, ¿has comido mucho más rápido de lo normal?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta92" value="5" id = "Si67">
                            <label for="Si67">Si</label>
                            <input type="radio" name = "respuesta92" value="1" id = "No67">
                            <label for="No67">No</label>
                        </div>
                        <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si te ofrecen un asiento en un cohete no preguntes qué asiento. Solo súbete. – Sheryl Sandberg." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante esos episodios, ¿has comido hasta sentirte muy incómodo/a y lleno/a?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta93" value="5" id = "Si68">
                            <label for="Si68">Si</label>
                            <input type="radio" name = "respuesta93" value="1" id = "No68">
                            <label for="No68">No</label>
                        </div>
                        <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Muchos de nosotros no estamos viviendo nuestros sueños porque tememos vivir nuestros miedos. – Les Brown." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante esos episodios, ¿has comido grandes cantidades de comida a pesar de no tener hambre?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta94" value="5" id = "Si69">
                            <label for="Si69">Si</label>
                            <input type="radio" name = "respuesta94" value="1" id = "No69">
                            <label for="No69">No</label>
                        </div>
                        <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los turistas no saben dónde han estado, los viajeros no saben hacia dónde están yendo. – Paul Theroux" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Después de esos episodios, ¿te sientes disgustado/a, deprimido/a y muy culpable?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta95" value="5" id = "Si70">
                            <label for="Si70">Si</label>
                            <input type="radio" name = "respuesta95" value="1" id = "No70">
                            <label for="No70">No</label>
                        </div>
                        <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Usualmente lo que más tememos es lo que más necesitamos hacer. – Tim Ferriss." alt = "No se porque no carga :c"></image>
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