package com.webApplication.firstSpringApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


public class homeController {
	
	@RequestMapping("/login")
	public String homePage() {
		return "login";
	}

}
