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
    
    public static Enfermedad padecimientosGeneralesDepresion(){
        Enfermedad enf = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 1";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf.setDepresion(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf;
    }
    
    public static Enfermedad padecimientosGeneralesAnsiedad(){
        Enfermedad enf1 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 2";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf1.setAnsiedad(rs.getInt(1));
            }
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf1;
    }
    
    public static Enfermedad padecimientosGeneralesTa(){
        Enfermedad enf2 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 3";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf2.setTc_alimentaria(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf2;
    }
    
    public static Enfermedad padecimientosGeneralesTc(){
        Enfermedad enf3 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 4";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf3.setT_conducta(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf3;
    }
    
    public static Enfermedad padecimientosGeneralesTDA_TDAH(){
        Enfermedad enf4 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 5";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf4.setTda_tdah(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf4;
    }
    
    public static Enfermedad padecimientosGeneralesDislexia(){
        Enfermedad enf5 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 6";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf5.setDislexia(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf5;
    }
    
    public static Enfermedad padecimientosGeneralesAutismo(){
        Enfermedad enf6 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 7";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf6.setAutismo(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf6;
    }
    
    public static Enfermedad padecimientosGeneralesBipolaridad(){
        Enfermedad enf7 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 8";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf7.setBipolaridad(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf7;
    }
    
    public static Enfermedad padecimientosGeneralesAsperger(){
        Enfermedad enf8 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 9";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf8.setAsperger(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf8;
    }
    
    public static Enfermedad padecimientosGeneralesTobCompulsivo(){
        Enfermedad enf9 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 10";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf9.setT_obsesivo_compulsivo(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf9;
    }
    
    public static Enfermedad padecimientosGeneralesEstres(){
        Enfermedad enf10 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) id_enfermedad from registroEnfermedades where id_enfermedad = 11";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                enf10.setEstres(rs.getInt(1));
            }
            con.close();
        }catch(Exception ed){
            System.out.println("Error al tratar de listar los padecimientos generales");
            System.out.println(ed.getMessage());
        }
        return enf10;
    }
    
}
