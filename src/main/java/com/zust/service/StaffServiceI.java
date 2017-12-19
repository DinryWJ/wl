package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Staff;
import com.zust.entity.Tstaff;

public interface StaffServiceI {

	boolean isMatched(String email, String password);

	int getStaffIdByEmail(String email);

	public Staff getStaffById(int id) throws IllegalAccessException, InvocationTargetException;
	
	public Staff entity2dto(Tstaff tstaff) throws IllegalAccessException, InvocationTargetException;

	void updateStaff(Staff staff) throws IllegalAccessException, InvocationTargetException;

	void updatePassword(String email, String newPassword) throws IllegalAccessException, InvocationTargetException;
	
	List<Staff> searchByemail(String s, int page1) throws IllegalAccessException, InvocationTargetException;

	List getPageall(String s);

	List<Staff> searchByname(String s, int page1) throws IllegalAccessException, InvocationTargetException;

	Staff getStaffByemail(String email) throws IllegalAccessException, InvocationTargetException;

	void aupdateStaff(Staff staff);

}
