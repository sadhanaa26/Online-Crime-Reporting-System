
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
public class CP {
    static Connection con;
    public static Connection createC(){
        try{
           //load the driver
           Class.forName("com.mysql.cj.jdbc.Driver");

           //create the connection....
            String user = "root";
            String password = "Anuradha123";
            String url = "jdbc:mysql://localhost:3306/user?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true";
            con = DriverManager.getConnection(url,user,password);
        }
        catch (ClassNotFoundException | SQLException e){
            System.out.println("Exception "+e);
        }
        return con;
    }
}
