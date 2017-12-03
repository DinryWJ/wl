package com.zust.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zust.dao.UserDAO;
import com.zust.entity.User;

@Service
public class UserService {
	@Autowired
	private UserDAO userDAO;
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return userDAO.getUserById(id);
	}
	
}
