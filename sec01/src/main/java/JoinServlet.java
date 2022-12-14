

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class JoinServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<p>이름 : <b>" + request.getParameter("name") + "</b></p>");
		out.println("<p>주민번호 : <b>" + request.getParameter("residentFirst") + "</b>-<b>" + request.getParameter("residentSecond") + "</b></p>");
		out.println("<p>아이디 : <b>" + request.getParameter("id") + "</b></p>");
		out.println("<p>비밀번호 : <b>" + request.getParameter("pwd") + "</b></p>");
		out.println("<p>이메일 : <b>" + request.getParameter("email") + "@"+ request.getParameter("domain") + "</b></p>");
		out.println("<p>우편번호 : <b>" + request.getParameter("post") + "</b></p>");
		out.println("<p>주소 : <b>" + request.getParameter("address") +" " +request.getParameter("address_detail")+"</b></p>");
		out.println("<p>핸드폰번호 : <b>" + request.getParameter("phone") + "</b></p>");
		out.println("<p>직업 : <b>" + request.getParameter("job") + "</b></p>");
		out.print("<p>관심분야 : <b>");
		for (String interest : request.getParameterValues("interest")) {
			out.print(interest + " ");
		}
		out.println("</b></p>");
		out.println("<a href='javascript:history.go(-1)'>다시</a>");
	}

}
