<%@page import="java.util.List"%>
<%@page import="Usuario.Enfermedad"%>
<%@page import="Control.AccionesEnfermedad"%>
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
        <link rel="stylesheet" href="https://bootswatch.com/5/zephyr/bootstrap.min.css">
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

        <section>
            <main class="margen_superior">

                <div class="container1">
                    Previamente haz realizado los siguiente formularios.
                    <br><br>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="table-danger">Formulario de diagnostico que se realizo.</th>
                                <th class="table-danger">Fecha en que se realizo.</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <%
                                String[] presNames = new String[13];
                                int i = 0;
                                List<Enfermedad> listaEnfermedad = AccionesEnfermedad.listarTranstornos();
                                for(Enfermedad end : listaEnfermedad){
                                    
                                    presNames[i] = end.getNombre();
                                    i++;
                                }
                                i = 0;
                                List<Enfermedad> end = AccionesEnfermedad.listarFormulariosRealizados(id_usu);
                                for(Enfermedad enf : end){
                            %>

                            <tr>
                                <th scope="row"><%= presNames[i] %></th>
                                <th scope="row"><%= enf.getFecha() %></th>
                            </tr>
                            
                            <%
                                    i++;
                                }
                            %>


                        </tbody>
                    </table>
                    <BR><br>
                    Puedes observar si el diagnostico a 
                    arrojado algun posible transtorno dando click en "Resultados".
                    <a href="Resultado.jsp" class="boton"><i class="fas fa-book-open"></i>Resultados</a>
                </div>

                <div class="container1">
                    <h4 class="info_titulo">Ansiedad</h4>
                    <p>
                        La ansiedad es un sentimiento de miedo, temor e inquietud. Puede hacer que sude, se sienta inquieto y tenso, y tener palpitaciones. Puede ser una reacción normal al estrés. Por ejemplo, puede sentirse ansioso cuando se enfrenta a un problema difícil en el trabajo, antes de tomar un examen o antes de tomar una decisión importante. Si bien la ansiedad puede ayudar a enfrentar una situación, además de darle un impulso de energía o ayudarle a concentrarse, para las personas con trastornos de ansiedad el miedo no es temporal y puede ser abrumadora.
                    <div id="depresion"></div>
                    </p>
                    <a href = "FormAnsiedad.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Depresión</h4>
                    <p>
                        La depresión se puede describir como el hecho de sentirse triste, melancólico, infeliz, abatido o derrumbado. La mayoría de nosotros se siente de esta manera de vez en cuando durante períodos cortos.
                        La depresión clínica es un trastorno del estado anímico en el cual los sentimientos de tristeza, pérdida, ira o frustración interfieren con la vida diaria durante un período de algunas semanas o más.
                    <div id="estres"></div>
                    </p>
                    <a href = "FormDepresion.jsp" class="boton">Hacer el formulario<i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Estrés</h4>
                    <p>
                        El estrés es un sentimiento de tensión física o emocional. Puede provenir de cualquier situación o pensamiento que lo haga sentir a uno frustrado, furioso o nervioso.
                        El estrés es la reacción de su cuerpo a un desafío o demanda. En pequeños episodios el estrés puede ser positivo, como cuando le ayuda a evitar el peligro o cumplir con una fecha límite. Pero cuando el estrés dura mucho tiempo, puede dañar su salud.
                    <div id="bipo"></div>
                    </p>
                    <a href = "FormEstres.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Bipolaridad</h4>
                    <p>
                        Trastorno que provoca altibajos emocionales, que van desde trastornos de depresión hasta episodios maníacos.
                        Se desconoce la causa exacta del trastorno bipolar, pero es posible que tenga que ver con una combinación de factores genéticos y ambientales y de la alteración de las sustancias químicas y las estructuras del cerebro.
                    <div id="TOC"></div>
                    </p>
                    <a href = "FormBipolaridad.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Transtorno Obsesivo Compulsivo</h4>
                    <p>
                        Pensamientos excesivos (obsesiones) que llevan a comportamientos repetitivos (compulsiones).
                        El trastorno obsesivo compulsivo se caracteriza por los pensamientos irracionales y los temores (obsesiones) que provocan comportamientos compulsivos.                    
                    <div id="TCA"></div>
                    </p>
                    <a href = "FormObsesivoCompulsivo.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Transtorno de Conducta Alimentaria</h4>
                    <p>
                        Los trastornos de la conducta alimentaria son problemas relacionados con la forma en que comen las personas. Pueden ser muy perjudiciales para la salud de la persona, sus emociones y sus relaciones personales. Hay varios tipos distintos de trastornos de la conducta alimentaria.
                    <div id="TC"></div>
                    </p>
                    <a href = "FormConductaAlimentaria.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Transtorno de Conducta</h4>
                    <p>
                        Es una serie de problemas conductuales y emocionales que se presentan en niños y adolescentes. Los problemas pueden involucrar comportamiento desafiante o impulsivo, consumo de drogas o actividad delictiva.
                    <div id="Dislexia"></div>
                    </p>
                    <a href = "FormTranstornoConducta.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Dislexia</h4>
                    <p>
                        La dislexia se presenta en niños con niveles normales de inteligencia y visión.
                        Algunos de los síntomas son el retraso para aprender a hablar y leer, y la dificultad para aprender nuevas palabras.
                        La mayoría de los niños con dislexia puede salir adelante en la escuela con la ayuda de tutores o programas de educación especializada.                    
                    <div id="Autismo"></div>
                    </p>
                    <a href = "FormDislexia.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Autismo</h4>
                    <p>
                        El trastorno del espectro autista es una afección relacionada con el desarrollo del cerebro que afecta la manera en la que una persona percibe y socializa con otras personas, lo que causa problemas en la interacción social y la comunicación.
                    <div id="TDA"></div>
                    </p>
                    <a href = "FormAutismo.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Transtorno de Déficit de Atención</h4>
                    <p>
                        Trastorno crónico caracterizado por la dificultad para prestar atención, la hiperactividad y la impulsividad.
                        El TDAH suele comenzar en la niñez y puede persistir hasta la edad adulta. Puede ocasionar baja autoestima, problemas en las relaciones y dificultades en la escuela o el trabajo.
                        Los síntomas incluyen hiperactividad y atención limitada.
                        El tratamiento incluye medicamentos y terapia conversacional.
                    <div id="SA"></div>
                    </p>
                    <a href = "FormTDA.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
                <div class="container1">
                    <h4 class="info_titulo">Síndrome de Asperger</h4>
                    <p>
                        El síndrome de Asperger es un trastorno del espectro autista que suele ser menos grave.
                        Las personas que padecen este trastorno pueden tener un comportamiento social inusual y un interés profundo en algunos temas específicos.
                        La terapia conductual y de formación en la comunicación permite a los pacientes con trastornos del aprendizaje socializar mejor.
                    </p>
                    <a href = "FormSindromeAsoerger.jsp" class="boton">Hacer el formulario <i class="far fa-smile"></i></a>
                </div>
            </main>
        </section>

        <%            } else {
                out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
            }
        %>

        <script src="./Scripts/FormularioEnfermedades.js"></script>            

        <footer>
            <h3 style="color: white;">Redes Sociales</h3>
            <ul>
                <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"> Facebook </i></li>
                <li onclick="javascript:instagram()"><i class="fab fa-instagram"> Instagram </i></li>
                <li onclick="javascript:twitter()"><i class="fab fa-twitter">  Twitter </i></li>
            </ul>
            <h3 style="color: white;">Correo Electrónico</h3>
            <ul>
                <li>velox.software.09@gmail.com</li>
            </ul>
            <h3 style="color: white;">Página Web</h3>
            <ul>
                <li onclick="javascript:velox()">VeloxSoftware.com</a></li>
            </ul>
            <h3 style="color: white;">Integrantes</h3>
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