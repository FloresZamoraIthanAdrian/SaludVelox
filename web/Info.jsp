<%@page import="Control.AccionesEnfermedad"%>
<%@page import="Usuario.Enfermedad"%>
<%@page import="Usuario.Usuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <link rel = "stylesheet" type = 'text/css' href = 'Styles/Estilos.css'>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Lobster&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <title>Información | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="./Scripts/Basicos.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = './Styles/Styles.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <body>

        <header>
            <div class = "container logo-nav-container">
                <div class="info_titulo_principal">
                    <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-book-open"></i> Estadísticas</p>
                </div>
                <div class="info_titulo_responsive">
                    <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-book-open"></i> Info</p>
                </div>
                <div class = "espacio"></div>
                <span class="menu-icon animate__animated animate__zoomInRight">Ver Menú  <i class="fas fa-chevron-down"></i></span>

                <nav class="nav">
                    <ul class = "animate__animated animate__zoomInRight animate__slow">
                        <li onclick="javascript:formulario()" id ="margenNav"><i class="far fa-smile"></i> ¡Formularios!</li>
                        <li onclick="javascript:resultado()"><i class="fas fa-poll"></i> Resultados</li>
                        <div class="espaciado"></div>
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

            <%  
                
                Enfermedad enfC = AccionesEnfermedad.numUsuarioSDiagnosticados();
                int num = 1;
                Enfermedad enf = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf1 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf2 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf3 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf4 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf5 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf6 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf7 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf8 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf9 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                Enfermedad enf10 = AccionesEnfermedad.padecimientosGenerales(num);
                num ++;
                
            %>

            <main>
                <div id="arriba"></div>
                <div class="container1">
                    La salud mental incluye nuestro bienestar emocional, psicológico y social.
                    Afecta la forma en que pensamos, sentimos y actuamos cuando enfrentamos la vida.
                    También ayuda a determinar cómo manejamos el estrés, nos relacionamos con los 
                    demás y tomamos decisiones. La salud mental es importante en todas las etapas
                    de la vida, desde la niñez y la adolescencia hasta la adultez y la vejez.
                    Por eso es importante reconocer estos transtornos en la vida 
                    de las demas personas.
                    <br>
                </div>
                <div class="container1">
                        La siguiente es una grafica, de los <em><%= enfC.getNum_diagnosticado()%></em> donde se muestra el numero de 
                        los usuarios registrados y cuantos fueron diagnosticados con cierto transtorno.

                        <input type="hidden" id="depresion" value="<%= enf.getId_enfermedad()%>">
                        <input type="hidden" id="ansiedad" value="<%= enf1.getId_enfermedad()%>">
                        <input type="hidden" id="tc_alimentaria" value="<%= enf2.getId_enfermedad()%>">
                        <input type="hidden" id="t_conducta" value="<%= enf3.getId_enfermedad()%>">
                        <input type="hidden" id="tda_tdah" value="<%= enf4.getId_enfermedad()%>">
                        <input type="hidden" id="dislexia" value="<%= enf5.getId_enfermedad()%>">
                        <input type="hidden" id="autismo" value="<%= enf6.getId_enfermedad()%>">
                        <input type="hidden" id="bipolaridad" value="<%= enf7.getId_enfermedad()%>">
                        <input type="hidden" id="asperger" value="<%= enf8.getId_enfermedad()%>">
                        <input type="hidden" id="t_obesivo" value="<%= enf9.getId_enfermedad()%>">
                        <input type="hidden" id="estres" value="<%= enf10.getId_enfermedad()%>>">

                        <div class="container">
                            <canvas id="myChart" width="100 px" height="100 px"></canvas>
                        </div>
                    </div>
            </main>

            <%                } else {
                    out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
                }
            %>

        </section>

        <script>
            var ctx = document.getElementById('myChart').getContext('2d');
            var depresion = document.getElementById('depresion').value;
            var ansiedad = document.getElementById('ansiedad').value;
            var tc_alimentaria = document.getElementById('tc_alimentaria').value;
            var t_conducta = document.getElementById('t_conducta').value;
            var tda_tdah = document.getElementById('tda_tdah').value;
            var dislexia = document.getElementById('dislexia').value;
            var autismo = document.getElementById('autismo').value;
            var bipolaridad = document.getElementById('bipolaridad').value;
            var asperger = document.getElementById('asperger').value;
            var t_obesivo = document.getElementById('t_obesivo').value;
            var estres = document.getElementById('estres').value;

            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Depresión', 'Ansiedad', 'Transtornos Alimenticios',
                        'Transtornos de Conducta', 'TDA/TDAH', 'Dislexia', 'Autismo', 'Bipolaridad', 'Asperger', 'Transtorno Obsesivo Compulsivo', 'Estres'],
                    datasets: [{
                            label: 'Grafica de enfermedades diagnosticadas en los usuarios',
                            data: [depresion, ansiedad, tc_alimentaria, t_conducta, tda_tdah, dislexia, autismo, bipolaridad, asperger, t_obesivo, estres],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
                                'rgba(0, 248, 132, 0.2)',
                                'rgba(198, 0, 248, 0.2)',
                                'rgba(144, 142, 144, 0.2)',
                                'rgba(0, 255, 255, 0.2)',
                                'rgba(45, 6, 97, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
                                'rgba(0, 248, 132, 1)',
                                'rgba(198, 0, 248, 1)',
                                'rgba(144, 142, 144, 1)',
                                'rgba(0, 255, 255, 1)',
                                'rgba(45, 6, 97, 1)'
                            ],
                            borderWidth: 1.5
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>

        <footer>
            <h3>Redes Sociales</h3>
            <ul>
                <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"></i> Facebook</li>
                <li onclick="javascript:instagram()"><i class="fab fa-instagram"></i> Instagram</li>
                <li onclick="javascript:twitter()"><i class="fab fa-twitter"></i> Twitter</li>
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
                <ul>
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
