/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mongome;

import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.WriteConcern;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCursor;

import com.mongodb.ServerAddress;
import com.mongodb.*;
import java.util.ArrayList;


/**
 *
 * @author João
 */
public class MongoWriter {

    public MongoWriter() {
        
    }
    
    public void addUsers (ArrayList<User> usersList) {
      
        try{
           MongoClient mongoClient = new MongoClient("localhost",27017);
           DB db = mongoClient.getDB("reserva_bilhetes");
           System.out.println(">> Database connection sucessful!");
           
           DBCollection col = db.getCollection("utilizadores");

           for(User usr: usersList){
               BasicDBObject doc = new BasicDBObject();
               doc.put("nome",usr.getNome());
               doc.put("password",usr.getPassword());
               doc.put("nome",usr.getNome());
               doc.put("email",usr.getEmail());
               doc.put("nif",usr.getNIF());
               doc.put("morada",usr.getMorada());
               col.insert(doc);
               System.out.println("User " + usr.getNome() + " added!");
                 
           }
       } catch (Exception e) {System.out.println(e);}
        
    }
    
    public void addComboios (ArrayList<Train> usersList) {
      
        try{
           MongoClient mongoClient = new MongoClient("localhost",27017);
           DB db = mongoClient.getDB("reserva_bilhetes");
           System.out.println(">> Database connection sucessful!");
           
           DBCollection col = db.getCollection("");

           for(User usr: usersList){
               BasicDBObject doc = new BasicDBObject();
               doc.put("nome",usr.getNome());
               doc.put("password",usr.getPassword());
               doc.put("nome",usr.getNome());
               doc.put("email",usr.getEmail());
               doc.put("nif",usr.getNIF());
               doc.put("morada",usr.getMorada());
               col.insert(doc);
               System.out.println("User " + usr.getNome() + " added!");
                 
           }
       } catch (Exception e) {System.out.println(e);}
        
    }
}
