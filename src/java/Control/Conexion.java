package Control;

import java.sql.*;

public class Conexion {
    
    public static Connection getConnection(){
        
        String url, userName, password;
        //url = "jdbc:mysql://143.198.166.146/velox";
        url = "jdbc:mysql://143.198.166.146/velox";
        userName = "root";
        password = "n0m3l0";
        //password = "#TUTANKAMON5728118064";
        
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            System.out.println("Conexion a la BD exitosa");
            
        }catch(Exception e){
            System.out.println("Error al conectarse con la BD");
            System.out.println(e.getMessage());
        }
        return con;
    }
    
}
