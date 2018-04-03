package com.hexa.bean;

public class IBean {
	private int amt;
	private double rate;
	private int years;
	private double result;
	private String resCaption;
	
	public int getAmt() {
		return amt;
	}
	public void setAmt(int amt) {
		this.amt = amt;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public int getYears() {
		return years;
	}
	public void setYears(int years) {
		this.years = years;
	}
	
	public double getResult() {
		return result;
	}
	public void setResult(double result) {
		this.result = result;
	}
	
	public String getResCaption() {
		return resCaption;
	}
	public void setResCaption(String resCaption) {
		this.resCaption = resCaption;
	}
	
	
	public String calcSI() {
		result = amt * rate * years/100;
		this.resCaption = "Simple Interest";
		return "calculated";
	}
	
	public String calcCI() {
		this.result =amt * Math.pow((1+rate/100),years) - amt;
		this.resCaption = "Compound Interest";
		return "cicalculated";
	}
	
	
}
