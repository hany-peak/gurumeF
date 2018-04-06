package com.security.gurume365.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.security.gurume365.dao.FloorDAO;
import com.security.gurume365.vo.FloorLayout;
import com.security.gurume365.vo.FloorTable;


@Controller
public class FloorController {
	
	@Autowired
	FloorDAO floorDAO;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/floor/floor_edit", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "floor/floor_edit";
	}
	
	
/*	@RequestMapping(value = "/floor/setFloorSize", method = RequestMethod.POST)
	@ResponseBody
	public int setFloorSize(float floorH, float floorW, int floor_no, HttpSession session) {
		int shop_no;
		
		Restaurant restaurant = (Restaurant)session.getAttribute("restaurant");
		shop_no = restaurant.shop_no; 
		
		session.setAttribute("floor_H", floorH);
		session.setAttribute("floor_W", floorW);
		
		
		return 1;
		
	}
	
	@RequestMapping(value = "/floor/getFloorSize", method = RequestMethod.GET)
	@ResponseBody
	public int getFloorSize(HttpSession session) {
		int shop_no;
		Restaurant restaurant = (Restaurant)session.getAttribute("restaurant");
		shop_no = restaurant.shop_no; 
		플로어 탭 추가 시에 모든 플로어 정보 불러 올 수 있도록 shop_no를 받아 쿼리
		 * 플로어 객체의 리스트로 반환
		 
		
		float floorH = 10, floorW = 10;
		
		
		return 1;
		
	}
	
	
	@RequestMapping(value = "/floor/createTableLayout", method = RequestMethod.GET)
	@ResponseBody
	public String getValidTableNo(HttpSession session) {
		String tableNo = "02";
		
		return tableNo;
	}*/
	
	@RequestMapping(value = "/floor/saveFloorLayout", method = RequestMethod.POST)
	@ResponseBody
	public int saveFloorLayout(String jsonData, int floorNo, double floorH, double floorW, HttpSession session) {
		
		int result = 0;
		
		FloorLayout floor = new FloorLayout();
		floor.setFloor_no(floorNo);
		floor.setShop_no(123); // 세션에서 받아오는게 좋을까...
		floor.setFloor_height(floorH);
		floor.setFloor_width(floorW);
		
		ArrayList<FloorTable> tables = new ArrayList<>();
		
		String jsonStr = jsonData.replace("\"", "");
		jsonStr = jsonStr.replace("[", "");
		jsonStr = jsonStr.replace("]", "");
		
		ArrayList<String> strList = new ArrayList<String>(Arrays.asList(jsonStr.split(",")));
		for(String str : strList) {
			FloorTable table = new FloorTable();
			table.setShop_no(floor.getShop_no());
			table.setFloor_no(floor.getFloor_no());
			table.setPos_x((int)Double.parseDouble(str.split("/")[0]));
			table.setPos_y((int)Double.parseDouble(str.split("/")[1]));
			table.setLength(Integer.parseInt(str.split("/")[2]));
			table.setWidth(Integer.parseInt(str.split("/")[3]));
			table.setTable_shape(str.split("/")[4]);
			table.setDegree((int)Double.parseDouble(str.split("/")[5]));
			table.setPerson_min(Integer.parseInt(str.split("/")[6]));
			table.setPerson_max(Integer.parseInt(str.split("/")[7]));
			table.setTable_no(Integer.parseInt(str.split("/")[8].replaceAll("draggable-table", "")));
			
			logger.info(table + "");
		}
		logger.info(floor + "");
		
		// result = floorDAO.
		
		
		
		/*플로어/테이블 DAO 핸들링*/
		
		
		return result;
	}
	
	
	@RequestMapping(value = "/floor/loadFloor", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> loadFloor() {
		
		/* 가게 번호와 플로어 번호를 받아와서 해당 플로어 레이아웃을 반환
		 * 
		 * 
		 * 더미 데이터*/
		
		HashMap<String, Object> jsonMap = new HashMap<>();
		
		FloorLayout floor = new FloorLayout(2, 124, 18.5, 25);
		ArrayList<FloorTable> tables = new ArrayList<>();
		tables.add(new FloorTable(floor.getShop_no(), floor.getFloor_no(), 23, 77, 40, 40, "rect", 0, 1, 2, 1, ""));
		tables.add(new FloorTable(floor.getShop_no(), floor.getFloor_no(), 48, 20, 40, 70, "rect", 0, 2, 4, 2, ""));
		tables.add(new FloorTable(floor.getShop_no(), floor.getFloor_no(), 60, 35, 60, 60, "circle", 0, 4, 6, 3, ""));
		
		jsonMap.put("floorInfo", floor);
		jsonMap.put("tablesInfo", tables);
		
		
		return jsonMap;
	}
	
	

	@RequestMapping(value = "/floor/floor_pop", method = RequestMethod.GET)
	public String floor_pop(Locale locale, Model model) {
		
		
		return "floor/floor-popup";
	}

	
	
}


/*
 * 
 * 1. 레이아웃/뷰 구성
 * 2. 플로어 사이즈 입력, 영역 설정
 * 3. 테이블 아이콘 프리셋, 화면 영역과 실제 플로어 사이즈 스케일에 따라...
 * 4. 테이블 아이콘을 플로어 영역으로 끌어다 넣으면 그 위치(좌표) 받아오기
 * 5. 
 * 
 * 테이블 위치가 음수나 100이상이 되지 않게 하기
 * 
 * 
 * */

