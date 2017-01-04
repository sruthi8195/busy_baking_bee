package com.bakingbee.user;

import java.util.List;


public interface userService {
	
	public void insert(user U);
	public void update(user U);
	public void delete(int uid);
	public user getuser(int uid);
	public List <user> getAlluser();
		

	

}
