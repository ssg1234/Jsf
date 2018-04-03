package com.hexa.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean(name="tbean")
@RequestScoped
public class TaxBean {
	private String ename;
	private double income;
	private double tax;
	
	public TaxBean() {
		System.out.println("tax bean constructor invoked");
	}
	public String getEname() {
		System.out.println("ename getter");
		return ename;
	}
	public void setEname(String ename) {
		System.out.println("ename setter");
		this.ename = ename;
	}
	public double getIncome() {
		System.out.println("income getter");
		return income;
	}
	public void setIncome(double income) {
		System.out.println("income setter");
		this.income = income;
	}
	public double getTax() {
		System.out.println("tax getter");
		return tax;
	}
	public void setTax(double tax) {
		System.out.println("tax setter");
		this.tax = tax;
	}
	
	
	//action method
	public String calcTax() {
		if(income>10000000) 
			tax = 750000 * 0.1 + (income-1000000)* 0.15;
		 else if(income>250000)
			this.tax =(income - 250000)* 0.1;
		return "TaxSubmit";
	}

}
