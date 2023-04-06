package edu.kh.yosangso.cart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.cart.model.service.ShoppingCartService;
import edu.kh.yosangso.cart.model.vo.ShoppingCart;
import edu.kh.yosangso.member.model.vo.Member;

@WebServlet("/cart/shoppingCart")
public class ShoppingCartServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Member loginMember = (Member)req.getSession().getAttribute("loginMember");
		
		int userNum = loginMember.getMemberNo();
		List<ShoppingCart> cartList = new ArrayList<>();
		
		try {
			ShoppingCartService service = new ShoppingCartService();
			
			cartList = service.shoppingCart(userNum);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		String path = "/WEB-INF/views/cart/shoppingCart.jsp";

		req.setAttribute("cartList", cartList);
		
		req.getRequestDispatcher(path).forward(req, resp);
	
	}
}
