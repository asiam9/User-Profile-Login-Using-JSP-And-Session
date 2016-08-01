package com.bitwise.userLogin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class StoreInHashMapTagHandler extends TagSupport{

	HashMap<String, ArrayList> map = new HashMap<>();
	ArrayList arr = new ArrayList<>();
	Profile profile ;
	OccupationalProfile occ;
	ResidentialProfile res ;
	String name;

	public StoreInHashMapTagHandler(Profile p ,OccupationalProfile o,ResidentialProfile r) {
		// TODO Auto-generated constructor stub
		profile=p;
		occ=o;
		res=r;
	}
	
	public int doStartTage() throws JspException {
		arr.add(profile);
		arr.add(occ);
		arr.add(res);
		map.put(name, arr);
		for(Map.Entry m: map.entrySet() ){  
			System.out.println(m.getKey()+","+m.getValue());  
		}
		return 1;
	}
	public void setMap(HashMap<String, ArrayList> map) {
		this.map = map;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setArr(ArrayList arr) {
		this.arr = arr;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	public void setOcc(OccupationalProfile occ) {
		this.occ = occ;
	}
	public void setRes(ResidentialProfile res) {
		this.res = res;
	}
}
