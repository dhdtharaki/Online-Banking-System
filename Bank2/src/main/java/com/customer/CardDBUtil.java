package com.customer;

import java.sql.Connection;

import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.Statement;

public class CardDBUtil {
	private static boolean isSuccess; 
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Card>display(String nic){
		ArrayList <Card>card = new ArrayList<>();
		
		try {
			con= DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from card where nic ='"+nic+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
					int cnum = rs.getInt(1);
					String Name =rs.getString(2);
					String Nic =rs.getString(3);
					String Email =rs.getString(4);
					String Phone =rs.getString(5);
					double Salary =rs.getDouble(6);
					String Ctype =rs.getString(7);
					
					Card c= new Card(cnum,Name,Nic,Email,Phone,Salary,Ctype);
					card.add(c);
				}
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return card;
	}
	
	
	public static boolean insertCardDetails(String name, String nic,String email, String phone,double salary, String ctype){
		
		
		try {
			con= DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO card(name,nic,email,phone,salary,ctype) VALUES('"+name+"','"+nic+"','"+email+"','"+phone+"','"+salary+"','"+ctype+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			con.close();
    	   	stmt.close();
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean updateCardDetails(String cnum,String name, String nic,String email, String phone,String salary, String ctype)	{
boolean isSuccess= false; 
		
		try {
			con= DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE card SET cnum = '"+cnum+"',name = '"+name+"',nic ='"+nic+"' ,email = '"+email+"',phone ='"+phone+"' ,salary ='"+salary+"' ,ctype = '"+ctype+"' WHERE cnum = '"+cnum+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			con.close();
    	   	stmt.close();
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
public static List<Card> getCardDetails(String cnum){
	int convertedCnum = Integer.parseInt(cnum);
	ArrayList <Card> card = new ArrayList<>();
	
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * FROM card WHERE cnum= '"+convertedCnum+"' ";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int cnum1 = rs.getInt(1);
			String name =rs.getString(2);
			String nic =rs.getString(3);
			String email =rs.getString(4);
			String phone =rs.getString(5);
			Double salary =rs.getDouble(6);
			String ctype =rs.getString(7);
			
			Card c = new Card(cnum1,name,nic,email,phone,salary,ctype);
			card.add(c);
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return card;
}
	
public static boolean deleteCardDetails(String cnum)	{
	int convertedCnum = Integer.parseInt(cnum);
	try {
	con= DBConnect.getConnection();
	stmt = con.createStatement();
	String sql = "DELETE FROM card WHERE cnum= '"+convertedCnum+"' ";
	int r = stmt.executeUpdate(sql);
	
	if(r>0) {
		isSuccess = true;
	}
	else {
		isSuccess = false;
	}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	}
}
