package com.security.gurume365.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.security.gurume365.controller.AdminController;
import com.security.gurume365.mapper.FloorMapper;
import com.security.gurume365.mapper.UsersMapper;
import com.security.gurume365.vo.FloorLayout;
import com.security.gurume365.vo.Users;


@Repository
public class FloorDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	SqlSession sqlSession;
	
	/*public int saveFloor(FloorLayout floorLayout) {
		
	}*/
	
	public FloorLayout loadFloor(int shop_no, int floor_no) {
		FloorLayout floor = null;
		FloorLayout floor2 = null;
		floor.setShop_no(shop_no);
		floor.setFloor_no(floor_no);
		logger.info("" + floor);
		try{
			FloorMapper mapper = sqlSession.getMapper(FloorMapper.class);
			floor2 = mapper.loadFloor(floor);
			logger.info("" + floor2);
			
		} catch(Exception e) {
			System.out.println("loadFloor 예외 발생");
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return floor2;
	}
	
	
}
