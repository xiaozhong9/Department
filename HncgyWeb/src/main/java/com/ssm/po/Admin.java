package com.ssm.po;

public class Admin {

	private int id;
	private String name;
	private String account;
	private String password;
	private String email;
	private String phone;
	private int jurisdiction;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Admin(int id, String name, String account, String password, String email,String phone) {
		super();
		this.id = id;
		this.name = name;
		this.account = account;
		this.password = password;
		this.email = email;
		this.phone=phone;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getJurisdiction() {
		return jurisdiction;
	}
	public void setJurisdiction(int jurisdiction) {
		this.jurisdiction = jurisdiction;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", account=" + account + ", password=" + password + ", email="
				+ email + ", phone=" + phone + ", jurisdiction=" + jurisdiction + "]";
	}
	
	
}
