package com.zust.service;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.Model.User;
import com.zust.dao.UserDAO;
import com.zust.entity.Tuser;
@Transactional
@Service
public class UserService {
	@Autowired
	private UserDAO userDAO;
	public User getUserById(int id) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tuser t =  userDAO.getUserById(id);
		User u = new User();
		BeanUtils.copyProperties(u, t);
		return u;
	}
	public boolean isMatched(String email, String password) {
		// TODO Auto-generated method stub
		int result = userDAO.isMatched(email,password);
		return result>0;
	}

	public int getUserIdByEmail(String email) {
		// TODO Auto-generated method stub
		return userDAO.getUserIdByEmail(email);
	}
	public void createUser(String email, String name, String password) {
		// TODO Auto-generated method stub
		userDAO.createUser(email, name, password);
	}

}
