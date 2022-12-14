package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check")
public class CheckboxServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String[] items = request.getParameterValues("item");
		if(items == null) {
			out.print("선택한 항목이 없습니다.");
		}else {
			out.println("<h1>당신이 선택한 아이템들입니다.</h1>");
			
			for(int i = 0; i < items.length; i++) {
				out.println("<p>" + items[i] + "</p>");
			}
		}
		String job = request.getParameter("job");
		out.println("<h1>당신이 선택한 직업입니다.</h1>");
		out.print("<p>" + job + "</p>");
		
		String[] interest = request.getParameterValues("interest");
		if(interest == null) {
			out.print("선택한 항목이 없습니다.");
		}else {
			out.println("<h1>당신이 선택한 관심분야들입니다.</h1>");
			
			for(int i = 0; i < interest.length; i++) {
				out.println("<p>" + interest[i] + "</p>");
			}
		}
		
	}

}
