package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

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
	public void updateStaff(Staff staff) {
		staffDao.updateStaff(staff);	
	}


	public void updatePassword(String email, String newPassword) throws IllegalAccessException, InvocationTargetException {
		int id =staffDao.getStaffIdByEmail(email);
		Tstaff tstaff = staffDao.getStaffById(id);	
		staffDao.updatePassword(tstaff,newPassword);
	}
	public List<Staff> searchByemail(String s, int page) throws IllegalAccessException, InvocationTargetException {
		if(s!=null){
			List<Tstaff> tstaff =  staffDao.searchByemail(s,page);
			List<Staff> staff = entity2dto(tstaff);
			return staff;
			}
			return null;
	}

	public List getPageall(String s) {
		return staffDao.getPageall(s);
	}

	public List<Staff> searchByname(String s, int page) throws IllegalAccessException, InvocationTargetException {
		if(s!=null){
			List<Tstaff> tstaff = staffDao.searchByname(s,page);
			List<Staff> staff= entity2dto(tstaff);
			return staff;
			}
		return null;
	}

	public Staff getStaffByemail(String email) throws IllegalAccessException, InvocationTargetException{
		Tstaff tstaff = staffDao.getStaffByemail(email);
	     Staff staff= entity2dto(tstaff);
		return staff;
	}

	public void aupdateStaff(Staff staff) {
		staffDao.aupdateStaff(staff);
	}
	public Staff entity2dto(Tstaff tstaff) throws IllegalAccessException, InvocationTargetException{
		Staff staff = new Staff();
		BeanUtils.copyProperties(staff, tstaff);
		staff.setStationId(tstaff.getStation().getStationId());
		return staff;
		
	}
	public List<Staff> entity2dto(List<Tstaff> listOrigin) throws IllegalAccessException, InvocationTargetException{
		List<Staff> listDestination= new ArrayList<Staff>(); 
		 for (Object source: listOrigin ) {
			 Staff target= new Staff();
		        BeanUtils.copyProperties(target,source);
		        listDestination.add(target);
		     }
			return listDestination;
	}

}
