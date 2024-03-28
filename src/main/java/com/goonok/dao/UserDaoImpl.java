package com.goonok.dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.goonok.entity.User;


@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	@Override
	public int registerUser(User user) {
		int i = (int) hibernateTemplate.save(user);
		return i;
	}

	@Transactional
	@Override
	public User loginUser(String email, String password) {
		
		String hql = "from User where email=:eml and password=:pass";
		User user = (User) hibernateTemplate.execute( s ->{
			Query q = s.createQuery(hql);
			q.setParameter("eml", email);
			q.setParameter("pass", password);
			return q.uniqueResult();			
		});
		return user;
	}

}
