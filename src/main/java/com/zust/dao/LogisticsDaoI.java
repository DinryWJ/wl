package com.zust.dao;

import com.zust.entity.Tlogistics;

public interface LogisticsDaoI extends BaseDaoI<Tlogistics> {

	Tlogistics findLogisticsByGoodsId(int goodsId);

}
