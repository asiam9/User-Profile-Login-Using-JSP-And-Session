package com.bitwise.userLogin;

import java.io.Serializable;

public class ResidentialProfile implements Serializable {
 
	String permanentAddr,city,state,country,pincode,mob;
	public ResidentialProfile() {}
	public ResidentialProfile(String permanentAddr, String city, String state, String country, String pincode,
			String mob) {
		super();
		this.permanentAddr = permanentAddr;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
		this.mob = mob;
	}
	public String getPermanentAddr() {
		return permanentAddr;
	}
	public void setPermanentAddr(String permanentAddr) {
		this.permanentAddr = permanentAddr;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	
}
