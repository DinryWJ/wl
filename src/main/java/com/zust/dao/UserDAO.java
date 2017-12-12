package com.zust.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Tgoods;
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
	public void userJjPage(int id,String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();	
		Tuser tuser = (Tuser) session.get(Tuser.class,id);
		Tgoods tgoods = new Tgoods();
		tgoods.setsUserName(sname);
		tgoods.setsUserPhone(sphone);
		tgoods.setsUserAddress(saddress);
		tgoods.setName(name);
		tgoods.setType(type);
		tgoods.setWeight(weight);
		tgoods.setIntro(intro);
		tgoods.setrUserName(rname);
		tgoods.setrUserPhone(rphone);
		tgoods.setrUserAddress(raddress);
		tgoods.setCreatetime(new Date());
		tgoods.setUpdatetime(new Date());
		tgoods.setCode(getNewCode());
		tgoods.setUser(tuser);
		session.save(tgoods);
	}
	//生成一个订单号yyyyMMddhhmmss+xxxx
	public String getNewCode(){		
		Date date = new Date();
		String d = new SimpleDateFormat("yyyyMMddhhmmss").format(date);
		Random random = new Random();  
        int rannum = (int) (random.nextDouble() * (9999 - 1000 + 1)) + 1000;
		String d2 = d+rannum;
		return d2;
	}
	public List<Tgoods> getMyYj(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();	
		String hql="FROM Tgoods t WHERE t.user.userId=?";
		Tuser tuser = (Tuser) session.get(Tuser.class,id);
		List<Tgoods> tgoods = session.createQuery(hql).setParameter(0, tuser.getUserId()).list();
		return tgoods;
	}
	public void updateUser(String email,String name,String phone,String address){
		Session session = sessionFactory.getCurrentSession();
		
		int id = getUserIdByEmail(email);
		Tuser tuser = (Tuser) session.get(Tuser.class,id);
		tuser.setName(name);
//		tuser.setGender(gender);
		tuser.setPhone(phone);
		tuser.setAddress(address);
		
	}

}
