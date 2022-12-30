package com.emptysky.controller.action;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emptysky.dao.EmployeeDAO;
import com.emptysky.dto.EmployeeVO;

public class EmployeeUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("employee_id");
		EmployeeDAO eDAO = EmployeeDAO.getInstance();
		
		EmployeeVO eVO = new EmployeeVO();
		
		Date date = Date.valueOf(request.getParameter("enter"));
		Timestamp timestamp = new Timestamp(date.getTime());
		
		eVO.setName(request.getParameter("name"));
		eVO.setId(request.getParameter("id"));
		eVO.setPass(request.getParameter("pass"));
		eVO.setLev(request.getParameter("lev"));
		eVO.setGender(request.getParameter("gender"));
		eVO.setPhone(request.getParameter("phone"));
		eVO.setEnter(timestamp);
		
		eDAO.updateEmployee(id, eVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeServlet?control=employee_list");
		dispatcher.forward(request, response);
	}

}
