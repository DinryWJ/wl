package com.zust.service;

import java.lang.reflect.InvocationTargetException;

import com.zust.dto.Staff;
import com.zust.entity.Tstaff;

public interface StaffServiceI {

	boolean isMatched(String email, String password);

	int getStaffIdByEmail(String email);

	public Staff getStaffById(int id) throws IllegalAccessException, InvocationTargetException;
	
	public Staff entity2dto(Tstaff tstaff) throws IllegalAccessException, InvocationTargetException;

}
