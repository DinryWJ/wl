package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dto.Goods;
import com.zust.entity.Tgoods;


public interface GoodsServiceI {

	List<Goods> getMyYj(int id) throws IllegalAccessException, InvocationTargetException;

	void userJjPage(int id, String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress);

	Goods search(String s) throws IllegalAccessException, InvocationTargetException;

	List<Goods> getUncheckedYJ() throws IllegalAccessException, InvocationTargetException;
	
	Goods entity2dto(Tgoods tgood) throws IllegalAccessException, InvocationTargetException;
	
	List<Goods> entity2dto(List<Tgoods> listOrigin) throws IllegalAccessException, InvocationTargetException;

	void delGoodsByCode(String delcode);

	List<Goods> getAllYJ() throws IllegalAccessException, InvocationTargetException;

	void modify(Goods goods) throws IllegalAccessException, InvocationTargetException;
	
	
	
}
