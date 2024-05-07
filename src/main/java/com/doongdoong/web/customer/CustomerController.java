package com.doongdoong.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CustomerController {
	
	@GetMapping("customer")
	public String myInfo() {
		
		
		return "customer/customerService";
	}

}
