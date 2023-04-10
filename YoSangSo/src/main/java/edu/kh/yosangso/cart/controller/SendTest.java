package edu.kh.yosangso.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cart/addPayment")
public class SendTest extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String[] cartList = req.getParameterValues("cartList");
		
		String productNo = req.getParameter("productNo");
		
		String result = null;
	
		
		try {
			
			if(cartList != null) {
				result = order(cartList);
			}else {
				result = order(productNo);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/cart/payTest.jsp";
		
		req.setAttribute("result", result);
		
		req.getRequestDispatcher(path).forward(req, resp);
		
		
	}
	
	public String order(String[] cart) {
		
		return cart.toString() + "장바구니 결제 완료";
	}
	
	public String order(String productNo) {
		
		return productNo + "개인 결제 완료";
	}
	
}
