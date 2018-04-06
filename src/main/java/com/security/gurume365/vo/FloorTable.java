package com.security.gurume365.vo;

public class FloorTable {
	int shop_no;
	int floor_no;
	int pos_x, pos_y;
	double length, width;
	String table_shape;
	int degree;
	int person_min, person_max;
	int table_no;
	String currentsit;
	
	public FloorTable() {
		
	}
	
	public FloorTable(int shop_no, int floor_no, int pos_x, int pos_y, double length, double width,
			String table_shape, int degree, int person_min, int person_max, int table_no, String currentsit) {
		super();
		this.shop_no = shop_no;
		this.floor_no = floor_no;
		this.pos_x = pos_x;
		this.pos_y = pos_y;
		this.length = length;
		this.width = width;
		this.table_shape = table_shape;
		this.degree = degree;
		this.person_min = person_min;
		this.person_max = person_max;
		this.table_no = table_no;
		this.currentsit = currentsit;
	}

	public int getShop_no() {
		return shop_no;
	}

	public void setShop_no(int shop_no) {
		this.shop_no = shop_no;
	}

	public int getFloor_no() {
		return floor_no;
	}

	public void setFloor_no(int floor_no) {
		this.floor_no = floor_no;
	}

	public int getPos_x() {
		return pos_x;
	}

	public void setPos_x(int pos_x) {
		this.pos_x = pos_x;
	}

	public int getPos_y() {
		return pos_y;
	}

	public void setPos_y(int pos_y) {
		this.pos_y = pos_y;
	}

	public double getLength() {
		return length;
	}

	public void setLength(double length) {
		this.length = length;
	}

	public double getWidth() {
		return width;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public String getTable_shape() {
		return table_shape;
	}

	public void setTable_shape(String table_shape) {
		this.table_shape = table_shape;
	}

	public int getDegree() {
		return degree;
	}

	public void setDegree(int degree) {
		this.degree = degree;
	}

	public int getPerson_min() {
		return person_min;
	}

	public void setPerson_min(int person_min) {
		this.person_min = person_min;
	}

	public int getPerson_max() {
		return person_max;
	}

	public void setPerson_max(int person_max) {
		this.person_max = person_max;
	}

	public int getTable_no() {
		return table_no;
	}

	public void setTable_no(int table_no) {
		this.table_no = table_no;
	}

	public String getCurrentsit() {
		return currentsit;
	}

	public void setCurrentsit(String currentsit) {
		this.currentsit = currentsit;
	}

	@Override
	public String toString() {
		return "FloorTable [shop_no=" + shop_no + ", floor_no=" + floor_no + ", pos_x=" + pos_x + ", pos_y=" + pos_y
				+ ", length=" + length + ", width=" + width + ", table_shape=" + table_shape + ", degree=" + degree
				+ ", person_min=" + person_min + ", person_max=" + person_max + ", table_no=" + table_no
				+ ", currentsit=" + currentsit + "]";
	}
		
}
