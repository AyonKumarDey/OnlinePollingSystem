
package table;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Candidate {
    @Id
    private String cid;
    private String symbol;
    private  String cname;
    private String pass;
    private int age;
    private String sex;
    private String city;
    private int count;

    public Candidate(){}
    public Candidate(String cid, String symbol, String cname, String pass, int age, String sex, String city, int count) {
        this.cid = cid;
        this.symbol = symbol;
        this.cname = cname;
        this.pass = pass;
        this.age = age;
        this.sex = sex;
        this.city = city;
        this.count = count;
    }
    
    
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    
    
}
