package com.zust.dao.Impl;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.zust.dao.BaseDaoI;
import com.zust.dao.ComplaintDaoI;
import com.zust.entity.Tcomplaint;
import com.zust.entity.Tuser;

@Repository
public class ComplaintDaoImpl extends BaseDaoImpl<Tcomplaint> implements ComplaintDaoI{
	public void createComplaint(int id,String name,String content){
		System.out.println("2处哦啊据哦"+id);
		Tuser tuser = (Tuser) getCurrentSession().get(Tuser.class,id);
		
		Tcomplaint tcomplaint = new Tcomplaint();
		tcomplaint.setContent(content);
		tcomplaint.setTime(new Date());
		tcomplaint.setUser(tuser);
		save(tcomplaint);
	}
	
	public int getUserIdByEmail(String email) {
		// TODO Auto-generated method stub
		String hql ="SELECT userId FROM Tuser WHERE email = ?";
		int result = (Integer) getCurrentSession().createQuery(hql).setParameter(0, email).uniqueResult();
		return result;
	}
}
