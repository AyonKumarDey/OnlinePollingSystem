
package hib;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import table.Candidate;
import table.Voter;


public class TableDataInsert {
    public static void main(String[] args) {
        
        insertCandidate("101",60,"Narendra Modi","Varanasi",0,"123","M","Lotus");
        insertCandidate("102",48,"Arvind Kejriwal","New Delhi",0,"123","M","Broom");
        insertCandidate("103",55,"Raman Singh","Bhilai",0,"123","M","Lotus");
        insertCandidate("104",52,"Mamta Bannerjee","Kolkata",0,"123","F","Trinamol");
        insertCandidate("105",65,"Mulayam Singh Yadav","Lucknow",0,"123","M","Cycle");
        
        insertVoter("1001",45,"KOLKATA",0,"111","user","M","Raju");
        insertVoter("1002",40,"KOLKATA",0,"111","user","F","Sejuti");
        insertVoter("1003",35,"KOLKATA",0,"111","user","M","Amir");
        insertVoter("1004",22,"KOLKATA",0,"111","user","F","Sonali");
        insertVoter("1005",31,"KOLKATA",0,"111","user","M","Rijul");
        insertVoter("1006",55,"KOLKATA",0,"111","user","F","Ananya");
        insertVoter("1007",24,"KOLKATA",0,"111","user","M","Adesh");
        insertVoter("1009",24,"KOLKATA",0,"1234","admin","M","Saurav");
                
    }
    
    static void insertCandidate(String id,int age,String name,String city, int count,String pass,String sex,String sym){
        
        Candidate c=new Candidate();
        c.setCid(id);
        c.setAge(age);
        c.setCity(city);
        c.setCname(name);
        c.setCount(count);
        c.setPass(pass);
        c.setSex(sex);
        c.setSymbol(sym);
        
        Session s=HibDAOLayer.getHibSession();
        Transaction t=s.beginTransaction();       
        s.save(c);       
        t.commit();
        System.out.println("Candidate RECORD SAVED SUCESSFULLY!!! \n");
    }
    
     static void insertVoter(String id,int age,String city, int flag,String pass,String role,String sex,String name){
        
        Voter v=new Voter();
        v.setVid(id);
        v.setAge(age);
        v.setCity(city);
        v.setFlag(flag);
        v.setPass(pass);
        v.setRole(role);
        v.setSex(sex);
        v.setVname(name);
        
        
        Session s=HibDAOLayer.getHibSession();
        Transaction t=s.beginTransaction();       
        s.save(v);       
        t.commit();
        System.out.println("Voter RECORD SAVED SUCESSFULLY!!! \n");
    }
    
}
