package com.zust.dao.Impl;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.stereotype.Repository;

import com.zust.dao.StaffDaoI;

import com.zust.entity.Tstaff;
@Repository
public class StaffDaoImpl extends BaseDaoImpl<Tstaff> implements StaffDaoI {


	public int isMatched(String email, String password) {
		// TODO Auto-generated method stub
		System.out.println(email+password);
		String hql ="SELECT count(*) FROM Tstaff WHERE email = ? and password = ?";
		int result = ((Long) getCurrentSession().createQuery(hql).setParameter(0, email).setParameter(1, password).uniqueResult()).intValue();
		return result;
	}

	public int getStaffIdByEmail(String email) {
		// TODO Auto-generated method stub
		String hql ="SELECT staffId FROM Tstaff WHERE email = ?";
		int result = (Integer) getCurrentSession().createQuery(hql).setParameter(0, email).uniqueResult();
		return result;
	}

	public Tstaff getStaffById(int id) {
		// TODO Auto-generated method stub
		Tstaff tstaff = get(Tstaff.class, id);
		return tstaff;
	}
	

}
