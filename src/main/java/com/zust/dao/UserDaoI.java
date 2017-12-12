package com.zust.dao;

import com.zust.dao.BaseDaoI;
import com.zust.entity.Tuser;

public interface UserDaoI extends BaseDaoI<Tuser> {
	public Tuser getUserById(int id);
	public void createUser(String email,String name,String password);
	public int isMatched(String email, String password);
	public int getUserIdByEmail(String email);
	public void updateUser(String email, String name, String phone, String address);
	public void updatePassword(Tuser tuser,String newPassword);
}
