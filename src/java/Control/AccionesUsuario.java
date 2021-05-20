package Control;

import Usuario.Usuario;
import java.sql.*;
import java.util.*;

public class AccionesUsuario {
    
    public static int registrarUsuario(Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "";
            
        }catch(Exception ed){
            System.out.println("Error al registrar usuario");
            System.out.println(ed.getMessage());
        }
        return state;
    }
    
}
