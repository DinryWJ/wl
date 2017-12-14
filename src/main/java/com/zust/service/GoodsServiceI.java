package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dto.Goods;


public interface GoodsServiceI {

	List<Goods> getMyYj(int id) throws IllegalAccessException, InvocationTargetException;

	void userJjPage(int id, String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress);

	List<Goods> search(String s) throws IllegalAccessException, InvocationTargetException;
	
}
