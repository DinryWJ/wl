package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_staff") 
public class Staff {
	@Id
	@Column(name="staff_id")
	private int staffId;
	@Column(name="name")
	private String name;
	@Column(name="gender")
	private boolean gender;
	@ManyToOne
	@JoinColumn(name="station_id")
	private Station station;
	@Column(name="position")
	private String position;
	@Column(name="phone")
	private int phone;
	@Column(name="address")
	private String address;
	
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public Station getStation() {
		return station;
	}
	public void setStation(Station station) {
		this.station = station;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
