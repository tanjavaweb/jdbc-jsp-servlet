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

import com.ltwmyproject.model.user_model;
import com.ltwmyproject.service.IRegisterService;

@WebServlet(urlPatterns = { "/register-controller" })
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IRegisterService registerService;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/register.jsp");
		rd.forward(req, resp);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String username = request.getParameter("Username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		user_model user = new user_model();
		user.setName(username);
		user.setEmail(email);
		user.setPassword(password);
		
		
		try {
			boolean isvalid = registerService.addUser(user);
			if(isvalid) {
				HttpSession session = request.getSession();
				session.setAttribute("ten-dang-nhap", username);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/web/home.jsp");
				dispatcher.forward(request, response);
			}else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/web/register.jsp");
				dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}

}
