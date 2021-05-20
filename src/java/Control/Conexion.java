package Control;

import java.sql.*;

public class Conexion {
    
    public static Connection getConnection(){
        
        String url, userName, password;
        url = "jdbc:mysql://localhost/velox";
        userName = "root";
        password = "tutankamon5728118064";
        
        Connection con = null;
        
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            System.out.println("Conexion a la BD exitosa");
            
        }catch(Exception e){
            System.out.println("Error al conectarse con la BD");
            System.out.println(e.getMessage());
        }
        return con;
    }
    
}
