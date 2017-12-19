package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.User;
import com.zust.entity.Tuser;

public interface UserServiceI {
	public User getUserById(int id) throws IllegalAccessException, InvocationTargetException;
	public boolean isMatched(String email, String password);
	public int getUserIdByEmail(String email);
	public void createUser(String email, String name, String password);
	public void updateUser(String email, String name, String address, String phone);
	public void updatePassword(String email,String newPassword);
	
	public User entity2dto(Tuser tuser) throws IllegalAccessException, InvocationTargetException;
	public List<User> searchByname(String s,int page) throws IllegalAccessException, InvocationTargetException;
	public List<User> searchByemail(String s,int page) throws IllegalAccessException, InvocationTargetException;
	public List getPageall(String s);
	public User getUserByemail(String email) throws IllegalAccessException, InvocationTargetException;
	public void supdateUser(String email, String name, String password, String phone, String address, String createtime,
			String updatetime,boolean gender,boolean status);

}
