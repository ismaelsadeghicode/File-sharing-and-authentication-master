package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.User;
import com.websystique.springmvc.model.UserDocument;

import java.util.List;


public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
	void save(User user);
	
	void deleteBySSO(String sso);
	
	List<User> findAllUsers();

	List<User> findAllUsers(String userName);

}

