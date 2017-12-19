package com.zust.dao.Impl;



import java.util.Date;

import org.springframework.stereotype.Repository;

import com.zust.dao.LogisticsDaoI;
import com.zust.entity.Tlogistics;

@Repository
public class LogisticsDaoImpl extends BaseDaoImpl<Tlogistics> implements LogisticsDaoI{

	public Tlogistics findLogisticsByGoodsId(int goodsId) {
		// TODO Auto-generated method stub
		String hql="FROM Tlogistics t WHERE t.goods.goodsId="+goodsId;
		Tlogistics tlogistics = (Tlogistics) getCurrentSession().createQuery(hql).uniqueResult();
		return tlogistics;
	}
	


}
