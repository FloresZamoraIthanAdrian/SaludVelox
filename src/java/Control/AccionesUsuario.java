package Control;

import Usuario.Usuario;
import java.sql.*;

public class AccionesUsuario {
    
    public static int registrarUsuario(Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call PruebaInsertar4(?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setString(1, u.getNombre());
            proc.setString(2, u.getAppat());
            proc.setString(3, u.getApmat());
            proc.setInt(4, u.getEdad());
            proc.setInt(5, u.getSemestre());
            proc.setString(6, u.getGenero());
            proc.setString(7, u.getNom_usu());
            proc.setString(8, u.getCorreo());
            proc.setString(9, u.getPass_usu());
            
            //call PruebaInsertar4('Prueba1', 'Ramirez', 'Hernadez', 17, 5, 'Prefiero no decirlo', 'nones123', 'nones123@gmail.com', '123')
            
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
    
    public static Usuario listarDatosUser(int id_usu){
        
        Usuario u = new Usuario();
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "select nom_usu from usuario where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id_usu);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                u.setNom_usu(rs.getString(1));
            }
            
            System.out.println("Exito al listar los datos del usuario");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al conseguir los datos del usuario");
            System.out.println(ed.getMessage());
        }
        return u;
    }
    
    public static int cambiarContrasena(Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            
            String q = "update usuario set pass_usu = ? where correo = ? and pass_usu = ? and id_usu = ?;";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, u.getPass_usu_c());
            ps.setString(2, u.getCorreo());
            ps.setString(3, u.getPass_usu());
            ps.setInt(4, u.getId());
            
            state = ps.executeUpdate();
            System.out.println("Se actualizo la contrasena");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error a cambiar la contrasena del usuario");
            System.out.println(ed.getMessage());
        }
        return state;
    }
    
    public static int editarDatosUsuario(Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call editarUsuarioXD(?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setString(2, u.getPass_usu());
            proc.setInt(3, u.getEdad());
            proc.setInt(4, u.getSemestre());
            proc.setString(5, u.getGenero());
            proc.setString(6, u.getCorreo());
            proc.setString(7, u.getNom_usu());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al editar los datos del usuario");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
}
