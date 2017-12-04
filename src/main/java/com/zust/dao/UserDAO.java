package com.zust.dao;

import java.util.Date;
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
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		return user;
	}
	public void createUser(String password,String name,String address,String phone,boolean gender,int price){
		Session session = sessionFactory.getCurrentSession();
		User user = new User();
		user.setAddress(address);
		user.setCreatetime(new Date());
		user.setGender(gender);
		user.setIntegral(0);
		user.setName(name);
		user.setPassword(password);
		user.setPhone(phone);
		user.setPrice(price);
		user.setType(false);
		user.setUpdatetime(new Date());
		session.save(user);
	}
	public void updateUser(int id,String password,String address,String phone,boolean gender){
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		user.setAddress(address);
		user.setPassword(password);
		user.setPhone(phone);
		user.setGender(gender);
		session.update(user);
	}
	public void delUser(int id){
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		session.delete(user);
	}
}
