/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.sql.*;

public class Employee {
    private int id;
    private String name;
    
        public static ArrayList<Employee> getList() throws Exception{
        ArrayList<Employee> list = new ArrayList<>();    
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM Employees ORDER BY FirstName");
        
        while(rs.next()){
            int id = rs.getInt("EmployeeId");
            String name = rs.getString("FirstName");
            Employee a = new Employee(id, name);
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
        ResultSet rs = stmt.executeQuery("SELECT COUNT (*) AS count FROM employees");
        
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        
        return count;
    }

    public Employee(int id, String name) {
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
