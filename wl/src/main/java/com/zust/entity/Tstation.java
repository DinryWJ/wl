package com.zust.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="t_station")
public class Tstation {

	private int stationId;
	
	private String name;
	
	private String address;

	private String intro;

	private String phone;
	
	private Set<Tstaff> sStaff = new HashSet<Tstaff>();
	
	@Id
	@Column(name="station_id")
	public int getStationId() {
		return stationId;
	}
	public void setStationId(int stationId) {
		this.stationId = stationId;
	}
	@Column
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@Column
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@OneToMany(mappedBy="station")
	public Set<Tstaff> getsStaff() {
		return sStaff;
	}
	public void setsStaff(Set<Tstaff> sStaff) {
		this.sStaff = sStaff;
	}



	
	
}
