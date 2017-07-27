
package hib;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
import table.*;

public class HibDAOLayer {
    private static Configuration cfg;
    private static SessionFactory sf;
        
    static {
        try {
            cfg=new Configuration();
        
            cfg.addAnnotatedClass(table.Candidate.class);
            cfg.addAnnotatedClass(table.Voter.class);
            cfg.addAnnotatedClass(table.Email.class);
            //cfg.addAnnotatedClass(table.loginops.class);
            cfg.configure();
           sf =cfg.buildSessionFactory();
        
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static Configuration getHinConfig(){
        return cfg;
    }
    
    public static SessionFactory getHibSessionFactory(){
        return sf;
    }
    
    public static Session getHibSession(){
        Session session=sf.openSession();
        return session;
        
    }


    }