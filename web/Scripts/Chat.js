(function(window, document, JSON){
    
    var url = 'ws://' +window.location.host+ '/SaludVeloxG/chatVelox',
        ws = new WebSocket(url),
        mensajes = document.getElementById('conversacion'),
        boton = document.getElementById('btnEnviar'),
        nombre = document.getElementById('usuario'),
        mensaje = document.getElementById('mensaje');
        
    ws.onopen = onOpen;
    ws.onclose = onClose;
    ws.onmessage = onMessage;
    boton.addEventListener('click', enviar);
    
    function onOpen(){
        console.log('Conectado...');
    }
    
    function onClose(){
        console.log('Desconectado...');
    }
    
    function enviar(){
        var msg = {
            nombre: nombre,
            mensaje: mensaje
        };
        
        ws.send(JSON.stringify(msg));
    }
    
    function onMessage(evt){
        var obj = JSON.parse(evt.data),
            msg = 'Nombre: ' +obj.nombre+ ' dice: ' +obj.mensaje;
            mensajes.innerHTML += '<br>' +msg;
    }
    
})(window, document, JSON);

