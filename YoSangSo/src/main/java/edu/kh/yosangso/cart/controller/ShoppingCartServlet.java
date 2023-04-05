package edu.kh.yosangso.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cart/shoppingCart")
public class ShoppingCartServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = "/WEB-INF/views/cart/shoppingCart.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
	
	}
}
