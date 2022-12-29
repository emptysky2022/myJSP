package com.emptysky.controller.action;

import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emptysky.dao.EmployeeDAO;
import com.emptysky.dto.EmployeeVO;

public class EmployeeInsertAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeDAO eDAO = EmployeeDAO.getInstance();
		
		EmployeeVO eVO = new EmployeeVO();
		System.out.println(request.getParameter("enter"));
		LocalDateTime date = LocalDateTime.of(LocalDate.parse(request.getParameter("enter")), null);
		Timestamp timestamp = Timestamp.valueOf(date);
		eVO.setId(request.getParameter("id"));
		eVO.setPass(request.getParameter("pass"));
		eVO.setName(request.getParameter("name"));
		eVO.setLev(request.getParameter("lev"));
		eVO.setEnter(timestamp);
		eVO.setGender(request.getParameter("gender"));
		eVO.setPhone(request.getParameter("phone"));
		
		eDAO.insertEmployee(eVO);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeServlet?employee_list");
		dispatcher.forward(request, response);
	}

}
