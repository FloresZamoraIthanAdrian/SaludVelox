package Control;

import Usuario.Enfermedad;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AccionesEnfermedad {
    
    public static Enfermedad listarTranstornosUsuarios(int id_usu){
        
        Enfermedad enf = new Enfermedad();

        try{
            
            Connection con = Conexion.getConnection();
            String q = "select * from enfermedades where id_enfermedad = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id_usu);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                enf.setDepresion(rs.getInt("depresion"));
                enf.setAnsiedad(rs.getInt("ansiedad"));
                enf.setTc_alimentaria(rs.getInt("tc_alimentaria"));
                enf.setT_conducta(rs.getInt("t_conducta"));
                enf.setTda_tdah(rs.getInt("tda_tdah"));
                enf.setDislexia(rs.getInt("dislexia"));
                enf.setAutismo(rs.getInt("autismo"));
                enf.setBipolaridad(rs.getInt("bipolaridad"));
                enf.setAsperger(rs.getInt("asperger"));
                enf.setT_obsesivo_compulsivo(rs.getInt("t_obsesivo_compulsivo"));
                
            }
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al listar las enfermedades del usuario");
            System.out.println(ed.getMessage());
        }
        
        return enf;
    }
    
    public static Enfermedad padecimientosGeneralesDepresion(){
        Enfermedad enf = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) depresion from enfermedades where depresion > 0";
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
            String q = "select count(*) ansiedad from enfermedades where ansiedad > 0";
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
            String q = "select count(*) tc_alimentaria from enfermedades where tc_alimentaria > 0";
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
            String q = "select count(*) t_conducta from enfermedades where t_conducta > 0";
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
            String q = "select count(*) tda_tdah from enfermedades where tda_tdah > 0";
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
            String q = "select count(*) dislexia from enfermedades where dislexia > 0";
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
            String q = "select count(*) autismo from enfermedades where autismo > 0";
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
            String q = "select count(*) bipolaridad from enfermedades where bipolaridad > 0";
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
            String q = "select count(*) asperger from enfermedades where asperger > 0";
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
            String q = "select count(*) t_obsesivo_compulsivo from enfermedades where t_obsesivo_compulsivo > 0";
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
    
}
