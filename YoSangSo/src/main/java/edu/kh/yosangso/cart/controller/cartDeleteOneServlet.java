package edu.kh.yosangso.cart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.cart.model.service.ShoppingCartService;
import edu.kh.yosangso.member.model.vo.Member;

@WebServlet("/cart/cartDeleteOne")
public class cartDeleteOneServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ShoppingCartService service = new ShoppingCartService();
		int result = 0;
		
		try {
			int memberNo = ((Member)req.getSession().getAttribute("loginMember")).getMemberNo();
			String productNo = req.getParameter("productNo");
			result = service.cartDeleteOne(productNo, memberNo);
			
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new NullPointerException();
		}
		
		
		PrintWriter pw = resp.getWriter();
		
		pw.print(result);
		
	
	}

}
