package com.security.gurume365.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreController.class);
	
	@RequestMapping(value = "/store/storeMain", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("상점 상세 페이지 이동 완료");
		
		return "store/storeMain";
	}
	@RequestMapping(value = "/store/storeList", method = RequestMethod.GET)
	public String storeList(Locale locale, Model model) {
		logger.info("상점 상세 페이지 이동 완료");
		
		return "store/storeList";
	}

}
