package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/radio")
public class RadioServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String gender = request.getParameter("gender");
		String chkmail = request.getParameter("chk_mail");
		String content = request.getParameter("content");
		PrintWriter out = response.getWriter();
		out.println("<h1>당신이 입력한 정보입니다.</h1>");
		out.println("성별: <b>");
		out.println(gender + "</b>");		
		out.println("<br>메일 정보 수신 여부 : <b>");
		out.println(chkmail + "</b><br>");
		out.println("가입 인사: <b><pre>");
		out.println(content + "</b><br>");		
		out.println("<a href='javascript:history.go(-1)'>다시</a>");
		out.close();
		
	}

}
