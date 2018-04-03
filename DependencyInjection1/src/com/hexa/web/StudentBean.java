package com.hexa.web;


import java.util.List;

import javax.faces.event.ActionEvent;

import com.hexa.dao.IDao;
import com.hexa.entity.Student;

public class StudentBean {
	private List<Student> slist;
	private Student stu;
	private int sid;
	private IDao dao;
	private boolean panelFlag;
	//setter for injection by jsf
	public void setDao(IDao dao) {
		this.dao = dao;
	}
	

	public List<Student> getSlist() {
		this.slist =dao.getStudents();
		return slist;
	}

	public Student getStu() {
		return stu;
	}
	
	
	
   public void setStu(Student stu) {
		this.stu = stu;
	}
   


public int getSid() {
	return sid;
}


public void setSid(int sid) {
	this.sid = sid;
}



public boolean isPanelFlag() {
	return panelFlag;
}


public void setPanelFlag(boolean panelFlag) {
	this.panelFlag = panelFlag;
}

//action method
public void viewById(ActionEvent ae) {
	   this.stu =dao.getStudent(sid);
	   if(this.stu != null) {
		   this.panelFlag =false;
	   }else {
		   this.panelFlag =true;
	   }
   }
	
}
