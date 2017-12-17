package com.zust.dao;

import com.zust.entity.Tlogistics;

public interface LogisticsDaoI extends BaseDaoI<Tlogistics> {
	public Tlogistics getgoods(int goodsNum);
	public int findGoodsIdBynum(String goodsNum);
	public String findGoodsName(String goodsNum);
	public void updatelocal(String goodsNum, String nowaddress);
}
