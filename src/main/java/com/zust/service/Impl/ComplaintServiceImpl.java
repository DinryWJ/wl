package com.zust.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.ComplaintDaoI;
import com.zust.dao.UserDaoI;
import com.zust.service.ComplaintServiceI;
import com.zust.service.GoodsServiceI;

@Transactional
@Service
public class ComplaintServiceImpl implements ComplaintServiceI{

	@Autowired
	private ComplaintDaoI complaintdao;

	public void createComplaint(int id,String name, String content) {
		// TODO Auto-generated method stub
		complaintdao.createComplaint(id,name,content);
	}
	public int getUserIdByEmail(String email) {
		// TODO Auto-generated method stub
		return complaintdao.getUserIdByEmail(email);
	}
}
