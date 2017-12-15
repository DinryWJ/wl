package com.zust.dao;


import java.lang.reflect.InvocationTargetException;

import com.zust.dto.Staff;
import com.zust.entity.Tstaff;

public interface StaffDaoI extends BaseDaoI<Tstaff>{
	public int isMatched(String email, String password);

	public int getStaffIdByEmail(String email);

	public Tstaff getStaffById(int id);

}
