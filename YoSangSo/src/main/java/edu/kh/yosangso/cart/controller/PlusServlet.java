package edu.kh.yosangso.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.cart.model.service.ShoppingCartService;

@WebServlet("/cart/plusCount")
public class PlusServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int result = 0;
		
		ShoppingCartService service = new ShoppingCartService();
		
		try {
			int count = Integer.parseInt(req.getParameter("count"));
			String memberNo = req.getParameter("memberNo");
			String productNo = req.getParameter("product");

			
			result = service.plusCount(memberNo, count, productNo);
			
			resp.getWriter().print(result);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
