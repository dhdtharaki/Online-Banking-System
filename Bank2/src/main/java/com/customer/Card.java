package com.customer;

public class Card {
	private int cnum;
	private String name;
	private String nic;
	private String email;
	private String phone;
	private double salary;
	private String ctype;
	
	public Card(int cnum,String name, String nic, String email, String phone, double salary, String ctype) {
		super();
		this.cnum =cnum;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.salary = salary;
		this.ctype = ctype;
	}
	public int getCnum() {
		return cnum;
	}

	public String getName() {
		return name;
	}
	public String getNic() {
		return nic;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public double getSalary() {
		return salary;
	}

	public String getCtype() {
		return ctype;
	}
	
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setNic(String nic) {
		this.nic = nic;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setSalary(double salary) {
		this.salary = salary;
	}
	
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	
}
