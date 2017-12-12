package com.zust.service;

import java.lang.reflect.InvocationTargetException;

import com.zust.dto.User;

public interface UserServiceI {
	public User getUserById(int id) throws IllegalAccessException, InvocationTargetException;
	public boolean isMatched(String email, String password);
	public int getUserIdByEmail(String email);
	public void createUser(String email, String name, String password);
	public void updateUser(String email, String name, String address, String phone);
	public void updatePassword(String email,String newPassword);
}
