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
	public User entity2dto(Tuser tuser) throws IllegalAccessException, InvocationTargetException{
		User user = new User();
		BeanUtils.copyProperties(user, tuser);
		return user;
	}
	
	public List<User> entity2dto(List<Tuser> listOrigin) throws IllegalAccessException, InvocationTargetException{
		List<User> listDestination= new ArrayList<User>(); 
		 for (Object source: listOrigin ) {
			 User target= new User();
		        BeanUtils.copyProperties(target,source);
		        listDestination.add(target);
		     }
			return listDestination;
	}
	
	public List<User> searchByemail(String s,int page) throws IllegalAccessException, InvocationTargetException {
		if(s!=null){
		List<Tuser> tuser =  userDao.searchByemail(s,page);
		List<User> user = entity2dto(tuser);
		return user;
		}
		return null;
	}
	public List<User> searchByname(String s,int page) throws IllegalAccessException, InvocationTargetException {
		if(s!=null){
		List<Tuser> tuser = userDao.searchByname(s,page);
		List<User> user= entity2dto(tuser);
		return user;
		}
	return null;
	}
	public List getPageall(String s) {
		return userDao.getPageall(s);
	}
	public User getUserByemail(String email) throws IllegalAccessException, InvocationTargetException {
		Tuser tuser = userDao.getUserByemail(email);
	     User user= entity2dto(tuser);
		return user;
	}
	public void supdateUser(String email, String name, String password, String phone, String address, String createtime,
			String updatetime,boolean gender,boolean status) {
		userDao.supdateUser(email, name, password,phone,address,createtime,updatetime, gender,status);
	}


}
