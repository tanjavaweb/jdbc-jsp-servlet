package com.ltwmyproject.controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ltwmyproject.model.itemsCart_model;
import com.ltwmyproject.model.product_model;
import com.ltwmyproject.service.IShoppingCartService;

@WebServlet(urlPatterns = { "/shopping-cart-controller" })
public class ShoppingCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IShoppingCartService shoppingCartService;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/shopping-cart.jsp");
		rd.forward(req, resp);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		

//		String action = request.getParameter("action");
//		if (action == null) {
//			doGet_DisplayCart(request, response);
//		} else {
//			if (action.equalsIgnoreCase("buy")) {
//				doGet_Buy(request, response);
//			} else if (action.equalsIgnoreCase("remove")) {
//				doGet_Remove(request, response);
//			}
//		}
//	}
//
//	protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		request.getRequestDispatcher("views/web/shopping-cart.jsp").forward(request, response);
//	}
//
//	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		List<itemsCart_model> cart = (List<itemsCart_model>) session.getAttribute("cart");
//		int index = isExisting(request.getParameter("id"), cart);
//		cart.remove(index);
//		session.setAttribute("cart", cart);
//		response.sendRedirect("cart");
//	}
//
//	protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		product_model productModel = new product_model();
//		HttpSession session = request.getSession();
//		if (session.getAttribute("cart") == null) {
//			List<itemsCart_model> cart = new ArrayList<itemsCart_model>();
//			cart.add(new itemsCart_model(productModel.find(request.getParameter("id")), 1));
//			session.setAttribute("cart", cart);
//		} else {
//			List<itemsCart_model> cart = (List<itemsCart_model>) session.getAttribute("cart");
//			int index = isExisting(request.getParameter("id"), cart);
//			if (index == -1) {
//				cart.add(new itemsCart_model(productModel.find(request.getParameter("id")), 1));
//			} else {
//				int quantity = cart.get(index).getQuantity() + 1;
//				cart.get(index).setQuantity(quantity);
//			}
//			session.setAttribute("cart", cart);
//		}
//		response.sendRedirect("cart");
//	}
//
//	private int isExisting(String id, List<itemsCart_model> cart) {
//		for (int i = 0; i < cart.size(); i++) {
//			if (cart.get(i).getProduct().getId().equals(id)) {
//				return i;
//			}
//		}
//		return -1;
	}

}
