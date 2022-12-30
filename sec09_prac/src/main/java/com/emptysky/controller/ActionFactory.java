package com.emptysky.controller;

import com.emptysky.controller.action.Action;
import com.emptysky.controller.action.EmployeeDeleteAction;
import com.emptysky.controller.action.EmployeeInsertAction;
import com.emptysky.controller.action.EmployeeInsertActionForm;
import com.emptysky.controller.action.EmployeeListAction;
import com.emptysky.controller.action.EmployeeUpdateAction;
import com.emptysky.controller.action.EmployeeUpdateFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {};
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public static Action getAction(String control) {
		Action action = null;
		System.out.println(control + " Action Factory");
		switch(control) {
		case "employee_list" -> action = new EmployeeListAction();
		case "employee_insert_form" -> action = new EmployeeInsertActionForm();
		case "employee_insert" -> action = new EmployeeInsertAction();
		case "employee_update_form" -> action = new EmployeeUpdateFormAction();
		case "employee_update" -> action = new EmployeeUpdateAction();
		case "employee_delete" -> action = new EmployeeDeleteAction();
		}
		
		return action;
	}
	
}
