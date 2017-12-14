package com.zust.service;

public interface ComplaintServiceI {
	public void createComplaint(int id,String name,String content);
	public int getUserIdByEmail(String email);
}
