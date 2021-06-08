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
                    <form action="diagEstres" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">Me es difícil relajarme o sentirme tranquilo/a</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta96" value="5"  id = "Siempre21">
                            <label for="Siempre21">Siempre</label>
                            <input type="radio" name = "respuesta96"  value="4"  id = "Casi_Siempre21">
                            <label for="Casi_Siempre21">Casi Siempre</label>
                            <input type="radio" name = "respuesta96"  value="3" id = "A_Veces21">
                            <label for="A_Veces21">A Veces</label>
                            <input type="radio" name = "respuesta96" value="2"   id = "Rara_Vez21">
                            <label for="Rara_Vez21">Rara Vez</label>
                            <input type="radio" name = "respuesta96"  value="1"  id = "Nunca21">
                            <label for="Nunca21">Nunca</label>
                        </div>
                        <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La gente suele decir que la motivación no dura mucho. Bueno, tampoco lo hace el baño. Es por eso que se recomienda a diario. – Zig Ziglar." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Me es difícil tomar decisiones</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta97" value="5"  id = "Siempre22">
                            <label for="Siempre22">Siempre</label>
                            <input type="radio" name = "respuesta97"  value="4"  id = "Casi_Siempre22">
                            <label for="Casi_Siempre22">Casi Siempre</label>
                            <input type="radio" name = "respuesta97"  value="3" id = "A_Veces22">
                            <label for="A_Veces22">A Veces</label>
                            <input type="radio" name = "respuesta97" value="2"   id = "Rara_Vez22">
                            <label for="Rara_Vez22">Rara Vez</label>
                            <input type="radio" name = "respuesta97"  value="1"  id = "Nunca22">
                            <label for="Nunca22">Nunca</label>
                        </div>
                        <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="De la manera que yo lo veo, la recompensa y el lujo más grande de viajar es, cada día, poder experimentar cosas como si fuera la primera vez, estar en una posición en la que casi nada nos es tan familiar como para darlo por sentado. – Bill Bryson" alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Mi corazón se acelera y respiro rápidamente</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta98" value="5"  id = "Siempre23">
                            <label for="Siempre23">Siempre</label>
                            <input type="radio" name = "respuesta98"  value="4"  id = "Casi_Siempre23">
                            <label for="Casi_Siempre23">Casi Siempre</label>
                            <input type="radio" name = "respuesta98"  value="3" id = "A_Veces23">
                            <label for="A_Veces23">A Veces</label>
                            <input type="radio" name = "respuesta98" value="2"   id = "Rara_Vez23">
                            <label for="Rara_Vez23">Rara Vez</label>
                            <input type="radio" name = "respuesta98"  value="1"  id = "Nunca23">
                            <label for="Nunca23">Nunca</label>
                        </div>
                        <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El éxito no es la llave de la felicidad. La felicidad es la llave del éxito. Si amas lo que haces, tendrás éxito. – Albert Schweitzer." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Tengo problemas para pensar con claridad</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta99" value="5"  id = "Siempre24">
                            <label for="Siempre24">Siempre</label>
                            <input type="radio" name = "respuesta99"  value="4"  id = "Casi_Siempre24">
                            <label for="Casi_Siempre24">Casi Siempre</label>
                            <input type="radio" name = "respuesta99"  value="3" id = "A_Veces24">
                            <label for="A_Veces24">A Veces</label>
                            <input type="radio" name = "respuesta99" value="2"   id = "Rara_Vez24">
                            <label for="Rara_Vez24">Rara Vez</label>
                            <input type="radio" name = "respuesta99"  value="1"  id = "Nunca24">
                            <label for="Nunca24">Nunca</label>
                        </div>
                        <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Lo que necesitamos es más gente especializada en lo imposible. – Theodore Roosevelt." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Como demasiado o muy poco</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta100" value="5"  id = "Siempre25">
                            <label for="Siempre25">Siempre</label>
                            <input type="radio" name = "respuesta100"  value="4"  id = "Casi_Siempre25">
                            <label for="Casi_Siempre25">Casi Siempre</label>
                            <input type="radio" name = "respuesta100"  value="3" id = "A_Veces25">
                            <label for="A_Veces25">A Veces</label>
                            <input type="radio" name = "respuesta100" value="2"  id = "Rara_Vez25">
                            <label for="Rara_Vez25">Rara Vez</label>
                            <input type="radio" name = "respuesta100"  value="1" id = "Nunca25">
                            <label for="Nunca25">Nunca</label>
                        </div>
                        <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando tienes un sueño, tienes que agarrarlo y nunca dejarlo ir. – Carol Burnett." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Me siento anestesiado emocionalmente</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta101" value="5"  id = "Siempre26">
                            <label for="Siempre26">Siempre</label>
                            <input type="radio" name = "respuesta101"  value="4"  id = "Casi_Siempre26">
                            <label for="Casi_Siempre26">Casi Siempre</label>
                            <input type="radio" name = "respuesta101"  value="3" id = "A_Veces26">
                            <label for="A_Veces26">A Veces</label>
                            <input type="radio" name = "respuesta101" value="2"   id = "Rara_Vez26">
                            <label for="Rara_Vez26">Rara Vez</label>
                            <input type="radio" name = "respuesta101" value="1"  id = "Nunca26">
                            <label for="Nunca26">Nunca</label>
                        </div>
                        <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No es la carga lo que te rompe, sino la forma en la que la llevas. – Lou Holtz." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Pienso en mis problemas una y otra vez durante el día</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta102" value="5"  id = "Siempre27">
                            <label for="Siempre27">Siempre</label>
                            <input type="radio" name = "respuesta102"  value="4"  id = "Casi_Siempre27">
                            <label for="Casi_Siempre27">Casi Siempre</label>
                            <input type="radio" name = "respuesta102"  value="3" id = "A_Veces27">
                            <label for="A_Veces27">A Veces</label>
                            <input type="radio" name = "respuesta102" value="2" id = "Rara_Vez27">
                            <label for="Rara_Vez27">Rara Vez</label>
                            <input type="radio" name = "respuesta102"  value="1" id = "Nunca27">
                            <label for="Nunca27">Nunca</label>
                        </div>
                        <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No te esfuerces por ser exitoso, más bien por ser de valor. – Albert Einstein." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Tengo problemas para dormir (por ejemplo: problemas para conciliar el sueño, me despierto en la noche, me cuesta trabajo despertar, tengo pesadillas)</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta103" value="5"  id = "Siempre28">
                            <label for="Siempre28">Siempre</label>
                            <input type="radio" name = "respuesta103"  value="4"  id = "Casi_Siempre28">
                            <label for="Casi_Siempre28">Casi Siempre</label>
                            <input type="radio" name = "respuesta103"  value="3" id = "A_Veces28">
                            <label for="A_Veces28">A Veces</label>
                            <input type="radio" name = "respuesta103" value="2" id = "Rara_Vez28">
                            <label for="Rara_Vez28">Rara Vez</label>
                            <input type="radio" name = "respuesta103" value="1" id = "Nunca28">
                            <label for="Nunca28">Nunca</label>
                        </div>
                        <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Fallas el 100% de los tiros que no usas. – Wayne Gretzky." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Me es difícil sentirme esperanzado/a</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta104" value="5"  id = "Siempre29">
                            <label for="Siempre29">Siempre</label>
                            <input type="radio" name = "respuesta104"  value="4"  id = "Casi_Siempre29">
                            <label for="Casi_Siempre29">Casi Siempre</label>
                            <input type="radio" name = "respuesta104"  value="3" id = "A_Veces29">
                            <label for="A_Veces29">A Veces</label>
                            <input type="radio" name = "respuesta104" value="2"  id = "Rara_Vez29">
                            <label for="Rara_Vez29">Rara Vez</label>
                            <input type="radio" name = "respuesta104" value="1"  id = "Nunca29">
                            <label for="Nunca29">Nunca</label>
                        </div>
                        <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Una vez al año, ve a algún lugar en el que no has estado antes. – Dalai Lama." alt = "No se porque no carga :c"></image>
                        <li class="formulario_pregunta">Me siento cansado/a</li>
                        <div class="radio">
                            <input type="radio" name = "respuesta105" value="5"  id = "Siempre30">
                            <label for="Siempre30">Siempre</label>
                            <input type="radio" name = "respuesta105"  value="4"  id = "Casi_Siempre30">
                            <label for="Casi_Siempre30">Casi Siempre</label>
                            <input type="radio" name = "respuesta105"  value="3" id = "A_Veces30">
                            <label for="A_Veces30">A Veces</label>
                            <input type="radio" name = "respuesta105" value="2"  id = "Rara_Vez30">
                            <label for="Rara_Vez30">Rara Vez</label>
                            <input type="radio" name = "respuesta105" value="1"  id = "Nunca30">
                            <label for="Nunca30">Nunca</label>
                        </div>
                        <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Stay Alive |-/" alt = "No se porque no carga :c"></image>
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