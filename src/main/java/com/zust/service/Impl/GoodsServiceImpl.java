package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.GoodsDaoI;
import com.zust.dto.Goods;
import com.zust.entity.Tgoods;
import com.zust.service.GoodsServiceI;
@Transactional
@Service
public class GoodsServiceImpl implements GoodsServiceI {
	@Autowired
	private GoodsDaoI goodsDao;
	
	public void userJjPage(int id,String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress) {
		// TODO Auto-generated method stub
		goodsDao.userJjPage(id,sname,sphone,saddress,name,type,weight,intro,rname,rphone,raddress);
	}
	public List<Goods> getMyYj(int id) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		List<Tgoods> listOrigin = goodsDao.getMyYj(id);

	    List<Goods> listDestination= new ArrayList<Goods>(); 

	     for (Object source: listOrigin ) {
	    	Goods target= new Goods();
	        BeanUtils.copyProperties(target,source);
	        listDestination.add(target);
	     }
		return listDestination;
	}

}
