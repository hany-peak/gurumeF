package com.security.gurume365.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.security.gurume365.vo.FloorLayout;


@Repository
public class FloorDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	/*public int saveFloor(FloorLayout floorLayout) {
		
	}*/
	
	public FloorLayout loadFloor() {
		FloorLayout floor = null;
		
		try{
			FloorMapper mapper = sqlSession.getMapper(FloorMapper.class);
			floor = mapper.loadFloor();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return floor;
	}
	
	
}
