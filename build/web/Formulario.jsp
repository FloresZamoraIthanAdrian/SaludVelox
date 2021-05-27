<%@page import="Control.AccionesUsuario"%>
<%@page import="Usuario.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Formulario | Salud Velox</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="./Scripts/Basicos.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = 'Styles/Styles.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>
        <header>

            <div class = "container logo-nav-container">
                <p class = "logo textoForm animate__animated animate__zoomInLeft" id = "textoForm"><i class="far fa-smile"></i> Formulario</p>
                <div class = "espacio"></div>
                <span class="menu-icon animate__animated animate__zoomInRight">Ver Men�  <i class="fas fa-chevron-down"></i></span>
                <nav>
                    <ul class = "animate__animated animate__zoomInRight">
                        <a style="text-decoration: none; color: white;" href="Info.jsp" ><li id = "margenNav"><i class="fas fa-book-open"></i> Informaci�n</li></a>
                        <a style="text-decoration: none; color: white;" href="Resultado.jsp" ><li><i class="fas fa-poll"></i> Resultados</li></a>
                        <div class="espaciado"></div>
                        <a style="text-decoration: none; color: white;" href="Cuenta.jsp" ><li id ="margenNav2"><i class="fas fa-user-circle"></i> Cuenta</li></a>
                        <a style="text-decoration: none; color: white;" href="Chat.jsp" ><li><i class="fas fa-comments"></i> Foro</li></a>
                            <%
                                HttpSession sesion = request.getSession();
                                String usuer, id;

                                if (sesion.getAttribute("user") != null) {
                                    usuer = sesion.getAttribute("user").toString();
                                    id = sesion.getAttribute("id_usuS").toString();
                                    int id_usu = Integer.parseInt(id);

                                    Usuario u = AccionesUsuario.listarDatosUser(id_usu);

                                    out.print("<a style='text-decoration: none; color: white;' href='IniciarSesion.jsp?cerrar=true'><li>Cerrar Sesion de " + u.getNom_usu() + "</li></a>");

                                } else {
                                    out.print("<script>location.replace('IniciarSesion.jsp');alert('Debes iniciar sesion para acceder a esta pagina');</script>");
                                }
                            %>
                    </ul>
                </nav>
            </div>
        </header>

        <section>
            <main class="margen_superior">
                <image class="imagenHumano animate__animated animate__pulse animate__infinite" src = 'images/EscudoVelox2.png' title="Presi�name para regresar al inicio del sitio web <3" alt = "No se porque no carga :c" onclick="javascript:inicio()"></image>
                <ol class= "formulario_cuadro">
                    <!--___________________________________________________________________Depresi�n_____________________________________________________________________-->
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas ha tenido poco inter�s en hacer las cosas</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre">
                            <label for="Siempre">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre">
                            <label for="Casi_Siempre">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces">
                            <label for="A_Veces">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez">
                            <label for="Rara_Vez">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca">
                            <label for="Nunca">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si no sueltas el pasado, �con qu� mano agarras el futuro?" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las ultimas 2 semanas �Se ha sentido deca�do(a), deprimido(a) o sin esperanza?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre1">
                            <label for="Siempre1">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre1">
                            <label for="Casi_Siempre1">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces1">
                            <label for="A_Veces1">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez1">
                            <label for="Rara_Vez1">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca1">
                            <label for="Nunca1">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La vida comienza al final de tu zona de confort. ? Neale Donald Walsch." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Ha tenido dificultad para quedarse o permanecer dormido(a), o ha dormido demasiado?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre2">
                            <label for="Siempre2">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre2">
                            <label for="Casi_Siempre2">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces2">
                            <label for="A_Veces2">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez2">
                            <label for="Rara_Vez2">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca2">
                            <label for="Nunca2">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viaje es lo �nico que compras que te hace m�s rico." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Se ha sentido cansado(a) o con poca energ�a? </li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre3">
                            <label for="Siempre3">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre3">
                            <label for="Casi_Siempre3">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces3">
                            <label for="A_Veces3">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez3">
                            <label for="Rara_Vez3">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca3">
                            <label for="Nunca3">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Vayas a donde vayas, ve con todo tu coraz�n. ? Confucio." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Se ha sentido sin apetito o ha comido en exceso?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre4">
                            <label for="Siempre4">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre4">
                            <label for="Casi_Siempre4">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces4">
                            <label for="A_Veces4">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez4">
                            <label for="Rara_Vez4">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca4">
                            <label for="Nunca4">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Solo se vive una vez. Pero si lo haces bien, una vez es suficiente. ? Mae West" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Se ha sentido mal con usted mismo(a) o que es un fracasado o que ha quedado mal con usted mismo(a) o con su familia?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre5">
                            <label for="Siempre5">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre5">
                            <label for="Casi_Siempre5">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces5">
                            <label for="A_Veces5">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez5">
                            <label for="Rara_Vez5">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca5">
                            <label for="Nunca5">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Siempre parece imposible, hasta que se hace. ? Nelson Mandela" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Ha tenido dificultad para concentrarse en ciertas actividades, tales como leer un libro o ver la televisi�n? </li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre6">
                            <label for="Siempre6">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre6">
                            <label for="Casi_Siempre6">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces6">
                            <label for="A_Veces6">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez6">
                            <label for="Rara_Vez6">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca6">
                            <label for="Nunca6">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Ir� a cualquier parte siempre y cuando sea hacia delante. ? David Livingston." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Se ha movido o hablado tan lento que otras personas podr�an haberlo notado, o lo contrario muy inquieto(a) o agitado(a) que ha estado movi�ndose mucho m�s de lo normal?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre7">
                            <label for="Siempre7">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre7">
                            <label for="Casi_Siempre7">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces7">
                            <label for="A_Veces7">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez7">
                            <label for="Rara_Vez7">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca7">
                            <label for="Nunca7">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Prefiero morir de pasi�n que de aburrimiento" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 2 semanas �Ha experimentado pensamientos de que estar�a mejor muerto(a) o de lastimarse de alguna manera? </li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre8">
                            <label for="Siempre8">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre8">
                            <label for="Casi_Siempre8">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces8">
                            <label for="A_Veces8">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez8">
                            <label for="Rara_Vez8">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca8">
                            <label for="Nunca8">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El gran placer de la vida es hacer lo que la gente dice que no puedes.  ? Walter Bagehot" alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Ansiedad_____________________________________________________________________-->
                    <li class="formulario_pregunta">�Durante las �ltimas semanas, ha padecido de un sentimiento de tristeza, depresi�n o p�rdida de energ�a durante la mayor parte del tiempo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si">
                            <label for="Si">Si</label>
                            <input type="radio" name = "respuesta" id = "No">
                            <label for="No">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La l�gica te llevar� desde A hasta B. La imaginaci�n te llevar� a cualquier parte. ? Albert Einstein." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">En las 2 �ltimas semanas �ha experimentado ataques de ansiedad, cuando de repente ten�a miedo, estaba nervioso/a o bastante intranquilo/a? </li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si1">
                            <label for="Si1">Si</label>
                            <input type="radio" name = "respuesta" id = "No1">
                            <label for="No1">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los dos d�as m�s importantes de tu vida son el d�a en que naciste y el d�a en el que encontraste el por qu�. ? Mark Twain." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas semanas �ha experimentado fuertes temores irracionales, en situaciones sociales tal como hablando con otros, haciendo cosas delante de otros o siendo el centro de atenci�n?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si2">
                            <label for="Si2">Si</label>
                            <input type="radio" name = "respuesta" id = "No2">
                            <label for="No2">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Debemos dejar ir la vida que hemos planeado, para as� aceptar las que nos est� esperando. ? Joseph Campbell" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las dos �ltimas semanas �ha estado molestado por fuertes temores irracionales de usar el trasporte p�blico, estar en una tienda, haciendo cola o en sitios p�blicos?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si3">
                            <label for="Si3">Si</label>
                            <input type="radio" name = "respuesta" id = "No3">
                            <label for="No3">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="En 20 a�os desde hoy estar�s m�s decepcionado de las cosas que no hiciste que de las que hiciste. ? Mark Twain." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">En los 2 �ltimos meses �ha experimentado acontecimiento inusual o situaci�n terrible o inquietante o ha padecido de las secuelas de tal acontecimiento?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si4">
                            <label for="Si4">Si</label>
                            <input type="radio" name = "respuesta" id = "No4">
                            <label for="No4">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La felicidad es una forma de viajar, no un destino. ? Roy. M. Goodman" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante las �ltimas 4 semanas �ha estado molesto con un sentimiento de estar preocupado/a, tenso/a, ansioso/a la mayor parte del tiempo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si5">
                            <label for="Si5">Si</label>
                            <input type="radio" name = "respuesta" id = "No5">
                            <label for="No5">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No soy la misma habiendo visto la luna o el otro lado del mundo. ? Mary Anne Radmacher." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Estuvo ansioso/a, preocupado/a por cosas de su vida diaria, tal como tareas de casa, el trabajo, la familia, el/la compa�ero/a, los ni�os?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si6">
                            <label for="Si6">Si</label>
                            <input type="radio" name = "respuesta" id = "No6">
                            <label for="No6">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Ning�n hombre tiene una memoria lo suficientemente buena para ser un mentiroso exitoso. ? Abraham Lincoln" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Estuvo preocup�ndose de su salud f�sica o enfermedad som�tica?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si7">
                            <label for="Si7">Si</label>
                            <input type="radio" name = "respuesta" id = "No7">
                            <label for="No7">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Todos nuestros sue�os se pueden hacer realidad si tenemos el coraje de perseguirlos. ? Walt Disney." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Estuvo preocupado por otras cosas?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si8">
                            <label for="Si8">Si</label>
                            <input type="radio" name = "respuesta" id = "No8">
                            <label for="No8">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La valent�a no siempre ruge. A veces, es la vocecita al final del d�a que dice: ma�ana lo volver� a intentar.  ? Mary Anne Radmacher" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Se preocup� mucho m�s de lo que otra gente har�a en su situaci�n?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si9">
                            <label for="Si9">Si</label>
                            <input type="radio" name = "respuesta" id = "No9">
                            <label for="No9">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viaje se mide mejor en amigos que en millas. ?  Tim Cahill" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Cuando estuvo preocupado o ansioso �sinti� frecuentemente intranquilidad, temor o ?los pelos de punta??</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si10">
                            <label for="Si10">Si</label>
                            <input type="radio" name = "respuesta" id = "No10">
                            <label for="No10">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si piensas que la aventura es peligrosa, prueba la rutina. Es mortal.- Pablo Coelho" alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Sindrone de Asperger_____________________________________________________________________-->
                    <li class="formulario_pregunta">�No entiende bien c�mo jugar con otros ni�os? Por ejemplo, le pasan desapercibidas las reglas impl�citas de esa interacci�n social.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre9">
                            <label for="Siempre9">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre9">
                            <label for="Casi_Siempre9">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces9">
                            <label for="A_Veces9">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez9">
                            <label for="Rara_Vez9">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca9">
                            <label for="Nunca9">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El �xito es caer siete veces y levantarte ocho. ?  Proverbio japon�s" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Cuando tiene tiempo libre para jugar con otros ni�os, como en el patio del recreo, �evita el contacto social con ellos? Por ejemplo, se retira a un sitio apartado o se va a la biblioteca.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre10">
                            <label for="Siempre10">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre10">
                            <label for="Casi_Siempre10">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces10">
                            <label for="A_Veces10">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez10">
                            <label for="Rara_Vez10">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca10">
                            <label for="Nunca10">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viajero sin capacidad de observaci�n es como un p�jaro sin alas. ? Moslih Eddin Saadi" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Parece no darse cuenta de las convenciones sociales o c�digos de conducta y hace comentarios o actos inapropiados? Por ejemplo, le hace un comentario personal a alguien y no parece darse cuenta de que est� ofendiendo.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre11">
                            <label for="Siempre11">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre11">
                            <label for="Casi_Siempre11">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces11">
                            <label for="A_Veces11">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez11">
                            <label for="Rara_Vez11">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca11">
                            <label for="Nunca11">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="De ning�n laberinto propio se sale con llave ajena" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Le falta empat�a entendimiento de los sentimientos de los dem�s? Por ejemplo, no entiende que pedir disculpas ayudar�a a la otra persona a sentirse mejor.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre12">
                            <label for="Siempre12">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre12">
                            <label for="Casi_Siempre12">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces12">
                            <label for="A_Veces12">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez12">
                            <label for="Rara_Vez12">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca12">
                            <label for="Nunca12">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Me he dado cuenta que no hay forma m�s segura de saber si amas u odias a la gente que viajando con ellas. ? Mark Twain" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Parece que espera que otra gente sepa de sus pensamientos, experiencias y opiniones? Por ejemplo, no se da cuenta de que alguien no sabe algo simplemente porque no estuvo all� con �l para enterarse.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre13">
                            <label for="Siempre13">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre13">
                            <label for="Casi_Siempre13">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces13">
                            <label for="A_Veces13">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez13">
                            <label for="Rara_Vez13">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca13">
                            <label for="Nunca13">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nunca sabes lo fuerte que eres, hasta que ser fuerte es la �nica opci�n que te queda. ? Bob Marley" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Necesita demasiado que le tranquilicen cuando algo marcha mal o cambia la situaci�n?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre14">
                            <label for="Siempre14">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre14">
                            <label for="Casi_Siempre14">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces14">
                            <label for="A_Veces14">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez14">
                            <label for="Rara_Vez14">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca14">
                            <label for="Nunca14">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Dios no te hubiera dado la capacidad de so�ar, sin darte tambi�n la posibilidad de convertir tus sue�os en realidad. ? H�ctor Tassinari" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Le falta sutileza en la expresi�n de sus emociones? Por ejemplo, el ni�o demuestra angustia o aflicci�n desproporcionada respecto a la situaci�n vivida.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre15">
                            <label for="Siempre15">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre15">
                            <label for="Casi_Siempre15">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces15">
                            <label for="A_Veces15">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez15">
                            <label for="Rara_Vez15">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca15">
                            <label for="Nunca15">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No he fracasado. He encontrado diez mil formas que no funcionan. ? Thomas Alva Edison" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Es indiferente a la influencia social de los compa�eros? Por ejemplo, no sigue la �ltima moda en cuesti�n de juguetes, accesorios o ropa.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre16">
                            <label for="Siempre16">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre16">
                            <label for="Casi_Siempre16">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces16">
                            <label for="A_Veces16">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez16">
                            <label for="Rara_Vez16">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca16">
                            <label for="Nunca16">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No importa lo que pase, viajar te da una historia que contar.?Proverbio Jud�o." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Le falta precisi�n en su expresi�n de las emociones? Por ejemplo, no entiende que existen diferentes niveles de expresi�n emocional apropiados para gente diferente.</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre17">
                            <label for="Siempre17">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre17">
                            <label for="Casi_Siempre17">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces17">
                            <label for="A_Veces17">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez17">
                            <label for="Rara_Vez17">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca17">
                            <label for="Nunca17">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Encuentra lo que te trae alegr�a y ve hacia all�.?Jan Phillips." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Hace interpretaciones literales a los comentarios de los dem�s? Por ejemplo, se confunde con frases como ?si las miradas matasen?, ?estoy muerto de hambre?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre18">
                            <label for="Siempre18">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre18">
                            <label for="Casi_Siempre18">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces18">
                            <label for="A_Veces18">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez18">
                            <label for="Rara_Vez18">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca18">
                            <label for="Nunca18">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Viajar sirve para ajustar la imaginaci�n a la realidad, y para ver las cosas como son en vez de pensar c�mo ser�n. ? Samuel Johnson" alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Transtorno de Conducta_____________________________________________________________________-->
                    <li class="formulario_pregunta">A menudo pierde la calma</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si11">
                            <label for="Si11">Si</label>
                            <input type="radio" name = "respuesta" id = "No11">
                            <label for="No11">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nadie se da cuenta de lo hermoso que es viajar hasta que vuelve a casa y descansa sobre su almohada vieja y conocida. ? Lin Yutang" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo est� susceptible o se molesta con facilidad</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si12">
                            <label for="Si12">Si</label>
                            <input type="radio" name = "respuesta" id = "No12">
                            <label for="No12">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No esperes. El momento perfecto nunca llegar�. ? Napoleon Hill." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo est� enfadado y resentido</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si13">
                            <label for="Si13">Si</label>
                            <input type="radio" name = "respuesta" id = "No13">
                            <label for="No13">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El mundo es un libro, y aquellos que no viajan leen solo una p�gina. -San Agust�n." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo acosa, amenaza o intimada a otros</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si14">
                            <label for="Si14">Si</label>
                            <input type="radio" name = "respuesta" id = "No14">
                            <label for="No14">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un buen viajero no tiene planes fijos ni tampoco la intenci�n de llegar. ? Lao Tzu" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo inicia peleas</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si15">
                            <label for="Si15">Si</label>
                            <input type="radio" name = "respuesta" id = "No15">
                            <label for="No15">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si rechazas la comida, ignoras la vestimenta, temes la religi�n y evitas a las personas, quiz�s sea mejor que te quedes en casa. ? James Michener" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Discute a menudo con la autoridad o con los adultos, en el caso de los ni�os y los adolescentes</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si16">
                            <label for="Si16">Si</label>
                            <input type="radio" name = "respuesta" id = "No16">
                            <label for="No16">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un viaje es como el matrimonio. La manera certera de estar errados es pensar que tenemos el control. ? John Steinbeck" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Ha usado un arma que puede provocar serios da�os a terceros (p. ej., un bast�n, un ladrillo, una botella rota, un cuchillo, un arma)</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si17">
                            <label for="Si17">Si</label>
                            <input type="radio" name = "respuesta" id = "No17">
                            <label for="No17">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El �xito no se mide en el dinero, sino en la diferencia que marcas en las personas. ? Michelle Obama" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Ha ejercido la crueldad f�sica contra personas</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si18">
                            <label for="Si18">Si</label>
                            <input type="radio" name = "respuesta" id = "No18">
                            <label for="No18">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La gente que esta lo suficientemente loca para pensar que pueden cambiar el mundo, son aquellas que lo consiguen. ? Rob Siltanen." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Ha ejercido la crueldad f�sica contra animales</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si19">
                            <label for="Si19">Si</label>
                            <input type="radio" name = "respuesta" id = "No19">
                            <label for="No19">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No dejes que la vida te desanime; todo el que ha llegado lejos tuvo que comenzar desde nada. ? Richard. L. Evans." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">A menudo desaf�a activamente o rechaza satisfacer la petici�n por parte de figuras de autoridad o normas</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si20">
                            <label for="Si20">Si</label>
                            <input type="radio" name = "respuesta" id = "No20">
                            <label for="No20">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Y aqu� esta mi secreto, un secreto muy sencillo: solo con el coraz�n se puede ver bien; lo esencial es invisible a los ojos. ? Antoine de Saint-Exup�ry." alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Transtorno de D�ficit de Atenci�n_____________________________________________________________________-->
                    <li class="formulario_pregunta">�A menudo no presta atenci�n suficiente a los detalles o incurre en errores por descuido en las tareas escolares, en el trabajo o en otras actividades?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si21">
                            <label for="Si21">Si</label>
                            <input type="radio" name = "respuesta" id = "No21">
                            <label for="No21">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No desees que fuese m�s sencillo, desea que fueses mejor. ? Jim Rohn." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo tiene dificultades para mantener la atenci�n en tareas o en actividades l�dicas?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si22">
                            <label for="Si22">Si</label>
                            <input type="radio" name = "respuesta" id = "No22">
                            <label for="No22">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El pesimista ve dificultad en toda oportunidad. El optimista ve oportunidad en toda dificultad. ? Winston Churchill." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo parece no escuchar cuando se le habla directamente?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si23">
                            <label for="Si23">Si</label>
                            <input type="radio" name = "respuesta" id = "No23">
                            <label for="No23">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Para evitar la cr�tica, no digas nada, no hagas nada, no seas nada. ? Fred Shero." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo no sigue instrucciones y no finaliza tareas escolares, encargo u obligaciones en el centro de trabajo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si24">
                            <label for="Si24">Si</label>
                            <input type="radio" name = "respuesta" id = "No24">
                            <label for="No24">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="A menudo el cambio de uno mismo es m�s necesario que el cambio de escenario. ? Arthur Christopher Benson." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo tiene dificultad para organizar tareas y actividades?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si25">
                            <label for="Si25">Si</label>
                            <input type="radio" name = "respuesta" id = "No25">
                            <label for="No25">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No importa lo lento que vayas mientras que no pares. ? Confucio." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo evita, le disgusta o es renuente en cuanto a dedicarse a tareas que requieren un esfuerzo mental sostenido?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si26">
                            <label for="Si26">Si</label>
                            <input type="radio" name = "respuesta" id = "No26">
                            <label for="No26">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si haces lo que siempre has hecho, llegar�s donde siempre has llegado. ? Tony Robbins." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo extrav�a objetos necesarios para tareas o actividades?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si27">
                            <label for="Si27">Si</label>
                            <input type="radio" name = "respuesta" id = "No27">
                            <label for="No27">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nunca en la vida aprend� algo de alguien que estuviese de acuerdo conmigo. ? Dudley Field Malone." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo se distrae f�cilmente por est�mulos irrelevantes?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si28">
                            <label for="Si28">Si</label>
                            <input type="radio" name = "respuesta" id = "No28">
                            <label for="No28">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No podemos ayudar a todos, pero todo el mundo puede ayudar a alguien. ? Ronald Reagan." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A menudo olvida realizar actividades cotidianas?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si29">
                            <label for="Si29">Si</label>
                            <input type="radio" name = "respuesta" id = "No29">
                            <label for="No29">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Odi� cada minuto de entrenamiento, pero dije, ?no te rindas, sufre ahora y vive el resto de tu vida como un campe�n?. ? Mohamed Ali." alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Dislexia____________________________________________________________________-->
                    <li class="formulario_pregunta">�Usted se queja porque le cuesta comprender lo que lee?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si30">
                            <label for="Si30">Si</label>
                            <input type="radio" name = "respuesta" id = "No30">
                            <label for="No30">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si eres paciente en un momento de ira, escapar�s a cien d�as de tristeza. ? Proverbio chino" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Cu�ndo lee, tiene que volv�rselo a leer varias veces para hacerse una idea?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si31">
                            <label for="Si31">Si</label>
                            <input type="radio" name = "respuesta" id = "No31">
                            <label for="No31">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No hay camino para la verdad, la verdad es el camino. ? Mahatma Gandhi" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Hace un nivel de faltas de ortograf�a muy exagerado para su edad o nivel de estudios?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si32">
                            <label for="Si32">Si</label>
                            <input type="radio" name = "respuesta" id = "No32">
                            <label for="No32">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No hagas a los otros lo que no te gustar�a que te hicieran a ti. ? Confucio" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Normalmente va muy lento haciendo las tareas escolares o en su d�a a d�a en casa?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si33">
                            <label for="Si33">Si</label>
                            <input type="radio" name = "respuesta" id = "No33">
                            <label for="No33">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Recuerda que eres tan bueno como lo mejor que hayas hecho en tu vida. ? Billy Wilder" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Muchas veces empieza muchas cosas y no termina ninguna?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si34">
                            <label for="Si34">Si</label>
                            <input type="radio" name = "respuesta" id = "No34">
                            <label for="No34">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La vida es un 10% lo que me ocurre y 90% c�mo reacciono a ello. ? John Maxwell." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�A veces los textos que escribe parece que no tienen sentido o les falta contenido?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si35">
                            <label for="Si35">Si</label>
                            <input type="radio" name = "respuesta" id = "No35">
                            <label for="No35">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cree y act�a como si fuese imposible fallar. ? Charles Kettering." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Parece que no entienda los enunciados que lee por ejemplo de matem�ticas o de asignaturas de lengua?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si36">
                            <label for="Si36">Si</label>
                            <input type="radio" name = "respuesta" id = "No36">
                            <label for="No36">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El �xito es ir de fracaso en fracaso sin perder el entusiasmo. ? Winston Churchill" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Tiene problemas con el c�lculo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si37">
                            <label for="Si37">Si</label>
                            <input type="radio" name = "respuesta" id = "No37">
                            <label for="No37">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No cuentes los d�as, haz que los d�as cuenten. ? Muhammad Ali." alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Autismo____________________________________________________________________-->
                    <li class="formulario_pregunta">�Es capaz de hablar usando frases u oraciones cortas?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si38">
                            <label for="Si38">Si</label>
                            <input type="radio" name = "respuesta" id = "No38">
                            <label for="No38">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Un a�o a partir de ahora desear�s haber comenzado hoy. ? Karen Lamb." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Puede tener una conversaci�n con �l o ella, en la que participen ambos y se vayan turnando o vayan construyendo sobre lo ya dicho?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si39">
                            <label for="Si39">Si</label>
                            <input type="radio" name = "respuesta" id = "No39">
                            <label for="No39">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cada strike me acerca m�s al siguiente home run. ? Babe Ruth" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Ha usado alguna vez frases raras o ha dicho la misma cosa una y otra vez y casi exactamente de la misma manera?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si40">
                            <label for="Si40">Si</label>
                            <input type="radio" name = "respuesta" id = "No40">
                            <label for="No40">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No viajamos para escaparnos de la vida, sino para que la vida no se nos escape." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Ha hecho alguna vez preguntas o informaciones socialmente inconvenientes, tales como preguntas indiscretas o comentarios personales en momentos inoportunos?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si41">
                            <label for="Si41">Si</label>
                            <input type="radio" name = "respuesta" id = "No41">
                            <label for="No41">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="S�lo le falta el tiempo a quien no sabe aprovecharlo. ? Jovellanos" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Ha confundido alguna vez los pronombres diciendo (por ejemplo)?t�? o ?ella? en lugar de yo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si42">
                            <label for="Si42">Si</label>
                            <input type="radio" name = "respuesta" id = "No42">
                            <label for="No42">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nuestra mayor gloria no est� en no caer nunca, sino en levantarnos cada vez que caemos. ? Confucio" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Ha mostrado alguna vez un inter�s especial por alg�n tema (ej. trenes, dinosaurios, etc.) que, aun siendo normal a su edad y en su ambiente, pudiese parecer fuera de lo normal por su intensidad?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si43">
                            <label for="Si43">Si</label>
                            <input type="radio" name = "respuesta" id = "No43">
                            <label for="No43">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No te preocupes tanto por las arrugas de tu cara y atiende a las de tu alma? esas s� matan." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Cuando ten�a entre 4 y 5 a�os, �imitaba alguna vez espont�neamente a otras personas o lo que hac�an (como pasar la aspiradora, cocinar o arreglar cosas)?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si44">
                            <label for="Si44">Si</label>
                            <input type="radio" name = "respuesta" id = "No44">
                            <label for="No44">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El verdadero viajero encuentra que el aburrimiento es m�s bien agradable que molesto. Es el s�mbolo de su libertad ?su excesiva libertad. ? Aldous Huxley" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Tiene un amigo �ntimo o alguna amistad en particular?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si45">
                            <label for="Si45">Si</label>
                            <input type="radio" name = "respuesta" id = "No45">
                            <label for="No45">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="odos somos viajeros en este mundo y lo mejor que podemos encontrar es un amigo honesto. ? Robert Louis Stevenson." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Ha tenido alguna vez objetos que necesitaba llevar consigo, aparte de un mu�eco o una manta?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si46">
                            <label for="Si46">Si</label>
                            <input type="radio" name = "respuesta" id = "No46">
                            <label for="No46">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Viajar es vivir. ? Hans Christian Andersen." alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Bipolaridad_____________________________________________________________________-->
                    <li class="formulario_pregunta">�Ha tenido per�odos de �nimo extraordinariamente elevados que le llamen la atenci�n a usted y sus cercanos?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si47">
                            <label for="Si47">Si</label>
                            <input type="radio" name = "respuesta" id = "No47">
                            <label for="No47">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Todos somos aficionados. La vida es tan corta que no da para m�s. ? Charles Chaplin" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos de �nimo elevado habla usted m�s que de costumbre y m�s r�pidamente?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si48">
                            <label for="Si48">Si</label>
                            <input type="radio" name = "respuesta" id = "No48">
                            <label for="No48">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No busques personas con tus mismos gustos, busca personas con tus mismos valores." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos de �nimo elevado el flujo de sus pensamientos es m�s r�pido y tiene muchas ideas al mismo tiempo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si49">
                            <label for="Si49">Si</label>
                            <input type="radio" name = "respuesta" id = "No49">
                            <label for="No49">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando no sepas d�nde ir, sigue el perfume de un sue�o." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos tiene usted m�s energ�a f�sica de lo habitual, anda m�s ?acelerado? y realiza muchas m�s actividades que de costumbre?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si50">
                            <label for="Si50">Si</label>
                            <input type="radio" name = "respuesta" id = "No50">
                            <label for="No50">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La vida es una obra teatral que no importa cu�nto haya durado, sino lo bien que haya sido representada. ? S�neca" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos requiere usted menos horas de sue�o que lo habitual?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si51">
                            <label for="Si51">Si</label>
                            <input type="radio" name = "respuesta" id = "No51">
                            <label for="No51">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Estar preparado es importante, saber esperar lo es a�n m�s, pero aprovechar el momento adecuado es la clave de la vida. ? Arthur Schnitzler" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos est� usted m�s impaciente, no tolera m�nimas provocaciones, se enoja usted m�s f�cilmente y se pone agresivo?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si52">
                            <label for="Si52">Si</label>
                            <input type="radio" name = "respuesta" id = "No52">
                            <label for="No52">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="�Qu� peque�as son mis manos?! En relaci�n con todo lo que la vida ha querido darme. ? Ram�n J. S�nder" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos aumenta considerablemente su apetito sexual, se siente m�s atractivo y conquistador y puede llegar a tener varias parejas?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si53">
                            <label for="Si53">Si</label>
                            <input type="radio" name = "respuesta" id = "No53">
                            <label for="No53">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El verdadero viaje del descubrimiento no consiste en ver nuevos paisajes, sino en tener nuevos ojos. ? Marcel Proust." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos se siente usted ?un triunfador? o se embarca en proyectos y negocios estando seguro de su �xito?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si54">
                            <label for="Si54">Si</label>
                            <input type="radio" name = "respuesta" id = "No54">
                            <label for="No54">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Viajar es descubrir que todo el mundo esta equivocado sobre otros pa�ses. -Aldous Huxley." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos aumenta considerablemente su actividad social y se siente m�s ?desinhibido??</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si55">
                            <label for="Si55">Si</label>
                            <input type="radio" name = "respuesta" id = "No55">
                            <label for="No55">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los turistas no saben donde han estado, los viajeros no saben donde van. ? Paul Theroux." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Durante estos per�odos ha tenido creencias marcadamente irreales, por ejemplo, cree poseer habilidades poder o conocimientos extraordinarios?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si56">
                            <label for="Si56">Si</label>
                            <input type="radio" name = "respuesta" id = "No56">
                            <label for="No56">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El impulso a viajar es uno de los signos esperanzadores de la vida. ? Agnes Repplier." alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Transtorno Obsecivo Compulsivo_____________________________________________________________________-->
                    <li class="formulario_pregunta">�Siente usted miedo de llegar a ser responsable de que le pase algo terrible a otras personas?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si57">
                            <label for="Si57">Si</label>
                            <input type="radio" name = "respuesta" id = "No57">
                            <label for="No57">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="El objetivo de viajar no es s�lo conocer tierras extra�as, sino que en �ltima instancia se pueda volver y ver al propio pa�s con extra�amiento. ? G. K. Chesterton" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Aparecen regularmente im�genes violentas o terror�ficas en su mente contra su voluntad, produci�ndole angustia?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si58">
                            <label for="Si58">Si</label>
                            <input type="radio" name = "respuesta" id = "No58">
                            <label for="No58">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando viajas, recuerda que los pa�ses extranjeros no est�n dise�ados para que te sientas c�modo. Est�n dise�ados para que su propia gente se sienta c�moda. ? Clifton Fadiman" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Aparecen regularmente im�genes obscenas o blasfemas en su mente contra su voluntad, produci�ndole angustia?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si59">
                            <label for="Si59">Si</label>
                            <input type="radio" name = "respuesta" id = "No59">
                            <label for="No59">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los so�adores son los salvadores del mundo. ? James Allen." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Presenta usted frecuentemente ideas de estar ?contaminado?, ?infectado? o sucio?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si60">
                            <label for="Si60">Si</label>
                            <input type="radio" name = "respuesta" id = "No60">
                            <label for="No60">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Nunca dejes que tus recuerdos sean m�s grandes que tus sue�os. ? Doug Ivester." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Aparecen frecuentemente en su mente otras ideas, im�genes o impulsos intrusos que le provocan angustia?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si61">
                            <label for="Si61">Si</label>
                            <input type="radio" name = "respuesta" id = "No61">
                            <label for="No61">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Haz de cada d�a tu pieza maestra. ? John Wooden." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Est� usted constantemente preocupado por mantener el orden, la simetr�a o exactitud, aunque a veces no se justifique?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si62">
                            <label for="Si62">Si</label>
                            <input type="radio" name = "respuesta" id = "No62">
                            <label for="No62">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Escribe algo que merezca la pena leer o haz algo que merezca la pena escribir. ? Benjamin Franklin." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Realiza usted diariamente un lavado de manos excesivo o siguiendo un ritual determinado?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si63">
                            <label for="Si63">Si</label>
                            <input type="radio" name = "respuesta" id = "No63">
                            <label for="No63">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Seguridad.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Puede que te disguste fallar, pero estas condenado si no lo intentas. ? Beverly Sills." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Realiza usted diariamente la limpieza de su casa (u otros objetos) en forma excesiva o siguiendo un ritual determinado?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si64">
                            <label for="Si64">Si</label>
                            <input type="radio" name = "respuesta" id = "No64">
                            <label for="No64">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Sonrisa.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="La felicidad no es algo que ya esta hecho. Viene de tus acciones. ? Dalai Lama." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Debe usted chequear en forma permanente y exagerada (m�s de una vez) las cerraduras, llaves, aparatos a gas o el�ctricos, para evitar alg�n da�o?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si65">
                            <label for="Si65">Si</label>
                            <input type="radio" name = "respuesta" id = "No65">
                            <label for="No65">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Viaje.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Cuando te encuentras con un bloqueo en la carretera, toma un desv�o. ? Mary Kay Ash." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Tiene usted la necesidad de repetir, en forma ritualizada o no, actividades rutinarias (sentarse/pararse, salir/entrar, etc.)?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si66">
                            <label for="Si66">Si</label>
                            <input type="radio" name = "respuesta" id = "No66">
                            <label for="No66">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Camino.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Es en tus momentos de decisi�n cuando se forma tu destino. ? Tony Robbins." alt = "No se porque no carga :c"></image>
                    <!--___________________________________________________________________Transtorno de Conducta Alimentaria_____________________________________________________________________-->
                    <li class="formulario_pregunta">�Cu�nto te preocupa tu peso y tu figura corporal, en comparaci�n con otras personas de tu edad?</li>
                    <form action="" class="formulario">    
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta" id = "MuchoM">
                            <label for="MuchoM">Me preocupa mucho menos que a los dem�s</label>
                            <input type="radio" name = "respuesta" id = "PocoM">
                            <label for="PocoM">Me preocupa un poco menos que a los dem�s</label>
                            <input type="radio" name = "respuesta" id = "Igual">
                            <label for="Igual">Me preocupa igual que a los dem�s</label>
                            <input type="radio" name = "respuesta" id = "PocoS">
                            <label for="PocoS">Me preocupa un poco m�s que a los dem�s</label>
                            <input type="radio" name = "respuesta" id = "MuchoS">
                            <label for="MuchoS">Me preocupa mucho m�s que a los dem�s.</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Comida.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Tomas tu vida en tus propias manos �y qu� ocurre? Algo terrible, no poder culpar a nadie. ? Erica Jong." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Cu�nto te preocupa ganar 2 kg?</li>
                    <form action="" class="formulario">    
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta" id = "MuchoM1">
                            <label for="MuchoM1">No me asusta nada ganarlos</label>
                            <input type="radio" name = "respuesta" id = "PocoM1">
                            <label for="PocoM1">Me asusta un poco ganarlos</label>
                            <input type="radio" name = "respuesta" id = "Igual1">
                            <label for="Igual1">Me asusta bastante ganarlos</label>
                            <input type="radio" name = "respuesta" id = "PocoS1">
                            <label for="PocoS1">Me asusta mucho ganarlo</label>
                            <input type="radio" name = "respuesta" id = "MuchoS1">
                            <label for="MuchoS1">Estoy aterrorizado/a de ganarlos</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Corazon.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Una persona que nunca cometi� un error nunca intent� nada nuevo. ? Albert Einstein" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Cu�ndo fue la �ltima vez que hiciste una dieta?</li>
                    <form action="" class="formulario">    
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta" id = "MuchoM2">
                            <label for="MuchoM2">Nunca he estado a dieta</label>
                            <input type="radio" name = "respuesta" id = "PocoM2">
                            <label for="PocoM2">Estuve a dieta hace menos de un mes</label>
                            <input type="radio" name = "respuesta" id = "Igual2">
                            <label for="Igual2">Estuve a dieta hace 3 meses</label>
                            <input type="radio" name = "respuesta" id = "PocoS2">
                            <label for="PocoS2">Estuve a dieta hace un a�o</label>
                            <input type="radio" name = "respuesta" id = "MuchoS2">
                            <label for="MuchoS2">Estoy en dieta en este momento</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Feliz.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si estas tratando siempre de ser normal, nunca sabr�s lo incre�ble que puedes llegar a ser. ? Desconocido." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">En comparaci�n a otros aspectos de tu vida �Cu�nta importancia le das a tu peso?</li>
                    <form action="" class="formulario">    
                        <div class="radio formulario_respuestas_extensas">
                            <input type="radio" name = "respuesta" id = "PocoM3">
                            <label for="PocoM3">Mi peso es ligeramente m�s importante para m� que otros aspectos de mi vida</label>
                            <input type="radio" name = "respuesta" id = "Igual3">
                            <label for="Igual3">Mi peso no es importante en comparaci�n a otros aspectos de mi vida</label>
                            <input type="radio" name = "respuesta" id = "MuchoS3">
                            <label for="MuchoS3">Mi peso es lo m�s importante en mi vida.</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Gato.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Dos caminos terminaban en un bosque, yo tom� el menos transitado, y eso ha marcado toda la diferencia. ? Robert Frost." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">�Sueles sentirte ?gordo/a??</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre19">
                            <label for="Siempre19">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre19">
                            <label for="Casi_Siempre19">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces19">
                            <label for="A_Veces19">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez19">
                            <label for="Rara_Vez19">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca19">
                            <label for="Nunca19">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Globo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Lo �nico que tenemos que temer es al miedo mismo. ? Franklin D. Roosevelt." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">En los �ltimos tres meses, �cu�ntas veces has sentido una p�rdida de control y has comido una gran cantidad de comida en poco tiempo, mucho m�s de lo que comer�a otra persona en las mismas circunstancias?</li>
                    <form action="" class="formulario">    
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Siempre20">
                            <label for="Siempre20">Siempre</label>
                            <input type="radio" name = "respuesta" id = "Casi_Siempre20">
                            <label for="Casi_Siempre20">Casi Siempre</label>
                            <input type="radio" name = "respuesta" id = "A_Veces20">
                            <label for="A_Veces20">A Veces</label>
                            <input type="radio" name = "respuesta" id = "Rara_Vez20">
                            <label for="Rara_Vez20">Rara Vez</label>
                            <input type="radio" name = "respuesta" id = "Nunca20">
                            <label for="Nunca20">Nunca</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Imagen.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="No hay atajos a cualquier lugar que merezca la pena ir. ? Beverly Sills." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante esos episodios, �has comido mucho m�s r�pido de lo normal?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si67">
                            <label for="Si67">Si</label>
                            <input type="radio" name = "respuesta" id = "No67">
                            <label for="No67">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Juntos.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Si te ofrecen un asiento en un cohete no preguntes qu� asiento. Solo s�bete. ? Sheryl Sandberg." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante esos episodios, �has comido hasta sentirte muy inc�modo/a y lleno/a?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si68">
                            <label for="Si68">Si</label>
                            <input type="radio" name = "respuesta" id = "No68">
                            <label for="No68">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Musica.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Muchos de nosotros no estamos viviendo nuestros sue�os porque tememos vivir nuestros miedos. ? Les Brown." alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Durante esos episodios, �has comido grandes cantidades de comida a pesar de no tener hambre?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si69">
                            <label for="Si69">Si</label>
                            <input type="radio" name = "respuesta" id = "No69">
                            <label for="No69">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Poder.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Los turistas no saben d�nde han estado, los viajeros no saben hacia d�nde est�n yendo. ? Paul Theroux" alt = "No se porque no carga :c"></image>
                    <li class="formulario_pregunta">Despu�s de esos episodios, �te sientes disgustado/a, deprimido/a y muy culpable?</li>
                    <form action="" class="formulario">
                        <div class="radio">
                            <input type="radio" name = "respuesta" id = "Si70">
                            <label for="Si70">Si</label>
                            <input type="radio" name = "respuesta" id = "No70">
                            <label for="No70">No</label>
                        </div>
                    </form>
                    <image src = "images/images_form/Regalo.svg" class="imagen animate__animated animate__pulse animate__infinite animate__slower" title="Usualmente lo que m�s tememos es lo que m�s necesitamos hacer. ? Tim Ferriss." alt = "No se porque no carga :c"></image>
                </ol>
            </main>
        </section>

        <footer>
            <h3>Redes Sociales</h3>
            <ul>
                <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"> Facebook </i></li>
                <li onclick="javascript:instagram()"><i class="fab fa-instagram"> Instagram </i></li>
                <li onclick="javascript:twitter()"><i class="fab fa-twitter">  Twitter </i></li>
            </ul>
            <h3>Correo Electr�nico</h3>
            <ul>
                <li>velox.software.09@gmail.com</li>
            </ul>
            <h3>P�gina Web</h3>
            <ul>
                <li onclick="javascript:velox()">VeloxSoftware.com</a></li>
            </ul>
            <h3>Integrantes</h3>
            <div class="nombres">
                <ul onclick="javascript:velox()">
                    <li>Casta�eda Rodr�guez<br>Rafael Gil</li>
                    <li>Coronado Segundo<br>Juan Yael</li>
                    <li>Flores Zamora<br>Ithan Adrian</li>
                    <li>Gallegos Gonz�lez<br>Gian Carlo</li>
                    <li>P�rez L�pez<br>Jes�s Eduardo</li>
                    <li>Salazar Valdez<br>�ngel Yahir</li>
                </ul>
            </div>
        </footer>
    </body>
</html>