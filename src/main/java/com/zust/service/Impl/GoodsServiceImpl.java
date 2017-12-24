package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

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
	
	
	public void userJjPage(int id,Goods goods) {
		// TODO Auto-generated method stub
		Tuser tuser = userDao.get(Tuser.class, id);
		System.out.println(id);
		Tgoods tgoods = new Tgoods();
		tgoods.setsUserName(goods.getsUserName());
		tgoods.setsUserPhone(goods.getsUserPhone());
		tgoods.setsUserAddress(goods.getsUserAddress());
		tgoods.setName(goods.getName());
		tgoods.setType(goods.getType());
		tgoods.setWeight(goods.getWeight());
		tgoods.setIntro(goods.getIntro());
		tgoods.setrUserName(goods.getrUserName());
		tgoods.setrUserPhone(goods.getrUserPhone());
		tgoods.setrUserAddress(goods.getrUserAddress());
		tgoods.setStatus(false);
		tgoods.setStatus2(false);
		tgoods.setCreatetime(new Date());
		tgoods.setUpdatetime(new Date());
		tgoods.setCode(getNewCode());
		tgoods.setUser(tuser);
		goodsDao.save(tgoods);
	}
	public String getNewCode(){		
		Date date = new Date();
		String d = new SimpleDateFormat("yyyyMMddhhmmss").format(date);
		Random random = new Random();  
        int rannum = (int) (random.nextDouble() * (9999 - 1000 + 1)) + 1000;
		String d2 = d+rannum;
		return d2;
	}
	public List<Goods> getMyYj(int id,int pageNum,int rows) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql = "FROM Tgoods WHERE user.userId="+id;
		List<Tgoods> listOrigin = goodsDao.find(hql, pageNum, rows);

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


	public List<Goods> getUncheckedYJ(int pageNum,int raw) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql = "FROM Tgoods WHERE status2=false";
		List<Tgoods> tgoods = goodsDao.find(hql, pageNum, raw);
		if(tgoods.isEmpty()) return null;
		else {
			List<Goods> listDestination= entity2dto(tgoods);

			return listDestination;
		}
	}
	public List<Goods> getAllYJ(int pageNum,int num) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql = "FROM Tgoods";
		List<Tgoods> tgoods = goodsDao.find(hql, pageNum, num);
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
	public int getYJPageNum(int userId,int num) {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tgoods WHERE user.userId="+userId;
		Long i = goodsDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/num); 
		int total2 =(int)(total); 
		if(total2<=1)total2=1;
		return total2;
	}
	public void setComplete(int goodsId) {
		// TODO Auto-generated method stub
		Tgoods tgoods = goodsDao.get(Tgoods.class, goodsId);
		tgoods.setStatus(true);
		tgoods.setUpdatetime(new Date());
	}
	public int getPageNum(int num) {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tgoods ";
		Long i = goodsDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/num); 
		int total2 =(int)(total); 
		if(total2<=1)total2=1;
		return total2;
	}
	public int getUncheckPageNum(int num) {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tgoods WHERE status2=false";
		Long i = goodsDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/num); 
		int total2 =(int)(total); 
		if(total2<=1)total2=1;
		return total2;
	}
	public Map<String, Long> getYJNums(int id) {
		// TODO Auto-generated method stub
		Map<String, Long> map= new HashMap<String, Long>();
		String hq4 = "SELECT count(*) FROM Tgoods WHERE user.userId="+id;
		Long c4 = goodsDao.count(hq4);
		map.put("yj4", c4);
		
		String hql3 = "SELECT count(*) FROM Tgoods WHERE status=false AND status2=false AND user.userId="+id;
		Long c3 = goodsDao.count(hql3);
		map.put("yj3", c3);
		
		String hql2 = "SELECT count(*) FROM Tgoods WHERE status=false AND status2=true AND user.userId="+id;
		Long c2 = goodsDao.count(hql2);
		map.put("yj2", c2);
		
		String hql1 = "SELECT count(*) FROM Tgoods WHERE status=true AND status2=true AND user.userId="+id;
		Long c1 = goodsDao.count(hql1);
		map.put("yj1", c1);
		
		return map;
	}

	

	



}
