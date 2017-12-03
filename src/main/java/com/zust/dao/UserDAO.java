package com.zust.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.User;


@Repository
public class UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public User getUserById(int id){
		Session session = sessionFactory.openSession();
		String hql="from User where userId=?";
		
		User user = (User) session.createQuery(hql).setParameter(0, id).uniqueResult();
		return user;
	}

}
