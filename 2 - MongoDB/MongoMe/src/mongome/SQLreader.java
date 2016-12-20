/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mongome;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import jdk.nashorn.internal.runtime.Version;

/**
 *
 * @author João
 */
public class SQLreader {
    
    private final String url;
    private final String user;
    private final String password;
    
    public SQLreader() {
        this.url = "jdbc:mysql://localhost/reserva_bilhetes";
        this.user = "root";
        this.password = "animal";
    }

    public ArrayList getTrains() throws ClassNotFoundException{
        Connection con = null;
        Statement st = null;
        ResultSet rs_comboios = null;
        ResultSet rs_lugares = null;
        ArrayList<Train> trainList = new ArrayList <>();
        HashMap<String,ArrayList<Seat>> seatList = new HashMap<>();
        
        try {
               Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
               rs_lugares = st.executeQuery("SELECT * FROM lugar_comboio");
               
               while (rs_lugares.next()){
                   int i = 1;
                   while(i <= 3)
                       if(seatList.get(rs_lugares.getString(4)) != null) {
                            seatList.get(rs_lugares.getString(4)).add(
                                         new Seat(rs_lugares.getInt(i++),
                                                  rs_lugares.getInt(i++),
                                                  rs_lugares.getInt(i++)
                            ));
                       }else{
                           ArrayList<Seat> aux = new ArrayList<>();
                           aux.add(new Seat(rs_lugares.getInt(i++),
                                            rs_lugares.getInt(i++),
                                            rs_lugares.getInt(i++)));
                           
                           seatList.put(rs_lugares.getString(4),aux);
                       }
               }

               rs_comboios = st.executeQuery("SELECT * FROM comboio");
               
               while (rs_comboios.next()){
                   int i = 1;
                   while(i <= 3)
                       trainList.add(new Train(rs_comboios.getString(i++),
                                               rs_comboios.getInt(i++),
                                               rs_comboios.getString(i++),
                                               seatList.get(rs_comboios.getString(1))
                                               
                                              
                       ));
               }
        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(Version.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);

        } finally {
            try {
                if (rs_comboios != null && rs_lugares != null) {
                    rs_comboios.close();
                    rs_lugares.close();
                }
                if (st != null) {
                    st.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                Logger lgr = Logger.getLogger(Version.class.getName());
                lgr.log(Level.WARNING, ex.getMessage(), ex);
            }
        }
        return trainList;
       }
    
    public ArrayList getUsers() throws ClassNotFoundException{
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        ArrayList<User> usersList = new ArrayList <>();
        
        try {
               Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
               rs = st.executeQuery("SELECT * FROM cliente");
               
               

               while (rs.next()){
                   int i = 1;
                   while(i <= 6)
                       usersList.add(new User(rs.getString(i++),
                                              rs.getString(i++),
                                              rs.getString(i++),
                                              rs.getString(i++),
                                              rs.getInt(i++),
                                              rs.getString(i++)
                       ));
               }
        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(Version.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);

        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (st != null) {
                    st.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                Logger lgr = Logger.getLogger(Version.class.getName());
                lgr.log(Level.WARNING, ex.getMessage(), ex);
            }
        }
        return usersList;
       }
}

