package Control;

import Usuario.Usuario;
import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpSession;

public class AccionesUsuario {
    
    public static int registrarUsuario(Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call PruebaInsertar2(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setString(1, u.getNombre());
            proc.setString(2, u.getAppat());
            proc.setString(3, u.getApmat());
            proc.setString(4, u.getCorreo());
            proc.setInt(5, u.getEdad());
            proc.setInt(6, u.getSemestre());
            proc.setString(7, u.getGenero());
            proc.setString(8, u.getNom_usu());
            proc.setString(9, u.getCorreo());
            proc.setString(10, u.getPass_usu());
            
            state = proc.executeUpdate();
            System.out.println("Agregar usuario a dos tablas de manera exitosa");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar usuario");
            System.out.println(ed.getMessage());
        }
        return state;
    }
    
    public static Usuario listarDatosUsuario(int id_usu){
        
        Usuario u = new Usuario();
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "select * from alumnos where id_alumno = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id_usu);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                u.setId(rs.getInt(1));
                u.setNombre(rs.getString(2));
                u.setAppat(rs.getString(3));
                u.setApmat(rs.getString(4));
                u.setCorreo(rs.getString(5));
                u.setEdad(rs.getInt(6));
                u.setSemestre(rs.getInt(7));
                u.setGenero(rs.getString(8));
            }
            
            System.out.println("Exito al listar los datos del usuario");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al conseguir los datos del usuario");
            System.out.println(ed.getMessage());
        }
        return u;
    }
    
}
