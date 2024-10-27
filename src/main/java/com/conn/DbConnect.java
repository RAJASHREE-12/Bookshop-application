package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
<<<<<<< HEAD
import java.sql.SQLException;

public class DbConnect {
    
    private static Connection conn;

    public static Connection getConn() {
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Attempt to establish a connection to the MySQL database
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook", "root", "Mama@12345");

            // If connection was successful
            System.out.println("Database connected successfully!");

        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found. Add the connector jar to your project.");
            e.printStackTrace();

        } catch (SQLException e) {
            System.out.println("Failed to connect to the database. Check your connection details.");
            e.printStackTrace();
        }

        return conn;
    }
  

=======

public class DbConnect {
   
	private static Connection conn;
	
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook", "root","patra@2002");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return conn;
	}
>>>>>>> 40f928e672fb890c2efc623c71ce8cdee193d0db
}
