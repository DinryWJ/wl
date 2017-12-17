package com.zust.dao.Impl;



import java.util.Date;

import org.springframework.stereotype.Repository;

import com.zust.dao.LogisticsDaoI;
import com.zust.entity.Tlogistics;

@Repository
public class LogisticsDaoImpl extends BaseDaoImpl<Tlogistics> implements LogisticsDaoI{
	
	public Tlogistics getgoods(int goodsId){
		Tlogistics tlogistics = get(Tlogistics.class, goodsId);
		return tlogistics;
	}

	public int findGoodsIdBynum(String goodsNum) {
		String hql ="SELECT t.goodsId FROM Tgoods t WHERE code = ?";
		int result = (Integer) getCurrentSession().createQuery(hql).setParameter(0, goodsNum).uniqueResult();
		return result;	
	}

	public String findGoodsName(String goodsNum) {
		String hql ="SELECT t.name FROM Tgoods t WHERE code = ?";
		String result = (String) getCurrentSession().createQuery(hql).setParameter(0, goodsNum).uniqueResult();
		return result;
	}

	public void updatelocal(String goodsNum,String nowaddress) {
		System.out.println("1出");
		String hql ="SELECT t.goodsId FROM Tgoods t WHERE code = ?";
		int id =  (Integer) getCurrentSession().createQuery(hql).setParameter(0,goodsNum).uniqueResult();
		Tlogistics tlogistics = (Tlogistics)get(Tlogistics.class,id);
		
		System.out.println("8出"+nowaddress);
		tlogistics.setmAddress(nowaddress);
		tlogistics.setmTime(new Date().toString());
	}

}
