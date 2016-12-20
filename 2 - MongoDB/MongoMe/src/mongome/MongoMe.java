/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mongome;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.ServerAddress;

import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoCollection;

import org.bson.Document;

import com.mongodb.client.MongoCursor;
import static com.mongodb.client.model.Filters.*;
import com.mongodb.client.result.DeleteResult;
import static com.mongodb.client.model.Updates.*;
import com.mongodb.client.result.UpdateResult;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author João
 */
public class MongoMe {

    /**
     * @param args the command line arguments
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
     
     public static void main(String args[]) throws ClassNotFoundException, SQLException{
        
        SQLreader getSQL = new SQLreader();
        ArrayList<Train> lista = getSQL.getTrains();
        
        for (Train t: lista)
            System.out.println(t);
        
    }
}
