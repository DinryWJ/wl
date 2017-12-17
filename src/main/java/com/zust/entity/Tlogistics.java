package com.zust.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_logistics")
public class Tlogistics {
	private int logisticsId;
	
	private String mAddress;
	
	private String mTime;
	
	private String intro;
	
	private Tgoods tgoods;

	@Id
	@Column(name="logistics_id")
	public int getLogisticsId() {
		return logisticsId;
	}

	public void setLogisticsId(int logisticsId) {
		this.logisticsId = logisticsId;
	}

	@Column(name="m_address")
	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	@Column(name="m_time")
	public String getmTime() {
		return mTime;
	}

	public void setmTime(String mTime) {
		this.mTime = mTime;
	}
	@Column
	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	@ManyToOne
	@JoinColumn(name="goods_id")
	public Tgoods getTgoods() {
		return tgoods;
	}

	public void setTgoods(Tgoods tgoods) {
		this.tgoods = tgoods;
	}
	
	
}
