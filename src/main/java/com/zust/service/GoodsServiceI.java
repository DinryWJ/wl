package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dto.Goods;
import com.zust.entity.Tgoods;


public interface GoodsServiceI {

	List<Goods> getMyYj(int id,int pageNum,int rows) throws IllegalAccessException, InvocationTargetException;


	Goods search(String s) throws IllegalAccessException, InvocationTargetException;

	List<Goods> getUncheckedYJ() throws IllegalAccessException, InvocationTargetException;
	
	Goods entity2dto(Tgoods tgood) throws IllegalAccessException, InvocationTargetException;
	
	List<Goods> entity2dto(List<Tgoods> listOrigin) throws IllegalAccessException, InvocationTargetException;

	void delGoodsByCode(String delcode);

	List<Goods> getAllYJ() throws IllegalAccessException, InvocationTargetException;

	void modify(Goods goods) throws IllegalAccessException, InvocationTargetException;

	int getYJPageNum(int userId,int num);

	void userJjPage(int id, Goods goods);
	
	 String getNewCode();
	
}
