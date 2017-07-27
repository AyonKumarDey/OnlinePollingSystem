
package hib;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import table.*;

public class TableCreater {
    public static void main(String[] args) {
        Configuration cfg = new Configuration();   
        try{
        cfg.addAnnotatedClass(table.Candidate.class);
        cfg.addAnnotatedClass(table.Voter.class);
        cfg.addAnnotatedClass(table.Email.class);
        cfg.configure();
        SchemaExport se=new SchemaExport(cfg);
        se.create(true,true);
        System.out.println("TABLE CREATED!!");
        }catch(Exception e){
            System.out.println("ERROR!!!!");
        }
        
     
    }
    
}
