package com.zust.dao.Impl;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.dao.StationDaoI;
import com.zust.entity.Tstation;
@Repository
public class StationDaoImpl extends BaseDaoImpl<Tstation> implements StationDaoI {

	
	public void getZZZname() {
		// TODO Auto-generated method stub
		String hql = "SELECT stationId,name FROM Tstation";
		getCurrentSession().createQuery(hql).list();
	}

	

}
