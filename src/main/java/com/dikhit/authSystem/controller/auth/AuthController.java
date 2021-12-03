package com.dikhit.authSystem.controller.auth;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.dikhit.authSystem.model.User;
import com.dikhit.authSystem.service.auth.AuthService;

@Controller
@SessionAttributes("user")
public class AuthController {
	
	@Autowired
	AuthService authService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogIn() {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogIn(@RequestParam String email, @RequestParam String password, ModelMap model) {
		User currentUser = authService.logIn(email, password);
		if (currentUser != null) {
			model.put("user", currentUser);
			return "redirect:/home";
		}
		else {
			model.put("errorMessage", "Not a user. Please register ");
			return "login";
		}
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "register";
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(
			@RequestParam String name, 
			@RequestParam String email, 
			@RequestParam String password,
			@RequestParam String phoneNumber,
			@RequestParam String address,
			ModelMap model
			
	) {
		User user = new User(name, email, password, phoneNumber, address);
		if(authService.register(user) == 1) {
			return "redirect:/login";
		}
		model.put("errorMessage", "Something went wrong. Please try again !!");
		return "register";
	}
}
