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

                <form action="diagDepresion" class="formulario">
                    <input type="hidden" value="<%= id_usu %>" name="id_usu">
                    <ol class= "formulario_cuadro">
                        <!--___________________________________________________________________Depresión_____________________________________________________________________-->
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ha tenido poco interés en hacer las cosas</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta" value="5" id = "Siempre">
                            <label for="Siempre">Siempre</label>
                            <input type="radio" name = "respuesta" value="4" id = "Casi_Siempre">
                            <label for="Casi_Siempre">Casi Siempre</label>
                            <input type="radio" name = "respuesta" value="3" id = "A_Veces">
                            <label for="A_Veces">A Veces</label>
                            <input type="radio" name = "respuesta" value="2" id = "Rara_Vez">
                            <label for="Rara_Vez">Rara Vez</label>
                            <input type="radio" name = "respuesta" value="1" id = "Nunca">
                            <label for="Nunca">Nunca</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si no sueltas el pasado, ¿con qué mano agarras el futuro?" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las ultimas 2 semanas ¿Se ha sentido decaído(a), deprimido(a) o sin esperanza?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta1" value="5" id = "Siempre1">
                            <label for="Siempre1">Siempre</label>
                            <input type="radio" name = "respuesta1" value="4" id = "Casi_Siempre1">
                            <label for="Casi_Siempre1">Casi Siempre</label>
                            <input type="radio" name = "respuesta1" value="3" id = "A_Veces1">
                            <label for="A_Veces1">A Veces</label>
                            <input type="radio" name = "respuesta1" value="2" id = "Rara_Vez1">
                            <label for="Rara_Vez1">Rara Vez</label>
                            <input type="radio" name = "respuesta1" value="1" id = "Nunca1">
                            <label for="Nunca1">Nunca</label>
                        </div>
                        <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La vida comienza al final de tu zona de confort. – Neale Donald Walsch." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Ha tenido dificultad para quedarse o permanecer dormido(a), o ha dormido demasiado?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta2" value="5" id = "Siempre2">
                            <label for="Siempre2">Siempre</label>
                            <input type="radio" name = "respuesta2" value="4" id = "Casi_Siempre2">
                            <label for="Casi_Siempre2">Casi Siempre</label>
                            <input type="radio" name = "respuesta2" value="3" id = "A_Veces2">
                            <label for="A_Veces2">A Veces</label>
                            <input type="radio" name = "respuesta2" value="2" id = "Rara_Vez2">
                            <label for="Rara_Vez2">Rara Vez</label>
                            <input type="radio" name = "respuesta2" value="1" id = "Nunca2">
                            <label for="Nunca2">Nunca</label>
                        </div>
                        <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viaje es lo único que compras que te hace más rico." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Se ha sentido cansado(a) o con poca energía? </li>
                        <div class="radio">
                            <input type="radio" name = "respuesta3" value="5" id = "Siempre3">
                            <label for="Siempre3">Siempre</label>
                            <input type="radio" name = "respuesta3" value="4" id = "Casi_Siempre3">
                            <label for="Casi_Siempre3">Casi Siempre</label>
                            <input type="radio" name = "respuesta3" value="3" id = "A_Veces3">
                            <label for="A_Veces3">A Veces</label>
                            <input type="radio" name = "respuesta3" value="2" id = "Rara_Vez3">
                            <label for="Rara_Vez3">Rara Vez</label>
                            <input type="radio" name = "respuesta3" value="1" id = "Nunca3">
                            <label for="Nunca3">Nunca</label>
                        </div>
                        <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Vayas a donde vayas, ve con todo tu corazón. – Confucio." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Se ha sentido sin apetito o ha comido en exceso?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta4" value="5" id = "Siempre4">
                            <label for="Siempre4">Siempre</label>
                            <input type="radio" name = "respuesta4" value="4" id = "Casi_Siempre4">
                            <label for="Casi_Siempre4">Casi Siempre</label>
                            <input type="radio" name = "respuesta4" value="3" id = "A_Veces4">
                            <label for="A_Veces4">A Veces</label>
                            <input type="radio" name = "respuesta4" value="2" id = "Rara_Vez4">
                            <label for="Rara_Vez4">Rara Vez</label>
                            <input type="radio" name = "respuesta4" value="1" id = "Nunca4">
                            <label for="Nunca4">Nunca</label>
                        </div>
                        <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Solo se vive una vez. Pero si lo haces bien, una vez es suficiente. – Mae West" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Se ha sentido mal con usted mismo(a) o que es un fracasado o que ha quedado mal con usted mismo(a) o con su familia?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta5" value="5" id = "Siempre5">
                            <label for="Siempre5">Siempre</label>
                            <input type="radio" name = "respuesta5" value="4" id = "Casi_Siempre5">
                            <label for="Casi_Siempre5">Casi Siempre</label>
                            <input type="radio" name = "respuesta5" value="3" id = "A_Veces5">
                            <label for="A_Veces5">A Veces</label>
                            <input type="radio" name = "respuesta5" value="2" id = "Rara_Vez5">
                            <label for="Rara_Vez5">Rara Vez</label>
                            <input type="radio" name = "respuesta5" value="1" id = "Nunca5">
                            <label for="Nunca5">Nunca</label>
                        </div>
                        <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Siempre parece imposible, hasta que se hace. – Nelson Mandela" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Ha tenido dificultad para concentrarse en ciertas actividades, tales como leer un libro o ver la televisión? </li>
                        <div class="radio">
                            <input type="radio" name = "respuesta6" value="5" id = "Siempre6">
                            <label for="Siempre6">Siempre</label>
                            <input type="radio" name = "respuesta6" value="4" id = "Casi_Siempre6">
                            <label for="Casi_Siempre6">Casi Siempre</label>
                            <input type="radio" name = "respuesta6" value="3" id = "A_Veces6">
                            <label for="A_Veces6">A Veces</label>
                            <input type="radio" name = "respuesta6" value="2" id = "Rara_Vez6">
                            <label for="Rara_Vez6">Rara Vez</label>
                            <input type="radio" name = "respuesta6" value="1" id = "Nunca6">
                            <label for="Nunca6">Nunca</label>
                        </div>
                        <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Iré a cualquier parte siempre y cuando sea hacia delante. – David Livingston." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Se ha movido o hablado tan lento que otras personas podrían haberlo notado, o lo contrario muy inquieto(a) o agitado(a) que ha estado moviéndose mucho más de lo normal?</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta7" value="5" id = "Siempre7">
                            <label for="Siempre7">Siempre</label>
                            <input type="radio" name = "respuesta7" value="4" id = "Casi_Siempre7">
                            <label for="Casi_Siempre7">Casi Siempre</label>
                            <input type="radio" name = "respuesta7" value="3" id = "A_Veces7">
                            <label for="A_Veces7">A Veces</label>
                            <input type="radio" name = "respuesta7" value="2" id = "Rara_Vez7">
                            <label for="Rara_Vez7">Rara Vez</label>
                            <input type="radio" name = "respuesta7" value="1" id = "Nunca7">
                            <label for="Nunca7">Nunca</label>
                        </div>
                        <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Prefiero morir de pasión que de aburrimiento" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Durante las últimas 2 semanas ¿Ha experimentado pensamientos de que estaría mejor muerto(a) o de lastimarse de alguna manera? </li>
                        <div class="radio">
                            <input type="radio" name = "respuesta8" value="5" id = "Siempre8">
                            <label for="Siempre8">Siempre</label>
                            <input type="radio" name = "respuesta8" value="4" id = "Casi_Siempre8">
                            <label for="Casi_Siempre8">Casi Siempre</label>
                            <input type="radio" name = "respuesta8" value="3" id = "A_Veces8">
                            <label for="A_Veces8">A Veces</label>
                            <input type="radio" name = "respuesta8" value="2" id = "Rara_Vez8">
                            <label for="Rara_Vez8">Rara Vez</label>
                            <input type="radio" name = "respuesta8" value="1" id = "Nunca8">
                            <label for="Nunca8">Nunca</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El gran placer de la vida es hacer lo que la gente dice que no puedes.  – Walter Bagehot" alt = "No se porque no carga :c"></image>
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