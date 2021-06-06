
console.log('Deteccion de enfermedades/Transtornos Mentales');

function recolectarDepresion() {
    /* Se hace una variable y se convierte en un array*/
    var formulariopregunta;
    var respuestas = [formulariopregunta];

    formulario = document.getElementById('formE').elements;
    /* Se consiguen las respuestas del jsp*/
    for (var i = 0; i < formulario.length; i++) {
        if (formulario[i].type == "radio" && formulario[i].checked) {
            /* Cada respuesta se envia al array*/
            respuestas.push(formulario[i].value);
        }
    }
    console.log(respuestas);
    /*Se envia el array con las respuestas a funciones que revisaran ciertas pociciones en el array*/
    procesarDepresion(respuestas);
    procesarAnsiedad(respuestas);
    procesarAsperger(respuestas);
    procesarConducta(respuestas);
    procesarAtencion(respuestas);
    procesarDislexia(respuestas);
    procesarAutismo(respuestas);
    procesarBipolaridad(respuestas);
    procesarObsesivo(respuestas);
    procesarConductaAlimentaria(respuestas);
    procesarEstres(respuestas);
}

function procesarDepresion(respuestas) {
    /*se recibe el arreglo */
    var resp = respuestas;
    /*se evaluan las respuestas de esta enfermedad*/
    if ((resp[1] == resp[2]) && (resp[3] == resp[4]) && (resp[5] == resp[6]) && (resp[7] == resp[8]) && (resp[8] == resp[9])) {
        /*mensaje si hay coincidencias*/
        document.getElementById('depresion').value = "1";
    } else {
        /*mensaje si no hay coincidencias*/
        document.getElementById('depresion').value = "0";
    }
}

function procesarAnsiedad(respuestas) {
    var resp = respuestas;
    if ((resp[11] == resp[12]) && (resp[13] == resp[14]) && (resp[15] == resp[16]) && (resp[17] == resp[18]) && (resp[19] == resp[20]) && (resp[10] == resp[20])) {
        document.getElementById('ansiedad').value = "1";
    } else {
        document.getElementById('ansiedad').value = "0";
    }
}

function procesarAsperger(respuestas) {
    var resp = respuestas;
    if ((resp[20] == resp[21]) && (resp[22] == resp[23]) && (resp[24] == resp[25]) && (resp[26] == resp[27]) && (resp[28] == resp[29]) && (resp[20] == resp[30])) {
        document.getElementById('tc_alimen').value = "1";
    } else {
        document.getElementById('tc_alimen').value = "0";
    }
}

function procesarConducta(respuestas) {
    var resp = respuestas;
    if ((resp[31] == resp[32]) && (resp[33] == resp[34]) && (resp[35] == resp[36]) && (resp[37] == resp[38]) && (resp[39] == resp[40])) {
        document.getElementById('t_conducta').value = "1";
    } else {
        document.getElementById('t_conducta').value = "0";
    }
}

function procesarAtencion(respuestas) {
    var resp = respuestas;
    if ((resp[41] == resp[42]) && (resp[43] == resp[44]) && (resp[45] == resp[46]) && (resp[47] == resp[48]) && (resp[49] == resp[41])) {
        document.getElementById('tda_tdah').value = "1";
    } else {
        document.getElementById('tda_tdah').value = "0";
    }
}

function procesarDislexia(respuestas) {
    var resp = respuestas;
    if ((resp[50] == resp[51]) && (resp[52] == resp[53]) && (resp[54] == resp[55]) && (resp[56] == resp[57])) {
        document.getElementById('dislexia').value = "1";
    } else {
        alert("No tienes Dislexia");
        document.getElementById('dislexia').value = "0";
    }
}

function procesarAutismo(respuestas) {
    var resp = respuestas;
    if ((resp[58] == resp[59]) && (resp[60] == resp[61]) && (resp[62] == resp[63]) && (resp[64] == resp[65]) && (resp[65] == resp[66])) {
        document.getElementById('autismo').value = "1";
    } else {
        document.getElementById('autismo').value = "0";
    }
}

function procesarBipolaridad(respuestas) {
    var resp = respuestas;
    if ((resp[67] == resp[68]) && (resp[69] == resp[70]) && (resp[71] == resp[72]) && (resp[73] == resp[74]) && (resp[75] == resp[74])) {
        document.getElementById('bipolaridad').value = "1";
    } else {
        document.getElementById('bipolaridad').value = "0";
    }
}

function procesarObsesivo(respuestas) {
    var resp = respuestas;
    if ((resp[76] == resp[77]) && (resp[78] == resp[79]) && (resp[80] == resp[81]) && (resp[82] == resp[83]) && (resp[85] == resp[85])) {
        document.getElementById('asperger').value = "1";
    } else {
        document.getElementById('asperger').value = "0";
    }
}

function procesarConductaAlimentaria(respuestas) {
    var resp = respuestas;
    if ((resp[86] == resp[87]) && (resp[88] == resp[89]) && (resp[90] == resp[91]) && (resp[92] == resp[93]) && (resp[94] == resp[95])) {
        document.getElementById('t_obsesivo_compulsivo').value = "1";
    } else {
        document.getElementById('t_obsesivo_compulsivo').value = "0";
    }
}

function procesarEstres(respuestas) {
    var resp = respuestas;
    if ((resp[96] == resp[97]) && (resp[98] == resp[99]) && (resp[100] == resp[101]) && (resp[102] == resp[103]) && (resp[104] == resp[105])) {
        document.getElementById('estres').value = "1";
    } else {
        document.getElementById('estres').value = "0";
    }
}
