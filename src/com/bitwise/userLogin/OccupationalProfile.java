package com.bitwise.userLogin;

import java.io.Serializable;
import java.util.Date;

public class OccupationalProfile implements Serializable {

	String empid,name,job,cname;
	String doj;
	int exp;
	
	public OccupationalProfile() {}
	
	public OccupationalProfile(String empid, String name, String job, String cname, String doj, int exp) {
		super();
		this.empid = empid;
		this.name = name;
		this.job = job;
		this.cname = cname;
		this.doj = doj;
		this.exp = exp;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	
	
	
}
