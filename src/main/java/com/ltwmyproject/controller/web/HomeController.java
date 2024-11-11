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

import com.ltwmyproject.model.product_model;
import com.ltwmyproject.service.ICategoryService;
import com.ltwmyproject.service.IProductService;

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {
	
	private static final long serialVersionUID = -1888808883642905382L;
	@Inject
	private IProductService productService;
	@Inject
	private ICategoryService categoryservice;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String lang = req.getParameter("lang");
		req.setAttribute("lang", lang);
		Long categoryId = 1L;
   		req.setAttribute("products", productService.findByCategoryId(categoryId));
	    req.setAttribute("categorys", categoryservice.findAll());
	    req.setAttribute("product2", productService.findAll());
		
//	    Long idF = 1L;
//	    Long catalog_id = 3L;
//		String name = "example";
//		int price = 60;
//		String content = "cai xanh";
//		int discount = 1;
//		String img_link = "xyz";
//		String img_list = "zzz";
//		product_model productModel = new product_model();
// 
//		productModel.setCatalog_id(categoryId);
//		productModel.setName(name);
//		productModel.setPrice(price);
//		productModel.setContent(content);
//		productModel.setDiscount(discount);
//		productModel.setImg_link(img_link);
//		productModel.setImg_list(img_list);
//	    try {
//			productService.delete(id);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
//		try {
//			productService.update(productModel, idF);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		 
		
		RequestDispatcher rd =  req.getRequestDispatcher("/views/web/home.jsp");
		rd.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
