package com.hexa.web;

import java.time.LocalDate;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
@ManagedBean(name="ubean")
@RequestScoped
public class UserBean {
	private String email;
	private LocalDate dt;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public LocalDate getDt() {
		return dt;
	}
	public void setDt(LocalDate dt) {
		this.dt = dt;
	}
	
	public String processFrm() {
		return "UserView";
	}
	
	
}
