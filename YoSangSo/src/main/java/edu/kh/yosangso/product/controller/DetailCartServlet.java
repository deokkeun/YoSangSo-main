package edu.kh.yosangso.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import edu.kh.yosangso.cart.model.vo.ShoppingCart;
import edu.kh.yosangso.product.model.service.ProductService;

@WebServlet("/product/addcart")
public class DetailCartServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pro = Integer.parseInt(req.getParameter("productNo"));
		int count = Integer.parseInt(req.getParameter("count"));
		
		ShoppingCart cart = new ShoppingCart();
		
		cart.setProductNo(pro);
		cart.setBuyingRate(count);
	
		try {
			
			ProductService service = new ProductService();
			
			int result = service.detailCart(cart);
			
			System.out.println("result::" + result);
			
			//resp.getWriter().print(result);
			new Gson().toJson(result, resp.getWriter());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		//String path = "/WEB-INF/views/product/productDetail.jsp";
		
		//req.getRequestDispatcher(path);
		
		//resp.sendRedirect(path);
	}

}
