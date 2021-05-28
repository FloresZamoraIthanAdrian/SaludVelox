console.log('Deteccion de enfermedades/Transtornos Mentales');

var formularioEnfermedades = document.getElementById('formE').elements;
console.log(formularioEnfermedades.length);

function deteccion(formEN) {
    //formularioEnfermedades.forEach(element => console.log(element));
    for (var i = 0; i < formularioEnfermedades.length; i++) {
        if (formularioEnfermedades[i].type == "radio" && formularioEnfermedades[i].checked){
                alert(formularioEnfermedades.value)
        }
    }
}
