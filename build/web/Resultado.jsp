<%@page import="java.util.List"%>
<%@page import="Usuario.Enfermedad"%>
<%@page import="Control.AccionesEnfermedad"%>
<%@page import="Control.AccionesUsuario"%>
<%@page import="Usuario.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Resultados | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = './Styles/Styles.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        <link rel="stylesheet" href="https://bootswatch.com/5/zephyr/bootstrap.min.css">
        <style type="text/css">
            #map {
                margin-top: 150px;
                height: 50%;
                width: 60%;
                transition: 0.3s;
            }

            #map:hover{
                transform: scale(1.02, 1.02);
            }

            html,
            body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
        </style>
        <script>
            let map;
            let service;
            let infowindow;

            function initMap() {
                const sydney = new google.maps.LatLng(-33.867, 151.195);
                infowindow = new google.maps.InfoWindow();
                map = new google.maps.Map(document.getElementById("map"), {
                    center: sydney,
                    zoom: 15,
                });
                const request = {
                    query: "Hospital mental",
                    fields: ["name", "geometry"],
                };
                service = new google.maps.places.PlacesService(map);
                service.findPlaceFromQuery(request, (results, status) => {
                    if (status === google.maps.places.PlacesServiceStatus.OK && results) {
                        for (let i = 0; i < results.length; i++) {
                            createMarker(results[i]);
                        }
                        map.setCenter(results[0].geometry.location);
                    }
                });
            }

            function createMarker(place) {
                if (!place.geometry || !place.geometry.location)
                    return;
                const marker = new google.maps.Marker({
                    map,
                    position: place.geometry.location,
                });
                google.maps.event.addListener(marker, "click", () => {
                    infowindow.setContent(place.name || "");
                    infowindow.open(map);
                });
            }
        </script>
    </head>
    <body>
        <header>
            <div class = "container logo-nav-container">
                <p class = "logo textoForm animate__animated animate__zoomInLeft"><i class="fas fa-poll"></i> Mis resultados</p>
                <div class = "espacio"></div>
                <span class="menu-icon animate__animated animate__zoomInRight">Ver Menú  <i class="fas fa-chevron-down"></i></span>
                <nav>
                    <ul class = "animate__animated animate__zoomInRight">
                        <li onclick="javascript:formulario()" id ="margenNav"><i class="far fa-smile"></i> ¡Formularios!</li>
                        <li onclick="javascript:info()"><i class="fas fa-book-open"></i> Estadísticas</li>
                        <div class="espaciado"></div>
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

        <div style="margin-left: 20%; border: 3px solid #9f0000; border-radius: 4px;" id="map"></div>
        <script
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhUcyT-3XTOqyrImnE4KjBvL25bZWsYAQ&callback=initMap&libraries=places&v=weekly"
            async>
        </script>

        <div class="container1">
            <p>
                La concientización sobre la salud mental de la población adquiere relevancia con el pasar de los años. La
                Secretaria de Salud Federal estima que de los 15 millones de personas que padecen algún trastorno mental en
                México, la mayoría son adultos jóvenes en edad productiva. Dentro de las que destacan depresión, autismo,
                trastornos de ansiedad, trastornos de la conducta alimentaria, trastorno por déficit de atención e hiperactividad
                (TDAH).
                <br><br>
                En caso de que el formulario de diagnostico haya detectado algun posible transtorno mental este aparecera en la tabla de abajo.
                De ser este el caso puedes acudir al centro de salud mental mas cercano a tu ubicacion, este esta representado en el mapa de arriba.
                <br>
            </p>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="table-danger">Resultados del Formulario de diagnostico.</th>
                    </tr>
                </thead>
                <tbody>

                    <%                        
                        Enfermedad f = AccionesEnfermedad.listarTranstornosUsuarios(id_usu);
                        String[] enfNombres = new String[11];

                        if (f.getAnsiedad() > 0) {
                            enfNombres[0] = "Ansiedad";
                        } else {
                            enfNombres[0] = null;
                        }

                        if (f.getAsperger() > 0) {
                            enfNombres[1] = "Asperger";
                        } else {
                            enfNombres[1] = null;
                        }

                        if (f.getAutismo() > 0) {
                            enfNombres[2] = "Autismo";
                        } else {
                            enfNombres[2] = null;
                        }

                        if (f.getBipolaridad() > 0) {
                            enfNombres[3] = "Bipolaridad";
                        } else {
                            enfNombres[3] = null;
                        }

                        if (f.getDepresion() > 0) {
                            enfNombres[4] = "Depresion";
                        } else {
                            enfNombres[4] = null;
                        }

                        if (f.getDislexia() > 0) {
                            enfNombres[5] = "Dislexia";
                        } else {
                            enfNombres[5] = null;
                        }

                        if (f.getT_conducta() > 0) {
                            enfNombres[6] = "Transtornos de conducta";
                        } else {
                            enfNombres[6] = null;
                        }

                        if (f.getT_obsesivo_compulsivo() > 0) {
                            enfNombres[7] = "Transtorno obsesivo compulsivo";
                        } else {
                            enfNombres[7] = null;
                        }

                        if (f.getTc_alimentaria() > 0) {
                            enfNombres[8] = "Transtornos de conducta alimentaria";
                        } else {
                            enfNombres[8] = null;
                        }

                        if (f.getTda_tdah() > 0) {
                            enfNombres[9] = "TDA/TDAH";
                        } else {
                            enfNombres[9] = null;
                        }

                        for(String pf : enfNombres){
                            if(pf != null){
                    %>

                    <tr>
                        <th scope="row"><%= pf %></th>
                    </tr>

                    <%
                            }
                        }
                    %>

                </tbody>
            </table>
        </div>


        <%                } else {
                out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
            }
        %>


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