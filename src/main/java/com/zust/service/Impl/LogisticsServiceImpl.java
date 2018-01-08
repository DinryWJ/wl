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
import com.zust.dao.StationDaoI;
import com.zust.dto.Logistics;
import com.zust.dto.Staff;
import com.zust.entity.Tgoods;
import com.zust.entity.Tlogistics;
import com.zust.entity.Tstaff;
import com.zust.entity.Tstation;
import com.zust.service.LogisticsServiceI;
@Transactional
@Service
public class LogisticsServiceImpl implements LogisticsServiceI{

	@Autowired
	private LogisticsDaoI logisticsDao;
	
	@Autowired
	private GoodsDaoI goodsDao;
	
	@Autowired
	private StationDaoI stationDao;

	public Logistics getLogisticsByGoodsId(int goodsId) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tlogistics tlogistics = logisticsDao.findLogisticsByGoodsId(goodsId);
		Logistics logistics = entity2dto(tlogistics);
		return logistics;
	}
	
	public Logistics entity2dto(Tlogistics tlogistics) throws IllegalAccessException, InvocationTargetException{
		Logistics logistics = new Logistics();
		BeanUtils.copyProperties(logistics, tlogistics);
		logistics.setGoodsId(tlogistics.getGoods().getGoodsId());
		return logistics;
	}

	public void setZhongzhuan(int goodsId, String address) {
		// TODO Auto-generated method stub
		Date date = new Date();
		String d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		Tlogistics tlogistics = logisticsDao.findLogisticsByGoodsId(goodsId);
		tlogistics.setmAddress(tlogistics.getmAddress()+","+address);
		tlogistics.setmTime(tlogistics.getmTime()+","+d);
	}
	public void setLogistics(Logistics logistic) {
		// TODO Auto-generated method stub
		Date date = new Date();
		String d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		Tgoods tgoods = goodsDao.search(logistic.getGoodsNum());
		tgoods.setStatus2(true);
		tgoods.setUpdatetime(new Date());
		Tlogistics tlogistics = new Tlogistics();
		tlogistics.setmAddress(logistic.getmAddress());
		tlogistics.setmTime(d);
		tlogistics.setWait(true);
		tlogistics.setGoods(tgoods);
		logisticsDao.save(tlogistics);
	}

	public void checkConfirm(String code) {
		// TODO Auto-generated method stub
		int id = goodsDao.search(code).getGoodsId();
		String hql ="FROM Tlogistics WHERE goods.goodsId="+id;
		Tlogistics  tlogistics = logisticsDao.get(hql);
		tlogistics.setWait(false);
		
	}

	public Long getNewComNum(int id) {
		// TODO Auto-generated method stub
		String name = stationDao.get(Tstation.class	, id).getName();
		String hql = "SELECT count(*) FROM Tlogistics WHERE   wait=true AND mAddress ='"+name+"'";
		Long x = logisticsDao.count(hql);
		return x;
	}

	public Long getNewComNum2() {
		// TODO Auto-generated method stub
		String hql="SELECT count(*) FROM Tgoods WHERE status2=false";
		Long x = logisticsDao.count(hql);
		return x;
	}

	public void delLogisticsByGoodsId(int id) {
		// TODO Auto-generated method stub
		Tgoods t = goodsDao.get(Tgoods.class, id);
		String hql = "FROM Tlogistics WHERE goods.goodsId="+t.getGoodsId();
		Tlogistics tlogistics = logisticsDao.get(hql);
		logisticsDao.delete(tlogistics);
	}




}
