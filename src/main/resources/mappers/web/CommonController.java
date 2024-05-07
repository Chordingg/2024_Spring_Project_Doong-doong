package com.doongdoong.web;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CommonController {
	

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		
		log.info("-------------------------------------");
		log.info(auth);
		
		model.addAttribute("msg", "접근 권한이 없습니다.");
	}
	
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {
		
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "아이디 / 비밀번호가 틀립니다.");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "정상적으로 로그아웃 되었습니다.");
		}
	}
	
	@GetMapping("/customLogout")
	public void logoutGET() {
		log.info("custom logout.........");
	}
	
	
	
}
