function validarRegistro(formularioRegistro){

    verificarDatos = true;

    if(formularioRegistro.Nombre.value.length > 30 || formularioRegistro.Nombre.value.length < 6){
        verificarDatos = false;
        alert("El campo de nombre tiene un maximo de 30 caracteres y minimo de 6");
        return false;
    }
    
    if(formularioRegistro.appat.value.length > 30 || formularioRegistro.appat.value.length < 6){
        verificarDatos = false;
        alert("El campo de apellido paterno tiene un maximo de 30 caracteres y minimo de 6");
        return false;
    }
    
    if(formularioRegistro.apmat.value.length > 30 || formularioRegistro.apmat.value.length < 6){
        verificarDatos = false;
        alert("El campo de apellido materno tiene un maximo de 30 caracteres y minimo de 6");
        return false;
    }
    
    if(formularioRegistro.edad.value < 14){
        verificarDatos = false;
        alert("Registre una edad mayor a 14 años");
        return false;
    }
    
    if(formularioRegistro.edad.value > 99){
        verificarDatos = false;
        alert("La edad limite es de 99 años");
        return false;
    }
    
    if(formularioRegistro.semestre.value < 1){
        verificarDatos = false;
        alert("Dato no valido en el campo de semestre");
        return false;
    }
    
    if(formularioRegistro.semestre.value > 6){
        verificarDatos = false;
        alert("Dato no valido en el campo de semestre");
        return false;
    }

    if(formularioRegistro.Usuario.value.length > 20 || formularioRegistro.Usuario.value.length < 6){
        verificarDatos = false;
        alert("El campo de usuario tiene un maximo de 20 caracteres y minimo de 6");
        return false;
    }

    if(formularioRegistro.Contraseña.value.length > 20 || formularioRegistro.Contraseña.value.length < 6){
        alert('La contraseña tiene un maximo de 20 caracteres y minimo de 6');
        return false;
    }

    if(formularioRegistro.Contraseña.value != formularioRegistro.VerificarContraseña.value){
        verificarDatos = false
        alert('La contraseñas deben coincidir');
        return false;
    }

}