package com.goonok.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.goonok.entity.Notes;
import com.goonok.entity.User;

@Repository
public class NotesDaoImpl implements NotesDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	@Override
	public int saveNote(Notes note) {
		int i = (int) hibernateTemplate.save(note);
		return i;
	}

	@Transactional
	@Override
	public void deleteNote(int id) {
		Notes note = hibernateTemplate.get(Notes.class, id);
		hibernateTemplate.delete(note);
	}

	@Override
	public Notes getNoteById(int id) {
		Notes note = hibernateTemplate.get(Notes.class, id);
		return note;
	}

	@Override
	public List<Notes> getAllNoteByUser(User user) {
		List<Notes> list = hibernateTemplate.execute( s -> {
			String hql = "from Notes where user=:usr";
			Query q = s.createQuery(hql);
			q.setEntity("usr", user);
			
			return q.getResultList();
			
		});
		return list;
	}

	@Transactional
	@Override
	public void updateNotes(Notes note) {
		 hibernateTemplate.update(note);
	}
	
	

}
