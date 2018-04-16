package com.security.gurume365.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.security.gurume365.dao.UsersDAO;
import com.security.gurume365.vo.Users;

@Controller
public class CompanyController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	UsersDAO dao;
	
	@RequestMapping(value="/join/joinInfoPage",method=RequestMethod.GET)
	public String joinInfoPage(Principal principal,Model model){
	
		principal=SecurityContextHolder.getContext().getAuthentication();
		Users user=(Users)principal;
		
		model.addAttribute("id", user.getId());
		model.addAttribute("birth", user.getDate_of_birth());
		model.addAttribute("phone", user.getPhone());
		model.addAttribute("name", user.getName());
		return "join/joinInfoPage";
	}
	
	@RequestMapping(value="outConfirm", method=RequestMethod.GET)
	public String usersOutconfirm() {
		
		return "outConfirm";
	}
	
	
	@RequestMapping(value="/join/jusoPopup",method=RequestMethod.GET)
	public String jusoPopup(){
		return "join/jusoPopup";
	}
	
	@RequestMapping(value="/join/jusoPopup",method=RequestMethod.POST)
	public String jusoPopup(Model model,String addrDetail, String roadAddrPart1){
		model.addAttribute("addr1", roadAddrPart1);
		model.addAttribute("addr2", addrDetail);
		return "join/jusoData";
	}
	
	@RequestMapping(value="/join/companyInfo", method=RequestMethod.GET)
	public String companyInfoPage() {
		
		return "join/companyInfo";
	}
}
