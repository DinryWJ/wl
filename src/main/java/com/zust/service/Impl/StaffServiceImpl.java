package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.StaffDaoI;
import com.zust.dao.StationDaoI;
import com.zust.dto.Staff;
import com.zust.dto.User;
import com.zust.entity.Tstaff;
import com.zust.entity.Tstation;
import com.zust.entity.Tuser;
import com.zust.service.StaffServiceI;
@Transactional
@Service
public class StaffServiceImpl implements StaffServiceI {

	@Autowired
	private StaffDaoI staffDao;
	
	@Autowired
	private StationDaoI stationDao;
	
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

	public void adminUpdateStaff(Staff astaff) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		int id = astaff.getStaffId();
		Tstaff atstaff = staffDao.get(Tstaff.class, id);
		BeanUtils.copyProperties(atstaff, astaff);
		if(astaff.getPosition()==1){
			Tstation tstation = stationDao.get(Tstation.class, astaff.getStationId());
			atstaff.setStation(tstation);
		}else{
			Tstation tstation = stationDao.get(Tstation.class,1);
			atstaff.setStation(tstation);
		}
		
		staffDao.update(atstaff);
	}

	public int getStaffPageNum(int num) {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tstaff";
		Long i = staffDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/num); 
		int total2 =(int)(total); 
		if(total2<=1)total2=1;
		return total2;
	}

	public List<Staff> getAllStaff(int pageNum, int num) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql ="FROM Tstaff";
		List<Tstaff> list = staffDao.find(hql,pageNum,num);
		List<Staff> lstaff = entity2dto(list);
		return lstaff;
	}
	

}
