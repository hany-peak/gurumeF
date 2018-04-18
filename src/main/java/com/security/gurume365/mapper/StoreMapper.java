package com.security.gurume365.mapper;

import java.util.ArrayList;

import com.security.gurume365.vo.Store;

public interface StoreMapper {

	public void insertStore(Store store);
	
	public Store selectStore(String id);
	
	public ArrayList<Store> storeList();
	
	public ArrayList<Store> gradeList();
	
	public ArrayList<Store> hitsList();
	
	public ArrayList<Store> resList();
	
}
