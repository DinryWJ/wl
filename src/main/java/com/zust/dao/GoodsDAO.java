package com.zust.dao;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Complaint;
import com.zust.entity.Goods;
import com.zust.entity.User;

@Repository
public class GoodsDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Goods getGoodsById(int id){
		Session session = sessionFactory.getCurrentSession();
		Goods goods = (Goods) session.get(Goods.class,id);
		return goods;
	}
	public void createGoods(int id,int goodsNum,String sAddress,String eAddress,int weight,String type,String intro){
		Session session = sessionFactory.getCurrentSession();
		Goods goods = new Goods();
		User user = (User)session.get(User.class, id);
		goods.seteAddress(eAddress);
		goods.setGoodsNum(goodsNum);
		goods.setsAddress(sAddress);
		goods.setIntro(intro);
		goods.setType(type);
		goods.setWeight(weight);
		goods.setCreatetime(new Date());
		goods.setUpdatetime(new Date());
		goods.setrUserId(user);
		User suser = (User)session.get(User.class, id);
		goods.setsUserId(suser);
		session.save(goods);
	}
	public void updateGoods(int id,int goodsNum,String sAddress,String eAddress,int weight,String type,String intro){
		Session session = sessionFactory.getCurrentSession();
		Goods goods = new Goods();
		User user = (User)session.get(User.class, id);
		goods.seteAddress(eAddress);
		goods.setGoodsNum(goodsNum);
		goods.setsAddress(sAddress);
		goods.setUpdatetime(new Date());
		goods.setIntro(intro);
		goods.setType(type);
		goods.setWeight(weight);
		goods.setCreatetime(new Date());
		goods.setrUserId(user);
		User suser = (User)session.get(User.class, id);
		goods.setsUserId(suser);
		session.update(goods);
	}
	public void delGoods(int id){
		Session session = sessionFactory.getCurrentSession();
		Goods goods = (Goods) session.get(Goods.class, id);
		session.delete(goods);
	}
}
