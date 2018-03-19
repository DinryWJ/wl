package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Complaint;
import com.zust.entity.Tcomplaint;

public interface ComplaintServiceI {
	public void createComplaint(int id,String content);
	public int getPageNum(int i);
	public List<Complaint> getAllComplaints(int pageNum, int num) throws IllegalAccessException, InvocationTargetException;
	public List<Complaint> entity2dto(List<Tcomplaint> listOrigin) throws IllegalAccessException, InvocationTargetException;
	public Complaint getComplaintById(int complaintId) throws IllegalAccessException, InvocationTargetException;
	public Complaint entity2dto2(Tcomplaint tcomplaint) throws IllegalAccessException, InvocationTargetException;
	public void recall(int handlerId, String recall,int complaintId);
	public Long getNewComplaintsNum();


}
