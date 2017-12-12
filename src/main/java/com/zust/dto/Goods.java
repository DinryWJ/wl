package com.zust.dto;

import java.util.Date;

import com.zust.entity.Tuser;

public class Goods {
	private int goodsId;
	
	private String code;

	private String name;

	private String type;

	private String intro;

	private int weight;
	
	private int sUserId;
	
	private String sUserName;
	
	private String sUserAddress;
	
	private String sUserPhone;
	
	private String rUserName;
	
	private String rUserAddress;
	
	private String rUserPhone;

	private Date createtime;

	private Date updatetime;

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getsUserId() {
		return sUserId;
	}

	public void setsUserId(int sUserId) {
		this.sUserId = sUserId;
	}

	public String getsUserName() {
		return sUserName;
	}

	public void setsUserName(String sUserName) {
		this.sUserName = sUserName;
	}

	public String getsUserAddress() {
		return sUserAddress;
	}

	public void setsUserAddress(String sUserAddress) {
		this.sUserAddress = sUserAddress;
	}

	public String getsUserPhone() {
		return sUserPhone;
	}

	public void setsUserPhone(String sUserPhone) {
		this.sUserPhone = sUserPhone;
	}

	public String getrUserName() {
		return rUserName;
	}

	public void setrUserName(String rUserName) {
		this.rUserName = rUserName;
	}

	public String getrUserAddress() {
		return rUserAddress;
	}

	public void setrUserAddress(String rUserAddress) {
		this.rUserAddress = rUserAddress;
	}

	public String getrUserPhone() {
		return rUserPhone;
	}

	public void setrUserPhone(String rUserPhone) {
		this.rUserPhone = rUserPhone;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
	
	
}
