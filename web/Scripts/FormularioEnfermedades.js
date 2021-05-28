console.log('Deteccion de enfermedades/Transtornos Mentales');

function procesarEnfermedades() {
    var cont = 0;
    var respuestas = [];
    formulario = document.getElementById('formE').elements;
    
    for (var i = 0; i < formulario.length; i++) {
        if (formulario[i].type == "radio" && formulario[i].checked) {
            respuestas.push(formulario[i].value);
            cont++;
        }
    }
    
    console.log(cont);
    console.log(respuestas);
}
