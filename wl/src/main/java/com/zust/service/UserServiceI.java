package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Station;
import com.zust.dto.User;
import com.zust.entity.Tuser;

public interface UserServiceI {
	public User getUserById(int id) throws IllegalAccessException, InvocationTargetException;
	public boolean isMatched(String email, String password);
	public int getUserIdByEmail(String email);
	public void createUser(String email, String name, String password);
	public void updateUser(String email, String name, String gender, String address, String phone);
	public void updatePassword(String email,String newPassword);
	public void adminUpdateUser(User user) throws IllegalAccessException, InvocationTargetException;
	public int getUserPageNum(int num);
	public List<User> getAllUser(int pageNum, int num) throws IllegalAccessException, InvocationTargetException;
	public List<User> entity2dto(List<Tuser> list) throws IllegalAccessException, InvocationTargetException;
	public boolean isCrashed(String email);


}
