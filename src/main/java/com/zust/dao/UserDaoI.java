package com.zust.dao;

import java.util.List;

import com.zust.dao.BaseDaoI;
import com.zust.entity.Tuser;

public interface UserDaoI extends BaseDaoI<Tuser> {
	public Tuser getUserById(int id);
	public void createUser(String email,String name,String password);
	public int isMatched(String email, String password);
	public int getUserIdByEmail(String email);
	public void updateUser(String email, String name, String phone, String address);
	public void updatePassword(Tuser tuser,String newPassword);
	
	public List<Tuser> searchByemail(String s,int page);
	public List<Tuser> searchByname(String s,int page);
	public List getPageall(String s);
	public Tuser getUserByemail(String email);
	public void supdateUser(String email, String name, String password, String phone, String address, String createtime,
			String updatetime,boolean gender,boolean status);

}
