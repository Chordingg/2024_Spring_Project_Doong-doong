package com.doongdoong.web.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sample")
public class SecurityController {

	@GetMapping("/all")
	public void doAll() {
		log.info("all..................");
	}
	
	@GetMapping("/user")
	public void doUser() {
		log.info("user..................");
	}

	@GetMapping("/admin")
	public void doAdmin() {
		log.info("admin..................");
	}
}
