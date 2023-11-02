package com.UserComment;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String URL = "jdbc:mysql://localhost/gaming_webapp";
	private static String username = "root";
	private static String password = "bhtd1996213";
	private static Connection con;
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL,username,password);
			 
			
		}catch(Exception e) {
			System.out.printf("Database connection is not success...");
		}
		
		return con;
	}
	
}