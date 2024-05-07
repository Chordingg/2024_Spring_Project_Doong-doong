package com.doongdoong.web.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {
	
	@GetMapping("myinfo")
	public String myInfo() {
		
		
		return "member/myinfo";
	}

}
