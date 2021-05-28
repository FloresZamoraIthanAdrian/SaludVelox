<%@page import="Usuario.Usuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Crear Cuenta</title>
        <link rel="icon" href= "images/EscudoVelox2.png">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link rel = "stylesheet" type = 'text/css' href = './Styles/Formulario.css'>
        <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <header>
 
                <nav class="nav">
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

        <h1>Chat for World! nwn</h1>

        <h2>Hello <%= u.getNom_usu()%> !!! :D</h2>

        <div>
            <div>
                <label>Nombre: </label>
                <input type="text" id="usuario">
            </div>
            <div>
                <label>Mensaje: </label>
                <textarea id="mensaje"></textarea>
            </div>
            <div>
                <button id="btnEnviar">Enviar</button>
            </div>
            <div id="conversacion"></div>
        </div>

        <%
            } else {
                out.print("<script>location.replace('IniciarSesion.jsp');alert('Contraseña o usuario incorrectos');</script>");
            }
        %>
        
        <script src="./Scripts/Chat.js"></script>

    </body>
</html>
