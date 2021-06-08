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
                    <form action="diagDislexia" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">¿Usted se queja porque le cuesta comprender lo que lee?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta49" value = "5" id = "Si30">
                            <label for="Si30">Si</label>
                            <input type="radio" name = "respuesta49" value = "1" id = "No30">
                            <label for="No30">No</label>
                        </div>
                        <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si eres paciente en un momento de ira, escaparás a cien días de tristeza. – Proverbio chino" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Cuándo lee, tiene que volvérselo a leer varias veces para hacerse una idea?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta50" value = "5" id = "Si31">
                            <label for="Si31">Si</label>
                            <input type="radio" name = "respuesta50" value = "1" id = "No31">
                            <label for="No31">No</label>
                        </div>
                        <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No hay camino para la verdad, la verdad es el camino. – Mahatma Gandhi" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Hace un nivel de faltas de ortografía muy exagerado para su edad o nivel de estudios?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta51" value = "5" id = "Si32">
                            <label for="Si32">Si</label>
                            <input type="radio" name = "respuesta51" value = "1" id = "No32">
                            <label for="No32">No</label>
                        </div>
                        <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No hagas a los otros lo que no te gustaría que te hicieran a ti. – Confucio" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Normalmente va muy lento haciendo las tareas escolares o en su día a día en casa?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta52" value = "5" id = "Si33">
                            <label for="Si33">Si</label>
                            <input type="radio" name = "respuesta52" value = "1" id = "No33">
                            <label for="No33">No</label>
                        </div>
                        <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Recuerda que eres tan bueno como lo mejor que hayas hecho en tu vida. – Billy Wilder" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Muchas veces empieza muchas cosas y no termina ninguna?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta53" value = "5" id = "Si34">
                            <label for="Si34">Si</label>
                            <input type="radio" name = "respuesta53" value = "1" id = "No34">
                            <label for="No34">No</label>
                        </div>
                        <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La vida es un 10% lo que me ocurre y 90% cómo reacciono a ello. – John Maxwell." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿A veces los textos que escribe parece que no tienen sentido o les falta contenido?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta54" value = "5" id = "Si35">
                            <label for="Si35">Si</label>
                            <input type="radio" name = "respuesta54" value = "1" id = "No35">
                            <label for="No35">No</label>
                        </div>
                        <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cree y actúa como si fuese imposible fallar. – Charles Kettering." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Parece que no entienda los enunciados que lee por ejemplo de matemáticas o de asignaturas de lengua?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta55" value = "5" id = "Si36">
                            <label for="Si36">Si</label>
                            <input type="radio" name = "respuesta55" value = "1" id = "No36">
                            <label for="No36">No</label>
                        </div>
                        <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El éxito es ir de fracaso en fracaso sin perder el entusiasmo. – Winston Churchill" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">¿Tiene problemas con el cálculo?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta56" value = "5" id = "Si37">
                            <label for="Si37">Si</label>
                            <input type="radio" name = "respuesta56" value = "1" id = "No37">
                            <label for="No37">No</label>
                        </div>
                        <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No cuentes los días, haz que los días cuenten. – Muhammad Ali." alt = "No se porque no carga :c"></image>
                        <!--___________________________________________________________________Autismo____________________________________________________________________-->
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