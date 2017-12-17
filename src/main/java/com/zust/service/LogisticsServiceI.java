package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Logistics;
import com.zust.entity.Tlogistics;

public interface LogisticsServiceI {
	public Logistics getgoods(String goodsNum)  throws IllegalAccessException, InvocationTargetException;
	public Logistics entity2dto(Tlogistics tlogistics) throws IllegalAccessException, InvocationTargetException;
	public String getgoodsName(String goodsNum);
	public void updatelocal(String goodsNum,String nowaddress);
}
