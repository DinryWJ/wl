package com.zust.dao;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zust.entity.Complaint;
import com.zust.entity.User;

@Repository
public class ComplaintDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Complaint getComplaintById(int id){
		Session session = sessionFactory.getCurrentSession();
		Complaint complaint = (Complaint) session.get(Complaint.class,id);
		return complaint;
	}
	public void createComplaint(int id,String content,String img,String goodsNum,boolean status){
		Session session = sessionFactory.getCurrentSession();
		Complaint complaint = new Complaint();
		complaint.setContent(content);
		complaint.setGoodsNum(goodsNum);
		complaint.setImg(img);
		complaint.setTime(new Date());
		complaint.setStatus(status);
		User user = (User)session.get(User.class, id);
		complaint.setUser(user);
		session.save(complaint);
	}
	public void updateComplaint(int id,String content,String img,String goodsNum,boolean status){
		Session session = sessionFactory.getCurrentSession();
		Complaint complaint = new Complaint();
		complaint.setContent(content);
		complaint.setGoodsNum(goodsNum);
		complaint.setImg(img);
		complaint.setTime(new Date());
		complaint.setStatus(status);
		User user = (User)session.get(User.class, id);
		complaint.setUser(user);
		session.update( complaint);
	}
	public void delUser(int id){
		Session session = sessionFactory.getCurrentSession();
		Complaint complaint = (Complaint) session.get(Complaint.class, id);
		session.delete(complaint);
	}
}
