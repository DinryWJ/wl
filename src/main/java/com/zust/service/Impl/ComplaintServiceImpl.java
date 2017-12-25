package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.ComplaintDaoI;
import com.zust.dao.StationDaoI;
import com.zust.dao.UserDaoI;
import com.zust.dto.Complaint;
import com.zust.dto.Goods;
import com.zust.entity.Tcomplaint;
import com.zust.entity.Tstaff;
import com.zust.entity.Tstation;
import com.zust.service.ComplaintServiceI;
import com.zust.service.GoodsServiceI;
import com.zust.service.StationServiceI;

@Transactional
@Service
public class ComplaintServiceImpl implements ComplaintServiceI{

	@Autowired
	private ComplaintDaoI complaintDao;
	
	@Autowired
	private StationDaoI stationDao;

	public void createComplaint(int id,String content) {
		// TODO Auto-generated method stub
		complaintDao.createComplaint(id,content);
	}

	public int getPageNum(int num) {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tcomplaint ";
		Long i = complaintDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/num); 
		int total2 =(int)(total); 
		if(total2<=1)total2=1;
		return total2;
	}
	public List<Complaint> getAllComplaints(int pageNum, int num) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql = "FROM Tcomplaint";
		List<Tcomplaint> tcomplaints = complaintDao.find(hql,pageNum,num);
		List<Complaint> complaints = entity2dto(tcomplaints);
		for(int i=0;i<tcomplaints.size();i++){
			complaints.get(i).setUserId(tcomplaints.get(i).getUser().getUserId());
		}
		return complaints;
	}
	public List<Complaint> entity2dto(List<Tcomplaint> listOrigin) throws IllegalAccessException, InvocationTargetException{
		List<Complaint> listDestination= new ArrayList<Complaint>(); 
		for (Object source: listOrigin ) {
	    	Complaint target= new Complaint();
	        BeanUtils.copyProperties(target,source);
	        listDestination.add(target);
	     }
		return listDestination;
	}
	public Complaint entity2dto2(Tcomplaint tcomplaint) throws IllegalAccessException, InvocationTargetException{
		Complaint target = new Complaint();
		BeanUtils.copyProperties(target, tcomplaint);
		target.setUserId(tcomplaint.getUser().getUserId());
		return target;
	}
	public Complaint getComplaintById(int complaintId) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tcomplaint tcomplaint = complaintDao.get(Tcomplaint.class, complaintId);
		Complaint complaint = entity2dto2(tcomplaint);
		return complaint;
	}
	public void recall(int handlerId, String recall,int complaintId) {
		// TODO Auto-generated method stub
		Tcomplaint tcomplaint = complaintDao.get(Tcomplaint.class, complaintId);
		tcomplaint.setHandlerId(handlerId);
		tcomplaint.setRcontent(recall);
		tcomplaint.setStatus(true);
		
	
	}

	public Long getNewComplaintsNum() {
		// TODO Auto-generated method stub
		String hql = "SELECT count(*) FROM Tcomplaint";
		Long x = complaintDao.count(hql);
		return x;
	}





}
