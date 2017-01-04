package com.bakingbee.user;

import java.io.Serializable;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
@Entity


public class user implements Serializable  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4126773512215439656L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int Id;


	private String username;
	private String Email;
	private String Password;
	@Transient
	private String Password_confirmation;
	private String mobile;
	private int Role=1;
	private boolean Active=true;
	
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}

	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public boolean isActive() {
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}

	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String Username) {
		username = Username;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getPassword_confirmation() {
		return Password_confirmation;
	}
	public void setPassword_confirmation(String password_confirmation) {
		Password_confirmation = password_confirmation;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
@Override
public String toString(){
	return "{ID:\"" + Id + "\", Email:\"" + Email + "\", Username:\"" + username + "\", mobile:\"" + mobile + "\", Role:\"" + Role + "\", Active:" + Active + ", Delete: false}";
	
}
	
	
	
}
