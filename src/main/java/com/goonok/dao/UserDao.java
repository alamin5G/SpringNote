package com.goonok.dao;

import com.goonok.entity.User;

public interface UserDao {

	public int registerUser(User user);
	
	public User loginUser(String email, String password);
}
