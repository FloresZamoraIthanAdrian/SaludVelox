package Control;

import Usuario.Enfermedad;
import Usuario.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AccionesEnfermedad {
    
    public static int controlEnfermedad(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlEnfermedades(?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getId_enfermedad());
            proc.setInt(3, end.getPuntaje());
            proc.setString(4, end.getFecha());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de depresion");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static Enfermedad numUsuarioSDiagnosticados(){
        Enfermedad enfC = new Enfermedad();
        try{
            
            Connection con = Conexion.getConnection();
            String q = "select count(*) nombre from alumnos;";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                enfC.setNum_diagnosticado(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al contar el numero de usuarios diagnosticados");
            System.out.println(ed.getMessage());
        }
        return enfC;
        
    }
    
    public static List<Enfermedad> listarFormulariosRealizados(int id_usu){
        
        List<Enfermedad> listaForms = new ArrayList();

        try{
            
            Connection con = Conexion.getConnection();
            String q = "select fecha, id_enfermedad from registroEnfermedades "
                    + "where id_usu = ? order by id_enfermedad";
            
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id_usu);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                Enfermedad enf = new Enfermedad();
                enf.setFecha(rs.getString(1));
                enf.setId_enfermedad(rs.getInt(2));
                listaForms.add(enf);
                
            }
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al listar las enfermedades del usuario");
            System.out.println(ed.getMessage());
        }
        
        return listaForms;
    }
    
    public static List<Enfermedad> listarTranstornos(){
        
        List<Enfermedad> listaEnfermedades = new ArrayList();

        try{
            
            Connection con = Conexion.getConnection();
            String q = "select nom_enfermedad from enfermedades order by id_enfermedad";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                Enfermedad enf = new Enfermedad();
                enf.setNombre(rs.getString(1));
                listaEnfermedades.add(enf);
                
            }
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al listar las enfermedades del usuario");
            System.out.println(ed.getMessage());
        }
        
        return listaEnfermedades;
    }
    
    public static List<Enfermedad> listarTranstornosUsuarios(int id_usu){
        
        List<Enfermedad> listaEnfermedades = new ArrayList();

        try{
            
            Connection con = Conexion.getConnection();
            String q = "select nom_enfermedad from enfermedades"
                    + " inner join registroEnfermedades on "
                    + "enfermedades.id_enfermedad=registroEnfermedades.id_enfermedad"
                    + " where registroEnfermedades.id_usu = ? and "
                    + "registroEnfermedades.puntaje > enfermedades.puntaje";
            
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id_usu);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                Enfermedad enf = new Enfermedad();
                enf.setNombre(rs.getString(1));
                listaEnfermedades.add(enf);
                
            }
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al listar las enfermedades del usuario");
            System.out.println(ed.getMessage());
        }
        
        return listaEnfermedades;
    }
    
    public static Enfermedad padecimientosGenerales(int num){
        Enfermedad enf = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "{call consultaGeneral(?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, num);
            ResultSet rs = proc.executeQuery();
            if(rs.next()){
                enf.setId_enfermedad(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf;
    }
    
}
