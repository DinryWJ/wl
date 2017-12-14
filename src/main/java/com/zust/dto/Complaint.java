package com.zust.dto;

import java.util.Date;

import com.zust.entity.Tuser;

public class Complaint {

	private int complaintId;
	private int userId;
	private String content;

	private Date time;

	private boolean status;
	private int handlerId;
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}

	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public int getHandlerId() {
		return handlerId;
	}
	public void setHandlerId(int handlerId) {
		this.handlerId = handlerId;
	}
	
	
}
