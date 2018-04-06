package com.security.gurume365.vo;

public class FloorLayout {
	int floor_no, shop_no;
	double floor_height, floor_width;
	
	public FloorLayout() {
		
	}
	
	public FloorLayout(int floor_no, int shop_no, double floor_height, double floor_width) {
		super();
		this.floor_no = floor_no;
		this.shop_no = shop_no;
		this.floor_height = floor_height;
		this.floor_width = floor_width;
	}

	public int getFloor_no() {
		return floor_no;
	}

	public void setFloor_no(int floor_no) {
		this.floor_no = floor_no;
	}

	public int getShop_no() {
		return shop_no;
	}

	public void setShop_no(int shop_no) {
		this.shop_no = shop_no;
	}

	public double getFloor_height() {
		return floor_height;
	}

	public void setFloor_height(double floor_height) {
		this.floor_height = floor_height;
	}

	public double getFloor_width() {
		return floor_width;
	}

	public void setFloor_width(double floor_width) {
		this.floor_width = floor_width;
	}

	@Override
	public String toString() {
		return "FloorLayout [floor_no=" + floor_no + ", shop_no=" + shop_no + ", floor_height=" + floor_height
				+ ", floor_width=" + floor_width + "]";
	}
	
}
