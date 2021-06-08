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
                    <form action="diagAsperger" class="formulario">
                        <input type="hidden" value="<%= id_usu%>" name="id_usu">
                        <li class="formulario_pregunta">¿No entiende bien cómo jugar con otros niños? Por ejemplo, le pasan desapercibidas las reglas implícitas de esa interacción social.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta20" value="5" id = "Siempre9">
                        <label for="Siempre9">Siempre</label>
                        <input type="radio" name = "respuesta20" value="4" id = "Casi_Siempre9">
                        <label for="Casi_Siempre9">Casi Siempre</label>
                        <input type="radio" name = "respuesta20" value="3"  id = "A_Veces9">
                        <label for="A_Veces9">A Veces</label>
                        <input type="radio" name = "respuesta20"  value="2" id = "Rara_Vez9">
                        <label for="Rara_Vez9">Rara Vez</label>
                        <input type="radio" name = "respuesta20" value="1"  id = "Nunca9">
                        <label for="Nunca9">Nunca</label>
                    </div>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El éxito es caer siete veces y levantarte ocho. –  Proverbio japonés" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Cuando tiene tiempo libre para jugar con otros niños, como en el patio del recreo, ¿evita el contacto social con ellos? Por ejemplo, se retira a un sitio apartado o se va a la biblioteca.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta21" value="5" id = "Siempre10">
                        <label for="Siempre10">Siempre</label>
                        <input type="radio" name = "respuesta21" value="4" id = "Casi_Siempre10">
                        <label for="Casi_Siempre10">Casi Siempre</label>
                        <input type="radio" name = "respuesta21"  value="3" id = "A_Veces10">
                        <label for="A_Veces10">A Veces</label>
                        <input type="radio" name = "respuesta21"   value="2"id = "Rara_Vez10">
                        <label for="Rara_Vez10">Rara Vez</label>
                        <input type="radio" name = "respuesta21"  value="1" id = "Nunca10">
                        <label for="Nunca10">Nunca</label>
                    </div>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viajero sin capacidad de observación es como un pájaro sin alas. – Moslih Eddin Saadi" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Parece no darse cuenta de las convenciones sociales o códigos de conducta y hace comentarios o actos inapropiados? Por ejemplo, le hace un comentario personal a alguien y no parece darse cuenta de que está ofendiendo.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta22" value="5" id = "Siempre11">
                        <label for="Siempre11">Siempre</label>
                        <input type="radio" name = "respuesta22" value="4" id = "Casi_Siempre11">
                        <label for="Casi_Siempre11">Casi Siempre</label>
                        <input type="radio" name = "respuesta22"  value="3" id = "A_Veces11">
                        <label for="A_Veces11">A Veces</label>
                        <input type="radio" name = "respuesta22"   value="2"id = "Rara_Vez11">
                        <label for="Rara_Vez11">Rara Vez</label>
                        <input type="radio" name = "respuesta22"  value="1" id = "Nunca11">
                        <label for="Nunca11">Nunca</label>
                    </div>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="De ningún laberinto propio se sale con llave ajena" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Le falta empatía entendimiento de los sentimientos de los demás? Por ejemplo, no entiende que pedir disculpas ayudaría a la otra persona a sentirse mejor.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta23" value="5" id = "Siempre12">
                        <label for="Siempre12">Siempre</label>
                        <input type="radio" name = "respuesta23" value="4" id = "Casi_Siempre12">
                        <label for="Casi_Siempre12">Casi Siempre</label>
                        <input type="radio" name = "respuesta23"  value="3" id = "A_Veces12">
                        <label for="A_Veces12">A Veces</label>
                        <input type="radio" name = "respuesta23"   value="2"id = "Rara_Vez12">
                        <label for="Rara_Vez12">Rara Vez</label>
                        <input type="radio" name = "respuesta23"  value="1" id = "Nunca12">
                        <label for="Nunca12">Nunca</label>
                    </div>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Me he dado cuenta que no hay forma más segura de saber si amas u odias a la gente que viajando con ellas. – Mark Twain" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Parece que espera que otra gente sepa de sus pensamientos, experiencias y opiniones? Por ejemplo, no se da cuenta de que alguien no sabe algo simplemente porque no estuvo allí con él para enterarse.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta24" value="5" id = "Siempre13">
                        <label for="Siempre13">Siempre</label>
                        <input type="radio" name = "respuesta24" value="4" id = "Casi_Siempre13">
                        <label for="Casi_Siempre13">Casi Siempre</label>
                        <input type="radio" name = "respuesta24"  value="3" id = "A_Veces13">
                        <label for="A_Veces13">A Veces</label>
                        <input type="radio" name = "respuesta24"   value="2"id = "Rara_Vez13">
                        <label for="Rara_Vez13">Rara Vez</label>
                        <input type="radio" name = "respuesta24"  value="1" id = "Nunca13">
                        <label for="Nunca13">Nunca</label>
                    </div>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nunca sabes lo fuerte que eres, hasta que ser fuerte es la única opción que te queda. – Bob Marley" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Necesita demasiado que le tranquilicen cuando algo marcha mal o cambia la situación?</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta25" value="5" id = "Siempre14">
                        <label for="Siempre14">Siempre</label>
                        <input type="radio" name = "respuesta25" value="4" id = "Casi_Siempre14">
                        <label for="Casi_Siempre14">Casi Siempre</label>
                        <input type="radio" name = "respuesta25"  value="3" id = "A_Veces14">
                        <label for="A_Veces14">A Veces</label>
                        <input type="radio" name = "respuesta25"   value="2"id = "Rara_Vez14">
                        <label for="Rara_Vez14">Rara Vez</label>
                        <input type="radio" name = "respuesta25"  value="1" id = "Nunca14">
                        <label for="Nunca14">Nunca</label>
                    </div>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Dios no te hubiera dado la capacidad de soñar, sin darte también la posibilidad de convertir tus sueños en realidad. – Héctor Tassinari" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Le falta sutileza en la expresión de sus emociones? Por ejemplo, el niño demuestra angustia o aflicción desproporcionada respecto a la situación vivida.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta26" value="5" id = "Siempre15">
                        <label for="Siempre15">Siempre</label>
                        <input type="radio" name = "respuesta26" value="4" id = "Casi_Siempre15">
                        <label for="Casi_Siempre15">Casi Siempre</label>
                        <input type="radio" name = "respuesta26"  value="3" id = "A_Veces15">
                        <label for="A_Veces15">A Veces</label>
                        <input type="radio" name = "respuesta26"   value="2"id = "Rara_Vez15">
                        <label for="Rara_Vez15">Rara Vez</label>
                        <input type="radio" name = "respuesta26"  value="1" id = "Nunca15">
                        <label for="Nunca15">Nunca</label>
                    </div>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No he fracasado. He encontrado diez mil formas que no funcionan. – Thomas Alva Edison" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Es indiferente a la influencia social de los compañeros? Por ejemplo, no sigue la última moda en cuestión de juguetes, accesorios o ropa.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta27" value="5" id = "Siempre16">
                        <label for="Siempre16">Siempre</label>
                        <input type="radio" name = "respuesta27" value="4" id = "Casi_Siempre16">
                        <label for="Casi_Siempre16">Casi Siempre</label>
                        <input type="radio" name = "respuesta27"  value="3" id = "A_Veces16">
                        <label for="A_Veces16">A Veces</label>
                        <input type="radio" name = "respuesta27"   value="2"id = "Rara_Vez16">
                        <label for="Rara_Vez16">Rara Vez</label>
                        <input type="radio" name = "respuesta27"  value="1" id = "Nunca16">
                        <label for="Nunca16">Nunca</label>
                    </div>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No importa lo que pase, viajar te da una historia que contar.–Proverbio Judío." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Le falta precisión en su expresión de las emociones? Por ejemplo, no entiende que existen diferentes niveles de expresión emocional apropiados para gente diferente.</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta28" value="5" id = "Siempre17">
                        <label for="Siempre17">Siempre</label>
                        <input type="radio" name = "respuesta28" value="4" id = "Casi_Siempre17">
                        <label for="Casi_Siempre17">Casi Siempre</label>
                        <input type="radio" name = "respuesta28"  value="3" id = "A_Veces17">
                        <label for="A_Veces17">A Veces</label>
                        <input type="radio" name = "respuesta28"   value="2"id = "Rara_Vez17">
                        <label for="Rara_Vez17">Rara Vez</label>
                        <input type="radio" name = "respuesta28"  value="1" id = "Nunca17">
                        <label for="Nunca17">Nunca</label>
                    </div>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Encuentra lo que te trae alegría y ve hacia allá.–Jan Phillips." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">¿Hace interpretaciones literales a los comentarios de los demás? Por ejemplo, se confunde con frases como “si las miradas matasen”, “estoy muerto de hambre”</li>
                    <div class="radio">
                        <input type="radio" name = "respuesta29" value="5" id = "Siempre18">
                        <label for="Siempre18">Siempre</label>
                        <input type="radio" name = "respuesta29" value="4" id = "Casi_Siempre18">
                        <label for="Casi_Siempre18">Casi Siempre</label>
                        <input type="radio" name = "respuesta29"  value="3" id = "A_Veces18">
                        <label for="A_Veces18">A Veces</label>
                        <input type="radio" name = "respuesta29"   value="2"id = "Rara_Vez18">
                        <label for="Rara_Vez18">Rara Vez</label>
                        <input type="radio" name = "respuesta29"  value="1" id = "Nunca18">
                        <label for="Nunca18">Nunca</label>
                    </div>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Viajar sirve para ajustar la imaginación a la realidad, y para ver las cosas como son en vez de pensar cómo serán. – Samuel Johnson" alt = "No se porque no carga :c"></image>
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