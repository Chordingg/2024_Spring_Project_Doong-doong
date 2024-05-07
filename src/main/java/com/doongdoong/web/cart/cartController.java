package com.doongdoong.web.cart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class cartController {
	
	@GetMapping("cart")
	public String myInfo() {
		
		
		return "cart/basket";
	}

}
