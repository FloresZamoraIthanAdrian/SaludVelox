function validarLetras(e) {
    var teclado = (document.all) ? e.keyCode : e.which;

    if (teclado == 8) return true;

    var patron = /[a-z-A-Z\s]/;

    var prueba = String.fromCharCode(teclado);

    return patron.test(prueba);
}

function validarNumeros(e){
    var teclado = (document.all) ? e.keyCode : e.which;

    if (teclado == 8) return true;

    var patron = /[\d]/;

    var prueba = String.fromCharCode(teclado);

    return patron.test(prueba);
}

function validarAlfaNumericos(e) {
    var teclado = (document.all) ? e.keyCode : e.which;

    if (teclado == 8) return true;

    var patron = /[\w]/;

    var prueba = String.fromCharCode(teclado);

    return patron.test(prueba);
}



