package com.customer;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url= "jdbc:mysql://localhost:3306/bank";
	private static String un = "root";
	private static String pw = "dilmi123";
	private static Connection con;

	public static Connection getConnection() {try {
		Class.forName("com.mysql.jdbc.Driver");
		
		con= DriverManager.getConnection(url,un,pw);
	}
	
	catch(Exception e){
		System.out.println("Database connection is unsuccessful!");
	}
	return con;
	}
}
