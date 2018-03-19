package com.zust.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
	public void updatePassword(Tuser tuser,String newPassword){
		tuser.setPassword(newPassword);
	}
	public List<Tuser> searchByemail(String s,int page) {
		int pagesize = 1;
		String hql = "FROM Tuser WHERE email =?";
		String sql = "SELECT count(email) FROM Tuser WHERE email=? ";
		long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
		int first = (page - 1)*pagesize;
		if(first<count){
		List<Tuser> tuser = (List<Tuser>) getCurrentSession().
				createQuery(hql).setParameter(0, s).
				setFirstResult((page - 1)*pagesize).
				setMaxResults(pagesize).
				list();				
		return tuser;
		}
		return null;
	}
	public List<Tuser> searchByname(String s,int page) {
		int pagesize = 1;
		String hql = "FROM Tuser WHERE name =?";
		String sql = "SELECT count(name) FROM Tuser WHERE name=? ";
		long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
		int first = (page - 1)*pagesize;
		if(first<count){
		List<Tuser> tuser = (List<Tuser>) getCurrentSession().createQuery(hql).setParameter(0, s).
				setFirstResult((page - 1)*pagesize).
				setMaxResults(pagesize).
				list();
		return tuser;
		}
		return null;
	}
	//得到总页数
	public List getPageall(String s) {
		int pagesize = 1;
		boolean status = s.contains("@");
		if(status){
			String sql = "SELECT count(email) FROM Tuser WHERE email=? ";
			long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
			long count1 = (long) Math.ceil(count/pagesize);
			List<String> countpageall =  new ArrayList<String>();
			for(long i=1;i<=count1;i++){
				countpageall.add(i+"");
			}
		return countpageall;
		}
		else{
			String sql = "SELECT count(name) FROM Tuser WHERE name=? ";
			long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
			long count1 = (long) Math.ceil(count/pagesize);
			List<String> countpageall =  new ArrayList<String>();
			for(long i=1;i<=count1;i++){
				countpageall.add(i+"");
			}
		return countpageall;
		}
	}
	public Tuser getUserByemail(String email) {
		int id = getUserIdByEmail(email);
		Tuser user = (Tuser) get(Tuser.class, id);
		return user;
	}
	public void supdateUser(String email, String name, String password, String phone, String address, String createtime,
			String updatetime,boolean gender,boolean status) {
		
		boolean gender1 = true;
		boolean status1 = true;
		int id = getUserIdByEmail(email);
		Tuser tuser = (Tuser)get(Tuser.class,id);
		tuser.setName(name);
		tuser.setPassword(password);
		tuser.setPhone(phone);
		tuser.setAddress(address);
		 Date createdate=new Date(createtime);
		tuser.setCreatetime(createdate);
		 Date updatedate=new Date(updatetime);
		tuser.setUpdatetime(updatedate);
		System.out.println("改dasd"+gender);
		
			tuser.setGender(gender);
		
		System.out.println("gender1"+gender);
	
		tuser.setStatus(status);
	}


}
