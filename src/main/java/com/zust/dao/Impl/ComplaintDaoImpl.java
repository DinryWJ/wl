package com.zust.dao.Impl;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.zust.dao.BaseDaoI;
import com.zust.dao.ComplaintDaoI;
import com.zust.entity.Tcomplaint;
import com.zust.entity.Tuser;

@Repository
public class ComplaintDaoImpl extends BaseDaoImpl<Tcomplaint> implements ComplaintDaoI{
	public void createComplaint(int id,String content){

		Tuser tuser = (Tuser) getCurrentSession().get(Tuser.class,id);
		
		Tcomplaint tcomplaint = new Tcomplaint();
		tcomplaint.setContent(content);
		tcomplaint.setTime(new Date());
		tcomplaint.setUser(tuser);
		save(tcomplaint);
	}


	

}
