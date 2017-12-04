package com.zust.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.zust.entity.Station;

public class StationDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Station getStationById(int id){
		
	}
}
