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
    
    public static int controlEstres(Enfermedad end, Usuario u)  {
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controEstres(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlObsesivoCompulsivo(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlOC(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlAsperger(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlAsperger(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlBipolaridad(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlBipolaridad_uwu_(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlAutismo(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlAutismo(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlDislexia(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlDislexiaXD(?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlTDA(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlTDA_nwn_(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlConducta(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlConducta_uwu_(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlConductaAlimentaria(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlConductaAlimentaria_uwu_(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            proc.setInt(12, end.getResp11());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de conducta alimentaria");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlAnsiedad(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlAnsiedad_nwn__(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            proc.setInt(11, end.getResp10());
            proc.setInt(12, end.getResp11());
            
            state = proc.executeUpdate();
            con.close();
            
        }catch(Exception ed){
            System.out.println("Modulo de control de ansiedad");
            System.out.println(ed.getMessage());
        }
        
        return state;
    }
    
    public static int controlDepresion(Enfermedad end, Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call controlDepresion_unu__(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setInt(1, u.getId());
            proc.setInt(2, end.getResp1());
            proc.setInt(3, end.getResp2());
            proc.setInt(4, end.getResp3());
            proc.setInt(5, end.getResp4());
            proc.setInt(6, end.getResp5());
            proc.setInt(7, end.getResp6());
            proc.setInt(8, end.getResp7());
            proc.setInt(9, end.getResp8());
            proc.setInt(10, end.getResp9());
            
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
            String q = "select count(*) id_enfermedad";
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
    
    public static Enfermedad padecimientosGeneralesEstres(){
        Enfermedad enf10 = new Enfermedad();
        try{
            Connection con = Conexion.getConnection();
            String q = "select count(*) estres from enfermedades where estres > 0";
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
