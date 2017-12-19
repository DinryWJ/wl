package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.Logistics;
import com.zust.entity.Tlogistics;

public interface LogisticsServiceI {

	Logistics getLogisticsByGoodsId(int goodsId) throws IllegalAccessException, InvocationTargetException;

	void setZhongzhuan(int goodsId, String address);

	void setLogistics(Logistics logistic);

}
