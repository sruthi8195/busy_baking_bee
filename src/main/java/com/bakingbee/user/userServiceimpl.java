package com.bakingbee.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userServiceimpl implements userService {
	@Autowired
	userDAO udao;
	

	public void insert(user U) {
		// TODO Auto-generated method stub
	udao.insert(U);	
	}

	public void update(user U) {
		// TODO Auto-generated method stub
		udao.update(U);
	}

	public void delete(int uid) {
		// TODO Auto-generated method stub
		udao.delete(uid);
	}

	public user getuser(int uid) {
		// TODO Auto-generated method stub
		return udao.getuser(uid);

	}

	public List<user> getAlluser() {
		// TODO Auto-generated method stub
		return udao.getAlluser();
		}

}
