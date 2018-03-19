package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Staff;
import com.zust.dto.User;
import com.zust.entity.Tstaff;

public interface StaffServiceI {

	public boolean isMatched(String email, String password);

	public int getStaffIdByEmail(String email);

	public Staff getStaffById(int id) throws IllegalAccessException, InvocationTargetException;
	
	public void updateStaff(Staff staff) throws IllegalAccessException, InvocationTargetException;

	public void updatePassword(String email, String newPassword) throws IllegalAccessException, InvocationTargetException;
	
	public List<Staff> entity2dto(List<Tstaff> listOrigin) throws IllegalAccessException, InvocationTargetException;

	public Staff entity2dto(Tstaff tstaff) throws IllegalAccessException, InvocationTargetException;

	public void adminUpdateStaff(Staff astaff) throws IllegalAccessException, InvocationTargetException;

	public int getStaffPageNum(int num);

	public List<Staff> getAllStaff(int pageNum, int num) throws IllegalAccessException, InvocationTargetException;


}
