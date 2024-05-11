/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ArayuzIslemleri;

import java.util.Objects;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

/**
 *
 * @author MONSTER
 */
public class GirişEkranIslemleri {
   //ComponentDeğişkenler
  private JTextField jTextField_KullanıcıAdı;
  private JTextField jTextField_KurtarmaKodu;
  private JPasswordField jPasswordField_Password;
  
  private String girilenKullanıcı;
  private String girilenPassword;
  private String girilenKurtarmaKodu;
  
  private String sonucMesaj;
  
  
  private String sonucKurtarma_BosAlan;
  private String sonucKurtarma_Mesaj;

    public GirişEkranIslemleri(JTextField jTextField_KullanıcıAdı, JPasswordField jPasswordField_Password) {
        this.jTextField_KullanıcıAdı = jTextField_KullanıcıAdı;
        
        this.jPasswordField_Password = jPasswordField_Password;
        
        
        this.girilenKullanıcı=jTextField_KullanıcıAdı.getText();
        this.girilenPassword=new String(jPasswordField_Password.getPassword());
        
    }
    
    

    public boolean boşGirisKontrol(){
     if(girilenKullanıcı.equals("")&& girilenPassword.equals("")){
     this.sonucMesaj="Kullanıcı Adı veya Şifre girmediniz";
     return false;
     }else{
     this.sonucMesaj="Başarılı";
     return true;
    }
    }
    
     

    public String getSonucMesaj() {
        return sonucMesaj;
    }
}
