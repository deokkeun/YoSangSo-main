package edu.kh.yosangso.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.cart.model.service.ShoppingCartService;

@WebServlet("/cart/deleteCart")
public class DeleteCartServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ShoppingCartService service = new ShoppingCartService();
		
		int result=0;
		
		try {
			String memberNo=req.getParameter("memberNo");
			
			result = service.deleteCart(memberNo);
			
			String path = "/WEB-INF/views/cart/shoppingCart.jsp";
			
			if(result>0) req.getRequestDispatcher(path).forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
