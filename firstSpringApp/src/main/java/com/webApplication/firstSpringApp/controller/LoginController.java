package com.webApplication.firstSpringApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	//Model
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(ModelMap model){
		//model.put("name", name);
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginSuccess(ModelMap model, @RequestParam String name){
		model.put("name", name); 
		return "welcome";
	}
}
