package Chat;

import Usuario.DecoderMensaje;
import Usuario.EncoderMensaje;
import Usuario.Mensaje;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value = "/chatVelox", encoders = {EncoderMensaje.class},
                                 decoders = {DecoderMensaje.class})

public class Chat {
    
    private static final List<Session> conectados = new ArrayList<>();
    
    @OnOpen
    public void Inicio(Session sesion){
        conectados.add(sesion);
    }
    
    @OnClose
    public void Cerrar(Session sesion){
        conectados.remove(sesion);
    }
    
    @OnMessage
    public void mensaje(Mensaje mensaje) throws IOException, EncodeException{
        try{
        for(Session sesion : conectados){
            sesion.getBasicRemote().sendObject(mensaje);
        }
        }catch(Exception e){
            System.out.println("Error en ...");
            System.out.println(e.getMessage());
        }
    }
    
}
