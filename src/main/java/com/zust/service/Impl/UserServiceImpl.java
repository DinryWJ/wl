package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dto.Goods;
import com.zust.dto.Station;
import com.zust.dto.User;
import com.zust.dao.UserDaoI;
import com.zust.entity.Tgoods;
import com.zust.entity.Tstation;
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
	public void updateUser(String email,String name,String gender,String address,String phone){
		int id = userDao.getUserIdByEmail(email);
		Tuser tuser = userDao.get(Tuser.class, id);
		tuser.setGender(true);
		if(gender.equals("女")){
			tuser.setGender(false);
		}
		tuser.setName(name);
		tuser.setAddress(address);
		tuser.setPhone(phone);
		tuser.setUpdatetime(new Date());
	}
	public void updatePassword(String email,String newPassword){	
		int id =userDao.getUserIdByEmail(email);
		Tuser tuser = userDao.getUserById(id);
		userDao.updatePassword(tuser,newPassword);
	}
	public void adminUpdateUser(User user) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		int id = user.getUserId();
		Tuser tuser = userDao.get(Tuser.class, id);
		BeanUtils.copyProperties(tuser, user);
		userDao.update(tuser);
		
	}
	public int getUserPageNum(int num) {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tuser";
		Long i = userDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/num); 
		int total2 =(int)(total); 
		if(total2<=1)total2=1;
		return total2;
	}
	public List<User> getAllUser(int pageNum,int num) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql ="FROM Tuser";
		List<Tuser> list = userDao.find(hql,pageNum,num);
		List<User> users = entity2dto(list);
		return users;
	}
	public List<User> entity2dto(List<Tuser> list) throws IllegalAccessException, InvocationTargetException{
		// TODO Auto-generated method stub
		List<User> listDestination= new ArrayList<User>(); 
		 for (Object source: list ) {
			 User target= new User();
		        BeanUtils.copyProperties(target,source);
		        listDestination.add(target);
		     }
			return listDestination;
	}
	public boolean isCrashed(String email) {
		// TODO Auto-generated method stub
		String hql="SELECT count(*) FROM Tuser WHERE email='"+email+"'";
		Long num = userDao.count(hql);
		if(num==0)return false;
		return true;
	}

	

}
