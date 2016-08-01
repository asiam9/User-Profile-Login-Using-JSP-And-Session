package com.bitwise.userLogin;

import java.io.Serializable;

public class Profile implements Serializable{

	String degree,college,city;
	int year;
	float percentage;

	String board12,school12,city12;
	int year12;
	float percentage12;

	String board10,school10,city10;
	int year10;
	float percentage10;

	public Profile(){}

	

	public Profile(String degree, String college, String city, int year, float percentage, String board12,
			String school12, String city12, int year12, float percentage12, String board10, String school10,
			String city10, int year10, float percentage10) {
		super();
		this.degree = degree;
		this.college = college;
		this.city = city;
		this.year = year;
		this.percentage = percentage;
		this.board12 = board12;
		this.school12 = school12;
		this.city12 = city12;
		this.year12 = year12;
		this.percentage12 = percentage12;
		this.board10 = board10;
		this.school10 = school10;
		this.city10 = city10;
		this.year10 = year10;
		this.percentage10 = percentage10;
	}

	public String getBoard12() {
		return board12;
	}

	public void setBoard12(String board12) {
		this.board12 = board12;
	}

	public String getSchool12() {
		return school12;
	}

	public void setSchool12(String school12) {
		this.school12 = school12;
	}

	public String getCity12() {
		return city12;
	}

	public void setCity12(String city12) {
		this.city12 = city12;
	}

	public int getYear12() {
		return year12;
	}

	public void setYear12(int year12) {
		this.year12 = year12;
	}

	public float getPercentage12() {
		return percentage12;
	}

	public void setPercentage12(float percentage12) {
		this.percentage12 = percentage12;
	}

	public String getBoard10() {
		return board10;
	}

	public void setBoard10(String board10) {
		this.board10 = board10;
	}

	public String getSchool10() {
		return school10;
	}

	public void setSchool10(String school10) {
		this.school10 = school10;
	}

	public String getCity10() {
		return city10;
	}

	public void setCity10(String city10) {
		this.city10 = city10;
	}

	public int getYear10() {
		return year10;
	}

	public void setYear10(int year10) {
		this.year10 = year10;
	}

	public float getPercentage10() {
		return percentage10;
	}

	public void setPercentage10(float percentage10) {
		this.percentage10 = percentage10;
	}


	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public float getPercentage() {
		return percentage;
	}
	public void setPercentage(float percentage) {
		this.percentage = percentage;
	}

}
