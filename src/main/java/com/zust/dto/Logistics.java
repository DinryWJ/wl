package com.zust.dto;

import java.util.Date;

public class Logistics {
	private int logisticsId;
	
	private String mAddress;
	
	private String mTime;
	
	private int goodsId;

	private String name;
	
	private String goodsNum;
	
	private boolean wait;
	
	public int getLogisticsId() {
		return logisticsId;
	}

	public void setLogisticsId(int logisticsId) {
		this.logisticsId = logisticsId;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public String getmTime() {
		return mTime;
	}

	public void setmTime(String mTime) {
		this.mTime = mTime;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(String goodsNum) {
		this.goodsNum = goodsNum;
	}

	public boolean isWait() {
		return wait;
	}

	public void setWait(boolean wait) {
		this.wait = wait;
	}


	
	
}
