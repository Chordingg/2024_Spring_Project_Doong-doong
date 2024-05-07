package com.doongdoong.web.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("productDetails")
public class ProductController {
	
	@GetMapping("photoBook")
	public String productDetails() {
		
		return "product/photoBook";
	}

}
