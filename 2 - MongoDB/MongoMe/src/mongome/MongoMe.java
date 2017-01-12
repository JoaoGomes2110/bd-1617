/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mongome;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author João
 */
public class MongoMe {

    /**
     * @param args the command line arguments
     */
             
     public static void main(String args[]){
        System.out.println("> Starting..");
        System.out.println("> Checking SQL database..");
        SQLreader getSQL = new SQLreader();
        
        try {
             getSQL.connect();
             getSQL.close();
        } catch (SQLException | ClassNotFoundException ex) {
             System.out.println(">>> Error connecting to databse. Quitting..\n Error: " + ex);
             return;
        } 
        
        System.out.println("> Connection successfull!");        
        
        ArrayList<Train> lista;
        ArrayList<User> listaUsers;
        ArrayList<Reserva> listaReservas;
         try {
             lista = getSQL.getTrains();
             listaUsers = getSQL.getUsers();
             listaReservas = getSQL.getReserva();
         } catch (SQLException | ClassNotFoundException ex) {
             System.out.println(">>> SQL error. Quitting..\n Error: " + ex);
             return;
        } 
        
        MongoWriter mw = new MongoWriter();
        mw.addReserva(listaReservas);
        mw.addComboios(lista);
        mw.addUsers(listaUsers);
        
        System.out.println("All done! Quitting..");
   
        
    }
}
