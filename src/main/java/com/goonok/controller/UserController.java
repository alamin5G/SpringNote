package com.goonok.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.goonok.dao.NotesDao;
import com.goonok.entity.Notes;
import com.goonok.entity.User;

@Controller
@RequestMapping("/user/")
public class UserController {

	private String createdTime;
	
	@Autowired
	private NotesDao notesDao;

	@RequestMapping("/addNote")
	public String addNote() {
		
		return "add-note";
	}
	
	@RequestMapping(path = "addingNoteProcess", method = RequestMethod.POST)
	public String addingNotesProcess(@ModelAttribute Notes note, HttpSession session) {
		
		User user = (User) session.getAttribute("isLoginSuccess");
		note.setUser(user);
		
		createdTime = LocalDateTime.now().toString();
		note.setCreatedTime(createdTime);
		note.setUpdatedTime(createdTime);
		
		int i = notesDao.saveNote(note);
		
		if(i>0) {
			session.setAttribute("note" , "Note added successfully");
			return "redirect:/user/addNote";
		}else {
			session.setAttribute("note" , "Something went wrong!!");
			return "redirect:/user/addNote";
		}
	}
	
	
	@RequestMapping("/viewNotes")
	public String viewNotes(HttpSession session, Model model) {
		User user = (User) session.getAttribute("isLoginSuccess");
		List<Notes> notes = notesDao.getAllNoteByUser(user);
		model.addAttribute("notes", notes);
		return "view-notes";
	}
	
	@RequestMapping(path = "editNote")
	public String editNote(@RequestParam("id") int id, Model model, HttpSession session) {
		Notes note = notesDao.getNoteById(id);
		model.addAttribute("notes", note);
		return "edit-note";
	}
	
	@RequestMapping( path = "noteUpdated", method = RequestMethod.POST)
	public String updateNote(@ModelAttribute Notes note, HttpSession session) {
		
		User user = (User) session.getAttribute("isLoginSuccess");
		note.setUser(user);
		note.setCreatedTime(createdTime);
		note.setUpdatedTime(LocalDateTime.now().toString());
		notesDao.updateNotes(note);
		
		session.setAttribute("msg", "Note updated successfully!");
		
		return "redirect:/user/viewNotes";		
	}
	
	@RequestMapping(path = "deleteNote")
	public String deleteNote(@RequestParam("id") int id, HttpSession session) {
		
		notesDao.deleteNote(id);
		session.setAttribute("msg", "note deleted successfully!");
		return "redirect:/user/viewNotes";
	}
	
	@RequestMapping("/user-logout")
	public String logout(HttpSession session) {
		session.removeAttribute("isLoginSuccess");
		session.setAttribute("lgn", "Successfully Logout!");
		return "redirect:/user-login";
	}
}
