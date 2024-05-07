package com.doongdoong.web.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainPageController {
	
	@GetMapping("mainPage")
	public void mainPage() {
		
	}
	
	@GetMapping("left-sidebar")
	public void leftSideBar() {
		
	}
	
	@GetMapping("right-sidebar")
	public void rightSideBar() {
		
	}
	
	@GetMapping("no-sidebar")
	public void noSideBar() {
		
	}
	
	@GetMapping("introduction")
	public void introduction() {
		
	}
	
}
