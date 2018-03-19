	package com.zust.dao.Impl;

import java.io.Serializable;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Repository;

import com.zust.dao.GoodsDaoI;
import com.zust.entity.Tgoods;
import com.zust.entity.Tuser;
@Repository
public class GoodsDaoImpl extends BaseDaoImpl<Tgoods> implements GoodsDaoI {


	public Tgoods search(String s) {
		// TODO Auto-generated method stub
		String hql = "FROM Tgoods WHERE code =?";
		Tgoods tgood = (Tgoods) getCurrentSession().createQuery(hql).setParameter(0, s).uniqueResult();
		return tgood;

	}

	
}
