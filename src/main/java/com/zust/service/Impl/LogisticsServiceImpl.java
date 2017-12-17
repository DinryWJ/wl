package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.GoodsDaoI;
import com.zust.dao.LogisticsDaoI;
import com.zust.dto.Logistics;
import com.zust.entity.Tgoods;
import com.zust.entity.Tlogistics;
import com.zust.service.LogisticsServiceI;
@Transactional
@Service
public class LogisticsServiceImpl implements LogisticsServiceI{

	@Autowired
	private LogisticsDaoI logisticsDao;
	
	@Autowired
	private GoodsDaoI goodsDao;
	
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
	public void setLoginstics(Logistics logistic) {
		// TODO Auto-generated method stub
		Date date = new Date();
		String d = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
		Tgoods tgoods = goodsDao.search(logistic.getGoodsNum());
		tgoods.setStatus2(true);
		tgoods.setUpdatetime(new Date());
		Tlogistics tlogistics = new Tlogistics();
		tlogistics.setmAddress(logistic.getmAddress());
		tlogistics.setmTime(d);
		tlogistics.setIntro(logistic.getIntro());
		tlogistics.setTgoods(tgoods);
		logisticsDao.save(tlogistics);
	}

}
