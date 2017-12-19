package com.zust.dao.Impl;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.stereotype.Repository;

import com.zust.dao.StaffDaoI;
import com.zust.dto.Staff;
import com.zust.entity.Tstaff;
import com.zust.entity.Tstation;
@Repository
public class StaffDaoImpl extends BaseDaoImpl<Tstaff> implements StaffDaoI {


	public int isMatched(String email, String password) {
		// TODO Auto-generated method stub
		System.out.println(email+password);
		String hql ="SELECT count(*) FROM Tstaff WHERE email = ? and password = ?";
		int result = ((Long) getCurrentSession().createQuery(hql).setParameter(0, email).setParameter(1, password).uniqueResult()).intValue();
		return result;
	}

	public int getStaffIdByEmail(String email) {
		// TODO Auto-generated method stub
		String hql ="SELECT staffId FROM Tstaff WHERE email = ?";
		int result = (Integer) getCurrentSession().createQuery(hql).setParameter(0, email).uniqueResult();
		return result;
	}

	public Tstaff getStaffById(int id) {
		// TODO Auto-generated method stub
		Tstaff tstaff = get(Tstaff.class, id);
		return tstaff;
	}
	public void updateStaff(Staff staff) {
		int id = getStaffIdByEmail(staff.getEmail());
		Tstaff tstaff = (Tstaff)get(Tstaff.class,id);
		tstaff.setName(staff.getName());
//		tuser.setGender(gender);
		tstaff.setPhone(staff.getPhone());
		tstaff.setAddress(staff.getAddress());
		tstaff.setPosition(staff.getPosition());
		String hql =" FROM Tstation WHERE station_id = ?";
		Tstation tstation =  (Tstation) getCurrentSession().createQuery(hql).setParameter(0, staff.getStationId()).uniqueResult();
		tstaff.setStation(tstation);
	}


	public void updatePassword(Tstaff tstaff, String newPassword) {
		tstaff.setPassword(newPassword);
	}

	public List<Tstaff> searchByname(String s, int page) {
		int pagesize = 1;
		String hql = "FROM Tstaff WHERE name =?";
		String sql = "SELECT count(name) FROM Tstaff WHERE name=? ";
		long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
		int first = (page - 1)*pagesize;
		if(first<count){
		List<Tstaff> tstaff = (List<Tstaff>) getCurrentSession().createQuery(hql).setParameter(0, s).
				setFirstResult((page - 1)*pagesize).
				setMaxResults(pagesize).
				list();
		return tstaff;
		}
		return null;
	}

	public List getPageall(String s) {
		int pagesize = 1;
		boolean status = s.contains("@");
		if(status){
			String sql = "SELECT count(email) FROM Tstaff WHERE email=? ";
			long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
			long count1 = (long) Math.ceil(count/pagesize);
			List<String> countpageall =  new ArrayList<String>();
			for(long i=1;i<=count1;i++){
				countpageall.add(i+"");
			}
		return countpageall;
		}
		else{
			String sql = "SELECT count(name) FROM Tstaff WHERE name=? ";
			long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
			long count1 = (long) Math.ceil(count/pagesize);
			List<String> countpageall =  new ArrayList<String>();
			for(long i=1;i<=count1;i++){
				countpageall.add(i+"");
			}
		return countpageall;
		}
	}

	public List<Tstaff> searchByemail(String s, int page) {
		int pagesize = 1;
		String hql = "FROM Tuser WHERE email =?";
		String sql = "SELECT count(email) FROM Tstaff WHERE email=? ";
		long count =  (Long) getCurrentSession().createQuery(sql).setParameter(0, s).uniqueResult();
		int first = (page - 1)*pagesize;
		if(first<count){
		List<Tstaff> tstaff = (List<Tstaff>) getCurrentSession().
				createQuery(hql).setParameter(0, s).
				setFirstResult((page - 1)*pagesize).
				setMaxResults(pagesize).
				list();				
		return tstaff;
		}
		return null;
	}

	public Tstaff getStaffByemail(String email) {
		int id = getStaffIdByEmail(email);
		Tstaff staff = (Tstaff) get(Tstaff.class, id);
		return staff;
	}

	public void aupdateStaff(Staff staff) {
		boolean gender1 = true;
		boolean status1 = true;
		int id = getStaffIdByEmail(staff.getEmail());
		Tstaff tstaff = (Tstaff)get(Tstaff.class,id);
		tstaff.setName(staff.getName());
		tstaff.setPassword(staff.getPassword());
		tstaff.setPhone(staff.getPhone());
		tstaff.setAddress(staff.getAddress());
		String hql =" FROM Tstation WHERE station_id = ?";
		Tstation tstation =  (Tstation) getCurrentSession().createQuery(hql).
				setParameter(0, staff.getStationId()).uniqueResult();
		tstaff.setStation(tstation);	
			
	}

}
