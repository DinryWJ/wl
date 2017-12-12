package com.zust.dao;

import java.util.List;

import com.zust.entity.Tgoods;

public interface GoodsDaoI extends BaseDaoI<Tgoods>{
	public void userJjPage(int id,String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress);
	public String getNewCode();
	public List<Tgoods> getMyYj(int id);
}
