package com.zust.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_goods")
public class Goods {
	@Id
	@Column(name="goods_id")
	private int goodsId;
	@Column(name="goods_num")
	private int goodsNum;
	@Column(name="a_address")
	private String sAddress;
	@Column(name="e_address")
	private String eAddress;
	@ManyToOne
	@JoinColumn(name="s_user_id")
	private User sUserId;
	@ManyToOne
	@JoinColumn(name="e_user_id")
	private User rUserId;
	@Column(name="weight")
	private int weight;
	@Column(name="type")
	private String type;
	@Column(name="intro")
	private String intro;

	
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}
	public String geteAddress() {
		return eAddress;
	}
	public void seteAddress(String eAddress) {
		this.eAddress = eAddress;
	}

	public User getsUserId() {
		return sUserId;
	}
	public void setsUserId(User sUserId) {
		this.sUserId = sUserId;
	}
	public User getrUserId() {
		return rUserId;
	}
	public void setrUserId(User rUserId) {
		this.rUserId = rUserId;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
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
	
	
}
