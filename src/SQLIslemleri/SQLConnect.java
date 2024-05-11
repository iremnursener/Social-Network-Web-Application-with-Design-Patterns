/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQLIslemleri;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MONSTER
 */
public class SQLConnect {
    final String KULLANICI_ADI="root";
    final String PAROLA="";
    final String HOST="localhost";
    final String JDBC="jdbc:mysql://";
    final String DRIVER="com.mysql.cj.jdbc.Driver";
    final Integer PORT=3306;
    
    
    String DBIsmi;
    String bağlantıURL;
    Connection baglantı;
    PreparedStatement komuttamamlayıcı;

    public SQLConnect(String DBIsmi) {
        this.DBIsmi = DBIsmi;
        DBBaglantıKur();
    }
    
    
    
    
    public void DBBaglantıKur(){
    
        try {
            Class.forName(DRIVER);
            bağlantıURL=JDBC+HOST+":"+PORT + "/"+ DBIsmi;
            baglantı=(Connection) DriverManager.getConnection(bağlantıURL,KULLANICI_ADI,PAROLA);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SQLConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
}
