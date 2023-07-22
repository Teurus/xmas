package xmass;
    
    import java.sql.Connection;
    import java.sql.DriverManager;

public class Base_Datos {
    Connection SQLConexion;
    
    public Base_Datos(){
        
        String host = "localhost";
        String puerto = "3306";
        String nombredb= "xmas";
        
        String usuario = "root";
        String pass = "";
        
        String driver = "com.mysql.cj.jdbc.Driver";
        String databaseURL = "jdbc:mysql://"+host+":"+puerto+"/"+nombredb+"?useSSL=false";
        
        try{
            Class.forName(driver);
            SQLConexion = DriverManager.getConnection(databaseURL, usuario, pass);
            System.out.println("Base de datos conectada");
        }catch(Exception ex){
            
        }
        
    }
    
    public Connection getConectarDB(){
        return SQLConexion;
    }
    
}
