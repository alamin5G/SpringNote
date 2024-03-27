package com.goonok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

	@RequestMapping("/hompage")
	public String homepage() {
		
		return "home";
	}
	
	@RequestMapping("/user-login")
	public String loginPage() {
		
		return "login";
	}
	
	
	@RequestMapping("user-registration")
	public String registerPage() {
		
		return "register";
	}
	
	@RequestMapping("/addNote")
	public String addNote() {
		
		return "add-note";
	}
	
	@RequestMapping("/viewNotes")
	public String viewNotes() {
		
		return "view-notes";
	}
}
