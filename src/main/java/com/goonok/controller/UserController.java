package com.goonok.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/")
public class UserController {


	@RequestMapping("/addNote")
	public String addNote() {
		
		return "add-note";
	}
	
	@RequestMapping("/viewNotes")
	public String viewNotes() {
		
		return "view-notes";
	}
	
	@RequestMapping("editNote")
	public String editNote() {
		
		return "edit-note";
	}
	
	@RequestMapping("deleteNote")
	public String deleteNote() {
		
		return "redirect:/viewNotes";
	}
	
	@RequestMapping("/user-logout")
	public String logout(HttpSession session) {
		session.removeAttribute("isLoginSuccess");
		session.setAttribute("lgn", "Successfully Logout!");
		return "redirect:/user-login";
	}
}
