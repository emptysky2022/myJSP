package com.emptysky.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emptysky.dao.EmployeeDAO;
import com.emptysky.dto.EmployeeVO;

public class EmployeeUpdateFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "employees/employeeUpdate.jsp";
		EmployeeDAO eDAO = EmployeeDAO.getInstance();
		String id = request.getParameter("employee_id");
		
		EmployeeVO eVO = eDAO.getOneEmployee(id);
		request.setAttribute("employee", eVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
