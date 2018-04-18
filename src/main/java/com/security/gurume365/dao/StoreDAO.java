package com.security.gurume365.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.security.gurume365.mapper.StoreMapper;
import com.security.gurume365.vo.Store;

@Repository
public class StoreDAO {

	@Autowired
	SqlSession sqlsession;
	
	public void insertStore(Store store) {
		
		StoreMapper storemapper=sqlsession.getMapper(StoreMapper.class);
		try {
			storemapper.insertStore(store);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public Store selectStore(String id){
		StoreMapper mapper=sqlsession.getMapper(StoreMapper.class);
		Store store=new Store();
		try {
			mapper.selectStore(id);
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return store;
	}
	
	public ArrayList<Store> storeList(){
		StoreMapper mapper=sqlsession.getMapper(StoreMapper.class);
		ArrayList<Store>slist=new ArrayList<>();
		try {
			slist=mapper.storeList();
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return slist;
	}
	
	public ArrayList<Store> gradeList(){
		StoreMapper mapper=sqlsession.getMapper(StoreMapper.class);
		ArrayList<Store>slist=new ArrayList<>();
		try {
			slist=mapper.gradeList();
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return slist;	
	}
	
	public ArrayList<Store> hitsList(){
		StoreMapper mapper=sqlsession.getMapper(StoreMapper.class);
		ArrayList<Store>slist=new ArrayList<>();
		try {
			slist=mapper.hitsList();
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return slist;	
	}
	
	
	
		
}
	

