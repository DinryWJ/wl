package com.zust.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_goods")
public class Tgoods {

	private int goodsId;
	
	private String code;

	private String name;

	private String type;

	private String intro;

	private int weight;

//	private int sUserId;
	
	private String sUserName;
	
	private String sUserAddress;
	
	private String sUserPhone;
	
	private String rUserName;
	
	private String rUserAddress;
	
	private String rUserPhone;
	
	private boolean status; //是否完成
	
	private boolean status2;//是否上门取件
	
	private Date createtime;

	private Date updatetime;
	
	private Tuser user;
	
	@Id
	@Column(name="goods_id")
	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	
	@Column
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@Column
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column
	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	@Column
	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

//	@Column(name="s_user_id")
//	public int getsUserId() {
//		return sUserId;
//	}
//
//	public void setsUserId(int sUserId) {
//		this.sUserId = sUserId;
//	}
	
	@Column(name="s_user_name")
	public String getsUserName() {
		return sUserName;
	}

	public void setsUserName(String sUserName) {
		this.sUserName = sUserName;
	}

	@Column(name="s_user_address")
	public String getsUserAddress() {
		return sUserAddress;
	}

	public void setsUserAddress(String sUserAddress) {
		this.sUserAddress = sUserAddress;
	}

	@Column(name="s_user_phone")
	public String getsUserPhone() {
		return sUserPhone;
	}

	public void setsUserPhone(String sUserPhone) {
		this.sUserPhone = sUserPhone;
	}

	@Column(name="r_user_name")
	public String getrUserName() {
		return rUserName;
	}

	public void setrUserName(String rUserName) {
		this.rUserName = rUserName;
	}

	@Column(name="r_user_address")
	public String getrUserAddress() {
		return rUserAddress;
	}

	public void setrUserAddress(String rUserAddress) {
		this.rUserAddress = rUserAddress;
	}
	
	@Column(name="r_user_phone")
	public String getrUserPhone() {
		return rUserPhone;
	}

	public void setrUserPhone(String rUserPhone) {
		this.rUserPhone = rUserPhone;
	}
	
	@Column
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column
	public boolean isStatus2() {
		return status2;
	}

	public void setStatus2(boolean status2) {
		this.status2 = status2;
	}

	@Column
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
	@Column
	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
	@ManyToOne
	@JoinColumn(name="s_user_id")
	public Tuser getUser() {
		return user;
	}

	public void setUser(Tuser tuser) {
		this.user = tuser;
	}
	

}
