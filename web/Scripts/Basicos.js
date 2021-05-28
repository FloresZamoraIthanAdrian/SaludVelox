jQuery('document').ready(function($){
    var menuBtn = $('.menu-icon'),
        menu = $('.nav ul');

    menuBtn.click(function(){
        if(menu.hasClass('show')){

            menu.removeClass('show');

        } else {

            menu.addClass('show')
        }
    });
});

$(document).ready(function () {
    $("input").on('paste', function (e) {
        e.preventDefault();
        alert('Esta acción está prohibida');
    });

    $("input").on('copy', function (e) {
        e.preventDefault();
        alert('Esta acción está prohibida');
    });
});
function abrir(){
    document.getElementById("vent").style.display="block";
}
function cerrar(){
    document.getElementById("vent").style.display="none";
}
function inicio(){
    location.href = "index.html";
}
function iniciarsesion(){
    location.href = "IniciarSesion.jsp";
}
function crearcuenta(){
    location.href = "CrearCuenta.html"
}
function codigo(){
    location.href = "Codigo.jsp"
}
function cuenta(){
    location.href = "Cuenta.jsp";
}
function cuenta2(){
    location.href = "Cuenta.jsp";
}
function formulario(){
    location.href = "Formulario.jsp"
}
function olvidar(){
    location.href = "Olvidar.jsp"
}
function resultado(){
    location.href = "Resultado.jsp"
}
function chat(){
    location.href = "Chat.jsp"
}

function info(){
    location.href "Info.jsp";
}

function velox(){
    window.open("https://giancarlogall.github.io/VeloxPagina/Velox.html");
}
function facebook(){
    window.open("https://www.facebook.com/VeloxSoftware");
}
function instagram(){
    window.open("https://www.instagram.com/veloxsoftware/");
}
function twitter(){
    window.open("https://twitter.com/SoftwareVelox");
}