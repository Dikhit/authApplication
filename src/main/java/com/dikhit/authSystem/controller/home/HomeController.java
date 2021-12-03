package com.dikhit.authSystem.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("user")
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String redirectToLogIn() {
		
		return "redirect:/login";
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHome(ModelMap model) {
		model.get("user");
		return "home";
	}
}
