
package table;

import javax.persistence.*;



@Entity
public class Voter {
    @Id
    private String vid;
    private String pass;
    private String vname;  
    public String role;
    private int age;
    private int flag;
    private String sex;
    private String city;

    public Voter(){}
    public Voter(String vid, String pass, String vname, String role, int age, int flag, String sex, String city) {
        this.vid = vid;
        this.pass = pass;
        this.vname = vname;
        this.role = role;
        this.age = age;
        this.flag = flag;
        this.sex = sex;
        this.city = city;
    }

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    
    
    
}
