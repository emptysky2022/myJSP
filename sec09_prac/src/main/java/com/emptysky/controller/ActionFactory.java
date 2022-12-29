package com.emptysky.controller;

import com.emptysky.controller.action.Action;
import com.emptysky.controller.action.EmployeeInsertAction;
import com.emptysky.controller.action.EmployeeInsertActionForm;
import com.emptysky.controller.action.EmployeeListAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {};
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public static Action getAction(String control) {
		Action action = null;
		
		switch(control) {
		case "employee_list" -> action = new EmployeeListAction();
		case "employee_insert_form" -> action = new EmployeeInsertActionForm();
		case "employee_insert" -> action = new EmployeeInsertAction();
		}
		
		return action;
	}
	
}
