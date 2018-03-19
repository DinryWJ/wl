package com.zust.dao;


import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Staff;
import com.zust.entity.Tstaff;

public interface StaffDaoI extends BaseDaoI<Tstaff>{
	public int isMatched(String email, String password);

	public int getStaffIdByEmail(String email);

	public Tstaff getStaffById(int id);

	public void updateStaff(Staff staff);

	public void updatePassword(Tstaff tstaff, String newPassword);

	public List<Tstaff> searchByname(String s, int page);

	public List getPageall(String s);

	public List<Tstaff> searchByemail(String s, int page);

	public Tstaff getStaffByemail(String email);

	public void aupdateStaff(Staff staff);

}
