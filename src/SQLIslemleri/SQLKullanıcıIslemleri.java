/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQLIslemleri;

import Users.User;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author MONSTER
 */
public class SQLKullanıcıIslemleri extends SQLConnect {
    
    private final String KULLANICI_ADI_SIFRESİ="SELECT * FROM kullanıcı WHERE kullanıcıAdı=? AND kullanıcıSifre=?";
    private final String KULLANICI_EKLE = "INSERT INTO kullanıcı (age, name, kullanıcıAdı, kullanıcıSifre) VALUES (?, ?, ?, ?)";
    
    
    
    

    public SQLKullanıcıIslemleri(String DBIsmi) {
        super(DBIsmi);
    }
    
    
    public User kullanıcıBul(String girilenKullanıcıAdı,String girilenKullanıcıSifre) throws SQLException{
        User user =null;
        
        komuttamamlayıcı=baglantı.prepareStatement(KULLANICI_ADI_SIFRESİ);
        komuttamamlayıcı.setString(1,girilenKullanıcıAdı);
        komuttamamlayıcı.setString(2, girilenKullanıcıSifre);
        ResultSet sonuc=komuttamamlayıcı.executeQuery();
        
        while(sonuc.next()){
        user =new User(
                sonuc.getInt("age"),
                sonuc.getString("name"),
                sonuc.getString("kullanıcıAdı"),
                sonuc.getString("kullanıcıSifre"));
        }
        
       // user=new User(22, "Tuna", "tuna", "123789");
        return user;
    }
    public boolean yeniKullanıcıEkle(String name, String username, String password, int age) {
    try {
        String query = "INSERT INTO kullanıcı (age, name, kullanıcıAdı, kullanıcıSifre) VALUES (?, ?, ?, ?)";
        komuttamamlayıcı = baglantı.prepareStatement(query);
        komuttamamlayıcı.setInt(1, age);
        komuttamamlayıcı.setString(2, name);
        komuttamamlayıcı.setString(3, username);
        komuttamamlayıcı.setString(4, password);
        komuttamamlayıcı.executeUpdate();
        return true;
    } catch (SQLException ex) {
        System.out.println("Yeni kullanıcı ekleme hatası: " + ex.getMessage());
        return false;
    }
}


    
}
