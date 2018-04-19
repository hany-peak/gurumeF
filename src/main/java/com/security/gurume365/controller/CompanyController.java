package com.security.gurume365.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.security.gurume365.vo.Member;
import com.security.gurume365.vo.Users;

@Controller
public class CompanyController {
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
	
	
	@RequestMapping(value="/join/joinInfoPage",method=RequestMethod.GET)
	public String joinInfoPage(Model model, Authentication auth){
			logger.info("회원정보 페이지 접속");
		try {
			auth = SecurityContextHolder.getContext().getAuthentication();
			Member user = (Member) auth.getPrincipal();
			model.addAttribute("id", user.getId());
			model.addAttribute("name", user.getName());
			model.addAttribute("birth", user.getDate_of_birth());
			model.addAttribute("phone", user.getPhone());
			logger.info(""+user.getId());
			logger.info(""+user.getDate_of_birth());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "join/joinInfoPage";
	}
	
	
	@RequestMapping(value="/join/jusoPopup",method=RequestMethod.GET)
	public String jusoPopup(){
		return "join/jusoPopup";
	}
	
	@RequestMapping(value="/join/jusoPopup",method=RequestMethod.POST)
	public String jusoPopup(Model model){
		
		return "join/jusoData";
	}
	
	@RequestMapping(value="/join/companyInfo", method=RequestMethod.GET)
	public String companyInfoPage() {
		
		return "join/companyInfo";
	}
	
	
	
}
