package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;
import com.keduit.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardVO bVO = new BoardVO();
		bVO.setName(request.getParameter("name"));
		bVO.setPass(request.getParameter("pass"));
		bVO.setEmail(request.getParameter("email"));
		bVO.setTitle(request.getParameter("title"));
		bVO.setContent(request.getParameter("content"));
		bVO.setNum(Integer.parseInt(request.getParameter("num")));
		System.out.println(bVO.getName() + "이고 " + request.getParameter("name"));
		BoardDAO bDAO = BoardDAO.getInstance();
		bDAO.updateBoard(bVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("BoardServlet?command=board_list");
		dispatcher.forward(request, response);
	}

}
