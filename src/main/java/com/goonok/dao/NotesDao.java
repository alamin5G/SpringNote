package com.goonok.dao;

import java.util.List;

import com.goonok.entity.Notes;
import com.goonok.entity.User;

public interface NotesDao {

	public int saveNote(Notes note);
	
	public void deleteNote(int id);
	
	public Notes getNoteById(int id);
	
	public List<Notes> getAllNoteByUser(User user);
	
	public void updateNotes(Notes note);
}
