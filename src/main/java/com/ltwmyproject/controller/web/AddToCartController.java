package com.ltwmyproject.controller.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ltwmyproject.model.itemsCart_model;
import com.ltwmyproject.model.order_p_model;
import com.ltwmyproject.model.product_model;
import com.ltwmyproject.service.IProductService;

@WebServlet(urlPatterns = {"/addTo_Cart"})
public class AddToCartController extends HttpServlet {
	
	@Inject
	private IProductService productService;

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int quantity = 1;
		Long id;
		if (req.getParameter("productId") != null) {
			id = Long .parseLong(req.getParameter("productId"));
			try {
				product_model product = productService.findProductById(id);
				if (product !=null) {
					if (req.getParameter("quantity")!= null) {
						quantity = Integer.parseInt(req.getParameter("quantity"));
					}
					HttpSession session = req.getSession();
					if(session.getAttribute("order") == null) {
						order_p_model order = new order_p_model();
						List<itemsCart_model> listItem = new ArrayList<itemsCart_model>();
						itemsCart_model items= new itemsCart_model();
						items.setQuantity(quantity);
						items.setProduct(product);
						items.setPrice(product.getPrice());
						listItem.add(items);
						order.setItems(listItem);
						session.setAttribute("order", order);
					}else {
						order_p_model order =(order_p_model) session.getAttribute("order");
						List<itemsCart_model> listItems = order.getItems();
						boolean check = false;
						for (itemsCart_model item : listItems) {
							if (item.getProduct().getId()== product.getId()) {
								item.setQuantity(item.getQuantity()+quantity);
								check =  true;
							}
						}
						if (check = false) {
							itemsCart_model item = new itemsCart_model();
							item.setQuantity(quantity);
							item.setProduct(product);
							item.setPrice(product.getPrice());
							listItems.add(item);
							
						}
						session.setAttribute("order", order);
					}
				}
				resp.sendRedirect(req.getContextPath()+"/addTo_Cart");
					
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	

}
