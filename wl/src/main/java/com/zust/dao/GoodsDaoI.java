package com.zust.dao;

import java.util.List;

import com.zust.entity.Tgoods;

public interface GoodsDaoI extends BaseDaoI<Tgoods>{

	public Tgoods search(String s);


}
