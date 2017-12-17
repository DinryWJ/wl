package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.LogisticsDaoI;
import com.zust.dto.Logistics;
import com.zust.entity.Tlogistics;
import com.zust.service.LogisticsServiceI;
@Transactional
@Service
public class LogisticsServiceImpl implements LogisticsServiceI{

	@Autowired
	private LogisticsDaoI logisticsDao;
	
//	public Logistics entity2dto(Tlogistics listOrigin)
//			throws IllegalAccessException, InvocationTargetException {
//		Logistics listDestination= new ArrayList<Logistics>(); 
//		 for (Object source: listOrigin ) {
//			 Logistics target= new Logistics();
//		        BeanUtils.copyProperties(target,source);
//		        listDestination.add(target);
//		     }
//			return listDestination;
//	}
	
	public Logistics entity2dto(Tlogistics tlogistics) throws IllegalAccessException, InvocationTargetException{
		Logistics logistics = new Logistics();
		BeanUtils.copyProperties(logistics, tlogistics);
		return logistics;	
	}
	public Logistics getgoods(String goodsNum)  throws IllegalAccessException, InvocationTargetException{
		// TODO Auto-generated method stub
		
		int goodsId = logisticsDao.findGoodsIdBynum(goodsNum);
		Tlogistics tlogistics =  logisticsDao.getgoods(goodsId);
		Logistics logistics  = entity2dto(tlogistics);
		return logistics;
		
	}
	public String getgoodsName(String goodsNum) {
		String goodsname = logisticsDao.findGoodsName(goodsNum);
		return goodsname;
	}
	public void updatelocal(String goodsNum,String nowaddress) {
		  logisticsDao.updatelocal(goodsNum,nowaddress);
		
	}
}
