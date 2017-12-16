package com.zust.dto;

public class Station {
	
	private int stationId;
	
	private String name;
	
	private String address;

	private String intro;

	private String phone;
	
	private String sStaffId;

	public int getStationId() {
		return stationId;
	}

	public void setStationId(int stationId) {
		this.stationId = stationId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getsStaffId() {
		return sStaffId;
	}

	public void setsStaffId(String sStaffId) {
		this.sStaffId = sStaffId;
	}
	
}
