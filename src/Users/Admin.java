/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Users;

/**
 *
 * @author MONSTER
 */
public class Admin extends User {
    private Integer adminSifre;

    public Admin(Integer adminSifre, Integer age, String name, String kullanıcıAdı, String kullanıcıSifre) {
        super(age, name, kullanıcıAdı, kullanıcıSifre);
        this.adminSifre = adminSifre;
    }
    
}
