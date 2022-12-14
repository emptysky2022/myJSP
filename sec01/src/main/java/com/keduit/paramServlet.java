package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/param")
public class paramServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		PrintWriter out = response.getWriter();
		out.print("<h1>당신이 입력하신 정보입니다.</h1>");
		out.print("<h3>이름 : " + name + "</h3>");
		out.print("<h3>나이 : " + age + "</h3>");
		out.print("<a href='javascript:history.go(-1)'>다시입력</a>");
	}
}
