package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.GoodsDaoI;
import com.zust.dao.UserDaoI;
import com.zust.dto.Goods;
import com.zust.entity.Tgoods;
import com.zust.entity.Tuser;
import com.zust.service.GoodsServiceI;
@Transactional
@Service
public class GoodsServiceImpl implements GoodsServiceI {
	@Autowired
	private GoodsDaoI goodsDao;
	
	@Autowired
	private UserDaoI userDao;
	
	
	public void userJjPage(int id,String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress) {
		// TODO Auto-generated method stub
		goodsDao.userJjPage(id,sname,sphone,saddress,name,type,weight,intro,rname,rphone,raddress);
	}
	public List<Goods> getMyYj(int id) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		List<Tgoods> listOrigin = goodsDao.getMyYj(id);

	    List<Goods> listDestination= entity2dto(listOrigin);

		return listDestination;
	}
	public Goods search(String s) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tgoods tgood =  goodsDao.search(s);
		if(tgood!=null){
			Goods good= entity2dto(tgood);
			return good;
		}
		return null;
	}


	public List<Goods> getUncheckedYJ() throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		List<Tgoods> tgoods = goodsDao.getUncheckedYJ();
		if(tgoods.isEmpty()) return null;
		else {
			List<Goods> listDestination= entity2dto(tgoods);

			return listDestination;
		}
	}
	public List<Goods> getAllYJ() throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		List<Tgoods> tgoods = goodsDao.getAllYJ();
		if(tgoods.isEmpty()) return null;
		else {
			List<Goods> listDestination= entity2dto(tgoods);

			return listDestination;
		}
	}
	public void delGoodsByCode(String delcode) {
		// TODO Auto-generated method stub
		Tgoods tgoods = goodsDao.search(delcode);
		goodsDao.delete(tgoods);
	}
	public void modify(Goods goods) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub

		Tgoods tgoods = goodsDao.search(goods.getCode());
		int id = tgoods.getGoodsId();
		Date date = tgoods.getCreatetime();
		BeanUtils.copyProperties(tgoods, goods);
		tgoods.setGoodsId(id);
		tgoods.setCreatetime(date);
		tgoods.setUpdatetime(new Date());
		
	}
	public List<Goods> entity2dto(List<Tgoods> listOrigin) throws IllegalAccessException, InvocationTargetException{
		List<Goods> listDestination= new ArrayList<Goods>(); 
		 for (Object source: listOrigin ) {
		    	Goods target= new Goods();
		        BeanUtils.copyProperties(target,source);
		        listDestination.add(target);
		     }
			return listDestination;
	}
	public Goods entity2dto(Tgoods tgood) throws IllegalAccessException, InvocationTargetException{
		Goods good = new Goods();
		BeanUtils.copyProperties(good, tgood);
		return good;
	}

	

	



}
