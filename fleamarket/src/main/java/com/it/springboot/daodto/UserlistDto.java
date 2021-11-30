package com.it.springboot.daodto;

public class UserlistDto {
	private String id;
	private String pw;
	private String phone;
	private String name;
	private String address;
	private String urole;
	private int uno;
	private String aurthory;





	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {return id;}

	public void setId(String id) {this.id = id;}

	public String getPw() {return pw;}

	public void setPw(String pw) {this.pw = pw;}

	public String getPhone() {return phone;}

	public void setPhone(String phone) {this.phone = phone;}

	public String getAddress() {return address;}

	public void setAddress(String address) {this.address = address;}

	public String getUrole() {return urole;}

	public void setUrole(String urole) {this.urole = urole;}

	public int getUno() {return uno;}

	public void setUno(int uno) {this.uno = uno;}

	public String getAuthority() { return aurthory;}

	public void setAurthory(String aurthory) {this.aurthory = aurthory;}
}
