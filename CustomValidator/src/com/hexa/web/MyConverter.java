package com.hexa.web;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;

public class MyConverter implements Converter {
	//this method is invoked when sending form data to UI component
	@Override
	public Object getAsObject(FacesContext arg0, UIComponent ui, String str) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		LocalDate dt =LocalDate.parse(str,dtf);
		return dt;
	}
	//this method is invoked when sending the data from UI component to browser
	@Override
	public String getAsString(FacesContext arg0, UIComponent arg1, Object obj) {
		LocalDate dt =(LocalDate) obj;
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		String str = dtf.format(dt);
		return str;
	}

}
