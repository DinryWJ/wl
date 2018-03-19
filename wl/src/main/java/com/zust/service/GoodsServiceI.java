package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dto.Goods;
import com.zust.entity.Tgoods;


public interface GoodsServiceI {

	List<Goods> getMyYj(int id,int pageNum,int rows) throws IllegalAccessException, InvocationTargetException;


	Goods search(String s) throws IllegalAccessException, InvocationTargetException;

	List<Goods> getUncheckedYJ(int pageNum, int raw) throws IllegalAccessException, InvocationTargetException;
	
	Goods entity2dto(Tgoods tgood) throws IllegalAccessException, InvocationTargetException;
	
	List<Goods> entity2dto(List<Tgoods> listOrigin) throws IllegalAccessException, InvocationTargetException;

	void delGoodsByCode(String delcode);

	List<Goods> getAllYJ(int pageNum, int num) throws IllegalAccessException, InvocationTargetException;

	void modify(Goods goods) throws IllegalAccessException, InvocationTargetException;

	int getYJPageNum(int userId,int num);

	String userJjPage(int id, Goods goods);
	
	String getNewCode();


	void setComplete(int goodsId);


	int getPageNum(int num);


	int getUncheckPageNum(int num);


	Map<String, Long> getYJNums(int id);


	List<Goods> staffConfirm(int id, int pageNum, int raw) throws IllegalAccessException, InvocationTargetException;


	int getUnConfirmPageNum(int id, int num);
	
}
