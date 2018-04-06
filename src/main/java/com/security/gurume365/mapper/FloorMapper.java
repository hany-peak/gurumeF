package com.security.gurume365.mapper;

import org.apache.ibatis.annotations.Param;

import com.security.gurume365.vo.FloorLayout;

public interface FloorMapper {
	
	public FloorLayout loadFloor(FloorLayout floor);
	
}
