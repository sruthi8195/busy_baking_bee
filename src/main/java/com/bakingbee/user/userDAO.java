package com.bakingbee.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public interface userDAO {
	
	@Autowired
	
	public void insert(user U);
	public void update(user U);
	public void delete(int uid);
	public user getuser(int uid);
	public List <user> getAlluser();
		

}
