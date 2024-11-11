package com.ltwmyproject.controller.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ltwmyproject.service.ILoginService;

@WebServlet(urlPatterns = { "/login-controller" })
public class LogginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Inject
	private ILoginService loginService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/web/login.jsp").forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		try {
			boolean isvalid;
			String username = req.getParameter("Username");
			String pass = req.getParameter("password");
			isvalid = loginService.checkLogin(username, pass);

			if (isvalid) {
				HttpSession session = req.getSession();
				session.setAttribute("dangnhapthanhcong", username);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/web/home.jsp");
				dispatcher.forward(req, resp);
			} else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/web/login.jsp");
				dispatcher.forward(req, resp);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
