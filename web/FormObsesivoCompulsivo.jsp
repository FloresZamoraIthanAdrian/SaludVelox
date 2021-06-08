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
                    <form action="diagObsesivo" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">¿Siente usted miedo de llegar a ser responsable de que le pase algo terrible a otras personas?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta76" value="5" id = "Si57">
                        <label for="Si57">Si</label>
                        <input type="radio" name = "respuesta76" value="1" id = "No57">
                        <label for="No57">No</label>
                    </div>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El objetivo de viajar no es sólo conocer tierras extrañas, sino que en última instancia se pueda volver y ver al propio país con extrañamiento. – G. K. Chesterton" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Aparecen regularmente imágenes violentas o terroríficas en su mente contra su voluntad, produciéndole angustia?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta77" value="5" id = "Si58">
                        <label for="Si58">Si</label>
                        <input type="radio" name = "respuesta77" value="1" id = "No58">
                        <label for="No58">No</label>
                    </div>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando viajas, recuerda que los países extranjeros no están diseñados para que te sientas cómodo. Están diseñados para que su propia gente se sienta cómoda. – Clifton Fadiman" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Aparecen regularmente imágenes obscenas o blasfemas en su mente contra su voluntad, produciéndole angustia?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta78" value="5" id = "Si59">
                        <label for="Si59">Si</label>
                        <input type="radio" name = "respuesta78" value="1" id = "No59">
                        <label for="No59">No</label>
                    </div>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los soñadores son los salvadores del mundo. – James Allen." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Presenta usted frecuentemente ideas de estar “contaminado”, “infectado” o sucio?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta79" value="5" id = "Si60">
                        <label for="Si60">Si</label>
                        <input type="radio" name = "respuesta79" value="1" id = "No60">
                        <label for="No60">No</label>
                    </div>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nunca dejes que tus recuerdos sean más grandes que tus sueños. – Doug Ivester." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Aparecen frecuentemente en su mente otras ideas, imágenes o impulsos intrusos que le provocan angustia?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta80" value="5" id = "Si61">
                        <label for="Si61">Si</label>
                        <input type="radio" name = "respuesta80" value="1" id = "No61">
                        <label for="No61">No</label>
                    </div>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Haz de cada día tu pieza maestra. – John Wooden." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Está usted constantemente preocupado por mantener el orden, la simetría o exactitud, aunque a veces no se justifique?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta81" value="5" id = "Si62">
                        <label for="Si62">Si</label>
                        <input type="radio" name = "respuesta81" value="1" id = "No62">
                        <label for="No62">No</label>
                    </div>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Escribe algo que merezca la pena leer o haz algo que merezca la pena escribir. – Benjamin Franklin." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Realiza usted diariamente un lavado de manos excesivo o siguiendo un ritual determinado?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta82" value="5" id = "Si63">
                        <label for="Si63">Si</label>
                        <input type="radio" name = "respuesta82" value="1" id = "No63">
                        <label for="No63">No</label>
                    </div>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Puede que te disguste fallar, pero estas condenado si no lo intentas. – Beverly Sills." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Realiza usted diariamente la limpieza de su casa (u otros objetos) en forma excesiva o siguiendo un ritual determinado?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta83" value="5" id = "Si64">
                        <label for="Si64">Si</label>
                        <input type="radio" name = "respuesta83" value="1" id = "No64">
                        <label for="No64">No</label>
                    </div>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La felicidad no es algo que ya esta hecho. Viene de tus acciones. – Dalai Lama." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Debe usted chequear en forma permanente y exagerada (más de una vez) las cerraduras, llaves, aparatos a gas o eléctricos, para evitar algún daño?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta84" value="5" id = "Si65">
                        <label for="Si65">Si</label>
                        <input type="radio" name = "respuesta84" value="1" id = "No65">
                        <label for="No65">No</label>
                    </div>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando te encuentras con un bloqueo en la carretera, toma un desvío. – Mary Kay Ash." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Tiene usted la necesidad de repetir, en forma ritualizada o no, actividades rutinarias (sentarse/pararse, salir/entrar, etc.)?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta85" value="5" id = "Si66">
                        <label for="Si66">Si</label>
                        <input type="radio" name = "respuesta85" value="1" id = "No66">
                        <label for="No66">No</label>
                    </div>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Es en tus momentos de decisión cuando se forma tu destino. – Tony Robbins." alt = "No se porque no carga :c"></image>
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