package com.emptysky.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emptysky.dao.EmployeeDAO;
import com.emptysky.dto.EmployeeVO;

public class EmployeeListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="employees/employeeList.jsp";
		EmployeeDAO eDAO = EmployeeDAO.getInstance();
		List<EmployeeVO> employees = eDAO.getAllEmployeesList();
		
		request.setAttribute("employees", employees);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
