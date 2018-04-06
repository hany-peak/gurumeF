package com.security.gurume365.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreController.class);
	
	// 지역정보 세션 값 zone;
	@RequestMapping(value = "/store/storeMain", method = RequestMethod.GET)
	public String storeMain(HttpSession session, Locale locale, Model model, String selector) {
		logger.info("상점 상세 페이지 이동 완료");
		logger.info("데이터1"+selector);
		session.setAttribute("zone", selector);
		
		return "store/storeMain";
	}
	
	// 노쇼, 음식 종류, 추천테마 정보를 갖고 있는 세션 값 thema
	@RequestMapping(value = "/store/thema", method = RequestMethod.GET)
	public String thema(HttpSession session, Locale locale, Model model, String selector) {
		logger.info("상점 상세 페이지 이동 완료");
		session.setAttribute("thema", selector);
		logger.info("데이터1"+selector);
		
		return "store/themaList";
	}
}
