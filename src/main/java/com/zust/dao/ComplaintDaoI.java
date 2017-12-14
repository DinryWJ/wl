package com.zust.dao;

import com.zust.entity.Tcomplaint;
import com.zust.entity.Tuser;

public interface ComplaintDaoI extends BaseDaoI<Tcomplaint> {
	public void createComplaint(int id,String name,String content);
	public int getUserIdByEmail(String email);
}
