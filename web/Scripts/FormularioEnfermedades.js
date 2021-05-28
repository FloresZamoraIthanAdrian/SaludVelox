console.log('Deteccion de enfermedades/Transtornos Mentales');

function procesarEnfermedades() {
    //El array de respuestas se iran agregando las respuestas del usuario
    //que este haya seleccionado el los inputs tipo radio
    var respuestas = [];
    //Formulario es un array de los elementos del formulario de deteccion de enfermedades
    //"Formulario.jsp"
    formulario = document.getElementById('formE').elements;
    
    //Se recorren los elementos del formulario uno por uno
    for (var i = 0; i < formulario.length; i++) {
        //Si el elemento del formulario es un input radio y parte seleccionado
        //lo agrega al array de respuestas
        if (formulario[i].type == "radio" && formulario[i].checked) {
            respuestas.push(formulario[i].value);
        }
    }
    //Imprime por consola el array de las respuestas
    //Imprimira la longitud y los valores
    console.log(respuestas);
}
