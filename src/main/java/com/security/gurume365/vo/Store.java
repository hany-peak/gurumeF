package com.security.gurume365.vo;

public class Store {

	private String id;
	private String companyName;
	private String companyNo;
	private String address;
	private String phone;
	private int shopNo;
	private String category;
	private String timeOfOpen;
	private String shopInfo;
	private String grade;
	private int budjet;
	private String comment;
	private String picture;
	
	public Store(String id, String companyName, String companyNo, String address, String phone, int shopNo,
			String category, String timeOfOpen, String shopInfo, String grade, int budjet, String comment,
			String picture) {
		super();
		this.id = id;
		this.companyName = companyName;
		this.companyNo = companyNo;
		this.address = address;
		this.phone = phone;
		this.shopNo = shopNo;
		this.category = category;
		this.timeOfOpen = timeOfOpen;
		this.shopInfo = shopInfo;
		this.grade = grade;
		this.budjet = budjet;
		this.comment = comment;
		this.picture = picture;
	}
	public Store() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTimeOfOpen() {
		return timeOfOpen;
	}
	public void setTimeOfOpen(String timeOfOpen) {
		this.timeOfOpen = timeOfOpen;
	}
	public String getShopInfo() {
		return shopInfo;
	}
	public void setShopInfo(String shopInfo) {
		this.shopInfo = shopInfo;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getBudjet() {
		return budjet;
	}
	public void setBudjet(int budjet) {
		this.budjet = budjet;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "Store [id=" + id + ", companyName=" + companyName + ", companyNo=" + companyNo + ", address=" + address
				+ ", phone=" + phone + ", shopNo=" + shopNo + ", category=" + category + ", timeOfOpen=" + timeOfOpen
				+ ", shopInfo=" + shopInfo + ", grade=" + grade + ", budjet=" + budjet + ", comment=" + comment
				+ ", picture=" + picture + "]";
	}
	
	
}
