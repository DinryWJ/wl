package com.zust.dao;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Goods;
import com.zust.entity.Logistics;
import com.zust.entity.User;

@Repository
public class LogisticsDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public Logistics getLogisticsById(int id){
		Session session = sessionFactory.getCurrentSession();
		Logistics logistics = (Logistics) session.get(Logistics.class, id);
		return logistics;
	}
	public void createLogistics(int id,String mAddress,String mTime){
		Session session = sessionFactory.getCurrentSession();
		Logistics  logistics = new Logistics();
		logistics.setCreatetime(new Date());
		logistics.setmAddress(mAddress);
		logistics.setmTime(mTime);
		Goods goods =(Goods)session.get(Goods.class, id);
		logistics.setGoods(goods);
		logistics.setUpdatetime(new Date());
		session.save(logistics);
	}
	public void updateUser(int id,String mAddress,String mTime){
		Session session = sessionFactory.getCurrentSession();
		Logistics  logistics = new Logistics();
		logistics.setCreatetime(new Date());
		logistics.setmAddress(mAddress);
		logistics.setmTime(mTime);
		Goods goods =(Goods)session.get(Goods.class, id);
		logistics.setGoods(goods);
		logistics.setUpdatetime(new Date());
		session.update(logistics);
	}
	public void delLogistics(int id){
		Session session = sessionFactory.getCurrentSession();
		Logistics logistics = (Logistics) session.get(Logistics.class, id);
		session.delete(logistics);
	}
}
