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
		String hql="from User where userId=?";
		User user = (User) session.createQuery(hql).setParameter(0, id).uniqueResult();
		return user;
	}
	public void createUser(String password,String name,String address,String phone,boolean gender,int price){
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
		sessionFactory.getCurrentSession().save(user);
	}
	public void updateUser(int id,String password,String address,String phone,boolean gender){
		Session session = sessionFactory.getCurrentSession();
		session.get(User.class, id);
		
	}
}
