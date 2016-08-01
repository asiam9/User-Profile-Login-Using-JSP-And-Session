package com.bitwise.userLogin;

import java.util.HashMap;

public class UserDetails {

	private HashMap<String, String> userLoginDetails=new HashMap<>();
	
	public UserDetails() {
		userLoginDetails.put("simar", "simar");
		userLoginDetails.put("abc", "abc");
		userLoginDetails.put("aaa", "aaa");
	}
	public HashMap<String, String> getUserLogin() {
		return userLoginDetails;
	}

}
