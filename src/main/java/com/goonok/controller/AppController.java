package com.goonok.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.goonok.dao.UserDao;
import com.goonok.entity.User;

@Controller
public class AppController {
	
	@Autowired
	UserDao userDao;

	@RequestMapping("/hompage")
	public String homepage() {
		
		return "home";
	}
	
	@RequestMapping("/user-login")
	public String loginPage() {
		
		return "login";
	}
	
	@RequestMapping(path = "/login-process", method = RequestMethod.POST)
	public String loginProcess(@RequestParam("email") String eml, @RequestParam("password") String pass, HttpSession session) {
		
		User user = userDao.loginUser(eml, pass);
		if(user != null) {
			session.setAttribute("isLoginSuccess", user);
			return "redirect:/viewNotes";
		}else {
			session.setAttribute("lgn", "Login Failed! Email or Password is wrong!");
			return "redirect:/user-login";
		}
		
		
	}
	
	
	@RequestMapping("user-registration")
	public String registerPage() {
		
		return "register";
	}
	
	@RequestMapping(path = "/registration-process", method = RequestMethod.POST)
	public String registrationProcess(@ModelAttribute User user, HttpSession session) {
		int i = userDao.registerUser(user);
		
		if(i > 0) {
			session.setAttribute("msg", "Your registraion is success! Please Login" );
			return "redirect:/user-login";
		}else{
			session.setAttribute("msg", "Registration Failed!");
			return "redirect:/user-registration";
		}
		
	}
	
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
}
