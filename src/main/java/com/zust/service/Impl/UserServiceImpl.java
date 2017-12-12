package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dto.Goods;
import com.zust.dto.User;
import com.zust.dao.UserDaoI;
import com.zust.entity.Tgoods;
import com.zust.entity.Tuser;
import com.zust.service.UserServiceI;
@Transactional
@Service
public class UserServiceImpl implements UserServiceI{
	@Autowired
	private UserDaoI userDao;
	public User getUserById(int id) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tuser t =  userDao.getUserById(id);
		User u = new User();
		BeanUtils.copyProperties(u, t);
		return u;
	}
	public boolean isMatched(String email, String password) {
		// TODO Auto-generated method stub
		int result = userDao.isMatched(email,password);
		return result>0;
	}

	public int getUserIdByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.getUserIdByEmail(email);
	}
	public void createUser(String email, String name, String password) {
		// TODO Auto-generated method stub
		userDao.createUser(email, name, password);
	}
	public void updateUser(String email,String name,String address,String phone){
		
		userDao.updateUser(email,name,phone,address);
	}
	public void updatePassword(String email,String newPassword){	
		int id =userDao.getUserIdByEmail(email);
		Tuser tuser = userDao.getUserById(id);
		userDao.updatePassword(tuser,newPassword);
	}


}
