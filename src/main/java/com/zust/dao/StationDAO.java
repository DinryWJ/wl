package com.zust.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Station;
@Repository
public class StationDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Station getStationById(int id){
		Session session = sessionFactory.getCurrentSession();
		return (Station) session.get(Station.class, id);
	}
	
	public void createStation(String name,String address,String intro,String phone){
		Session session = sessionFactory.getCurrentSession();
		Station station = new Station();
		station.setAddress(address);
		station.setIntro(intro);
		station.setName(name);
		station.setPhone(phone);
		session.save(station);
	}
	
	public void updateStation(int id,String name,String address,String intro,String phone){
		Session session = sessionFactory.getCurrentSession();
		Station station = (Station) session.get(Station.class, id);
		station.setAddress(address);
		station.setIntro(intro);
		station.setName(name);
		station.setPhone(phone);
		session.update(station);
	}
	public void delStation(int id){
		Session session = sessionFactory.getCurrentSession();
		Station station = (Station) session.get(Station.class, id);
		session.delete(station);
	}
}
