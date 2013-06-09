package com.popi.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.popi.beans.User;
import com.popi.services.LoginService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("LoginServlet konuşuyor");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String passwd = request.getParameter("passwd");
		
		if (username.trim().length() == 0 || passwd.trim().length() == 0) {
			request.setAttribute("err1", "Eksik kullanıcı adı veya parola");
			request.getRequestDispatcher("./login_form.jsp").forward(request, response);
			
			return;
		}

		LoginService loginService = new LoginService();

		if (loginService.getUser(username, passwd) != null) {
			User user = loginService.getUser(username, passwd);

			HttpSession session = request.getSession();

			session.setAttribute("user", user);

			request.getRequestDispatcher("./logon.jsp").forward(request, response);
		}
	}
}
