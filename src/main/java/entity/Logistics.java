package entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_logistics")
public class Logistics {
	@Id
	@Column(name="logistics_id")
	private int logisticsId;
	@ManyToOne
	@JoinColumn(name="goods_id")
	private Goods goods;
	@Column(name="m_address")
	private String mAddress;
	@Column(name="m_time")
	private String mTime;
	@Column(name="updatetime")
	private Date updatetime;
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	@Column(name="createtime")
	private Date createtime;

	public int getLogisticsId() {
		return logisticsId;
	}
	public void setLogisticsId(int logisticsId) {
		this.logisticsId = logisticsId;
	}

	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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


}
