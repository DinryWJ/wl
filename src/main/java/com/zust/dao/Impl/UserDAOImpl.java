package com.zust.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.dao.UserDaoI;
import com.zust.entity.Tgoods;
import com.zust.entity.Tuser;


@Repository
public class UserDAOImpl extends BaseDaoImpl<Tuser> implements UserDaoI{
	
	
	public Tuser getUserById(int id){	
		Tuser user = (Tuser) get(Tuser.class, id);
		return user;
	}
	public void createUser(String email,String name,String password){	
		Tuser user = new Tuser();
		user.setEmail(email);
		user.setPassword(password);
		user.setName(name);
		user.setGender(true);
		user.setPhone("00000000000");
		user.setAddress("地球");
		user.setType(false);
		user.setStatus(false);
		user.setCreatetime(new Date());
		user.setUpdatetime(new Date());
		save(user);
	}

	public int isMatched(String email, String password) {
		// TODO Auto-generated method stub
		String hql ="SELECT count(*) FROM Tuser WHERE email = ? and password = ?";
		int result = ((Long) getCurrentSession().createQuery(hql).setParameter(0, email).setParameter(1, password).uniqueResult()).intValue();
		return result;
	}

	public int getUserIdByEmail(String email) {
		// TODO Auto-generated method stub
		String hql ="SELECT userId FROM Tuser WHERE email = ?";
		int result = (Integer) getCurrentSession().createQuery(hql).setParameter(0, email).uniqueResult();
		return result;
	}
	
	
	public void updateUser(String email,String name,String phone,String address){
		int id = getUserIdByEmail(email);
		Tuser tuser = (Tuser)get(Tuser.class,id);
		tuser.setName(name);
//		tuser.setGender(gender);
		tuser.setPhone(phone);
		tuser.setAddress(address);
		
	}
	public void updatePassword(Tuser tuser,String newPassword){
		tuser.setPassword(newPassword);
	}

}
