package com.goonok.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goonok.dao.NotesDao;
import com.goonok.entity.Notes;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Autowired
	private NotesDao notesDao;

	@RequestMapping("/addNote")
	public String addNote() {
		
		return "add-note";
	}
	
	@RequestMapping(path = "addingNoteProcess", method = RequestMethod.POST)
	public String addingNotesProcess(@ModelAttribute Notes note, HttpSession session) {
		
		int i = notesDao.saveNote(note);
		if(i>0) {
			session.setAttribute("msg" , "Note added successfully");
			return "redirect:/addNote";
		}else {
			session.setAttribute("msg" , "Something went wrong!!");
			return "redirect:/addNote";
		}
		
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
