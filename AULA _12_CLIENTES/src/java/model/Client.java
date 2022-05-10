/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.sql.*;

public class Client {
    private int id;
    private String name;
    
    public static ArrayList<Client> getList() throws Exception{
        ArrayList<Client> list = new ArrayList<>();    
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM Customers ORDER BY FirstName");
        
        while(rs.next()){
            int id = rs.getInt("CustomerId");
            String name = rs.getString("FirstName");
            Client a = new Client(id, name);
            list.add(a);
        }
        rs.close();
        stmt.close();
        con.close();
        
        return list;
    }
    
    public static int getCount() throws Exception{
        int count = 0;
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT (*) AS count FROM Customers");
        
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        
        return count;
    }

    public Client(int id, String name) {
        this.id = id;
        this.name = name;
    }
   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}


