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
	public void userJjPage(int id,String sname, String sphone, String saddress, String name, String type, int weight,
			String intro, String rname, String rphone, String raddress) {
		// TODO Auto-generated method stub	
		Tuser tuser = (Tuser) getCurrentSession().get(Tuser.class,id);
		Tgoods tgoods = new Tgoods();
		tgoods.setsUserName(sname);
		tgoods.setsUserPhone(sphone);
		tgoods.setsUserAddress(saddress);
		tgoods.setName(name);
		tgoods.setType(type);
		tgoods.setWeight(weight);
		tgoods.setIntro(intro);
		tgoods.setrUserName(rname);
		tgoods.setrUserPhone(rphone);
		tgoods.setrUserAddress(raddress);
		tgoods.setStatus(false);
		tgoods.setCreatetime(new Date());
		tgoods.setUpdatetime(new Date());
		tgoods.setCode(getNewCode());
		tgoods.setUser(tuser);
		save(tgoods);
	}
	//生成一个订单号yyyyMMddhhmmss+xxxx
	public String getNewCode(){		
		Date date = new Date();
		String d = new SimpleDateFormat("yyyyMMddhhmmss").format(date);
		Random random = new Random();  
        int rannum = (int) (random.nextDouble() * (9999 - 1000 + 1)) + 1000;
		String d2 = d+rannum;
		return d2;
	}

	public List<Tgoods> getMyYj(int id) {
		// TODO Auto-generated method stub	
		String hql="FROM Tgoods t WHERE t.user.userId=?";
		Tuser tuser = (Tuser)getCurrentSession().get(Tuser.class,id);
		List<Tgoods> tgoods = getCurrentSession().createQuery(hql).setParameter(0, tuser.getUserId()).list();
		return tgoods;
	}
	
}
