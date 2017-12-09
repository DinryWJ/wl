package com.zust.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Staff;
import com.zust.entity.Station;

@Repository
public class StaffDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Staff getStaffById(int id){
		Session session = sessionFactory.getCurrentSession();
		return (Staff) session.get(Staff.class, id);
	}
	
	public void createStaff(String name,boolean gender,int stationId,int position,String phone,String address){
		Session session = sessionFactory.getCurrentSession();
		Station station = (Station) session.get(Station.class, stationId);
		Staff staff = new Staff();
		staff.setAddress(address);
		staff.setGender(gender);
		staff.setName(name);
		staff.setPhone(phone);
		staff.setPosition(position);
		staff.setStation(station);
		session.save(staff);
	}
	
	public void updateStaff(int id,String name,boolean gender,int stationId,int position,String phone,String address){
		Session session = sessionFactory.getCurrentSession();
		Station station = (Station) session.get(Station.class, stationId);
		Staff staff=(Staff) session.get(Staff.class, id);
		staff.setAddress(address);
		staff.setGender(gender);
		staff.setName(name);
		staff.setPhone(phone);
		staff.setPosition(position);
		staff.setStation(station);
		session.update(staff);
	}
	
	public void delStaff(int id){
		Session session = sessionFactory.getCurrentSession();
		Staff staff=(Staff) session.get(Staff.class, id);
		session.delete(staff);
	}
}
