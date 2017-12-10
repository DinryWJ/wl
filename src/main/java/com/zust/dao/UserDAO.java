package com.zust.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Tuser;


@Repository
public class UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public Tuser getUserById(int id){
		Session session = sessionFactory.getCurrentSession();
		Tuser user = (Tuser) session.get(Tuser.class, id);
		return user;
	}
	public void createUser(String email,String name,String password){
		Session session = sessionFactory.getCurrentSession();
		Tuser user = new Tuser();
		user.setEmail(email);
		user.setPassword(password);
		user.setName(name);
		user.setGender(true);
		user.setPhone("00000000000");
		user.setAddress("地球");
		user.setType(false);
		user.setStatus(0);
		user.setCreatetime(new Date());
		user.setUpdatetime(new Date());
		session.save(user);
	}
	public void updateUser(int id,String name,String address,boolean gender,String phone){
		Session session = sessionFactory.getCurrentSession();
		Tuser user = (Tuser) session.get(Tuser.class, id);
		user.setName(name);
		user.setAddress(address);
		user.setGender(gender);
		user.setPhone(phone);
		session.update(user);
	}
	public void delUser(int id){
		Session session = sessionFactory.getCurrentSession();
		Tuser user = (Tuser) session.get(Tuser.class, id);
		session.delete(user);
	}
	public int isMatched(String email, String password) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql ="SELECT count(*) FROM Tuser WHERE email = ? and password = ?";
		int result = ((Long) session.createQuery(hql).setParameter(0, email).setParameter(1, password).uniqueResult()).intValue();
		return result;
	}

	public int getUserIdByEmail(String email) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql ="SELECT userId FROM Tuser WHERE email = ?";
		int result = (Integer) session.createQuery(hql).setParameter(0, email).uniqueResult();
		return result;
	}
}
