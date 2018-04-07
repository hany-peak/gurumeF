package com.security.gurume365.vo;

public class Users  {
	
	/**
	 * 
	 */
	
	
	private String id;
	private String pw;
	private String name;
	private String dateOfBirth;
	private String phone;
	private String permit;
	private int division;
	private int enabled;	
	
	
	public Users() {
		super();
	}
	public Users(String id, String pw, String name, String dateOfBirth, String phone, String permit, int division,
			int enabled) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.phone = phone;
		this.permit = permit;
		this.division = division;
		this.enabled = enabled;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getPw() {
		return pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate_of_birth() {
		return dateOfBirth;
	}
	public void setDate_of_birth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPermit() {
		return permit;
	}
	public void setPermit(String permit) {
		this.permit = permit;
	}
	public int getDivision() {
		return division;
	}
	public void setDivision(int division) {
		this.division = division;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", pw=" + pw + ", name=" + name + ", date_of_birth=" + dateOfBirth + ", phone="
				+ phone + ", permit=" + permit + ", division=" + division + ", enabled=" + enabled + ", authority="
				 + "]";
	}
}
