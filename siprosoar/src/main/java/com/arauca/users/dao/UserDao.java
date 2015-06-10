package com.arauca.users.dao;

import com.arauca.users.model.User;

public interface UserDao {
 
	User findByUserName(String username);
 
}