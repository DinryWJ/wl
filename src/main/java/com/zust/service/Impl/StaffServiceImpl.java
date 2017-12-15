package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.StaffDaoI;
import com.zust.dto.Staff;
import com.zust.entity.Tstaff;
import com.zust.service.StaffServiceI;
@Transactional
@Service
public class StaffServiceImpl implements StaffServiceI {

	@Autowired
	private StaffDaoI staffDao;
	
	public boolean isMatched(String email, String password) {
		// TODO Auto-generated method stub
		int result = staffDao.isMatched(email,password);
		return result>0;
	}

	public int getStaffIdByEmail(String email) {
		// TODO Auto-generated method stub
		return staffDao.getStaffIdByEmail(email);
	}

	public Staff getStaffById(int id) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tstaff tstaff =  staffDao.getStaffById(id);
		Staff staff  = entity2dto(tstaff);
		return staff;
	}
	public Staff entity2dto(Tstaff tstaff) throws IllegalAccessException, InvocationTargetException{
		Staff staff = new Staff();
		BeanUtils.copyProperties(staff, tstaff);
		staff.setStationId(tstaff.getStation().getStationId());
		return staff;
		
	}

}
