package com.hexa.web;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;
@FacesValidator(value="emailid")
public class EmailValidator implements Validator{

	@Override
	public void validate(FacesContext fctx, UIComponent ui, Object obj) 
			throws ValidatorException {
		String str =(String)obj;
		if(!str.matches("[a-zA-Z]+[@][a-z]+[.](com|co.in)")){
			FacesMessage msg = new FacesMessage("Invalid Email");
			throw new ValidatorException(msg);
	}
	
	}	
}


