package com.bankingbee.userrole;

import java.util.List;


public interface UserRoleService {
	
public void insert(UserRole r);
	
	public void update(UserRole r);
	
	public void delete(int rid);
	
	public UserRole getUserRole(int rid);

	public List<UserRole> ListUserRole();

}
