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
	
	private Date mTime;
	
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
	public Date getmTime() {
		return mTime;
	}

	public void setmTime(Date mTime) {
		this.mTime = mTime;
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
