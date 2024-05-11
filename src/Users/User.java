/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Users;

/**
 *
 * @author MONSTER
 */
public class User {
    private Integer age;
    private String name;
    private String kullanıcıAdı;
    private String kullanıcıSifre;

    public User(Integer age, String name, String kullanıcıAdı, String kullanıcıSifre) {
        this.age = age;
        this.name = name;
        this.kullanıcıAdı = kullanıcıAdı;
        this.kullanıcıSifre = kullanıcıSifre;
    }

    public Integer getAge() {
        return age;
    }

    public String getName() {
        return name;
    }

    public String getKullanıcıAdı() {
        return kullanıcıAdı;
    }

    public String getKullanıcıSifre() {
        return kullanıcıSifre;
    }
    
}
