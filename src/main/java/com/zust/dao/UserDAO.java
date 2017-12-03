package com.zust.dao;

import java.util.List;

import com.zust.entity.User;



public class UserDAO extends BaseDao<User>{
	public User getUserById(int id){
		String hql="from User where userId=?";
		
		User user = (User) createQuery(hql).setParameter(0, id).uniqueResult();
		return user;
	}

}
