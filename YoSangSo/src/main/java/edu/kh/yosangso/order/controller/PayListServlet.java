package edu.kh.yosangso.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.order.model.vo.Pay;

@WebServlet("/order/payList")
public class PayListServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Pay pay = new Pay();
		List<Pay> productList = new ArrayList<>();
		
		try {
//			이미지, 수량
			String img = req.getParameter("img");
			String productTitle = req.getParameter("productTitle");
			int count = Integer.parseInt(req.getParameter("count"));
			int amount = Integer.parseInt(req.getParameter("amount"));
			
			productList.add(new Pay(img, productTitle, count, amount));
			
			
			req.setAttribute("productList", productList);
			
			String path = "/WEB-INF/views/order/pay.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}
	
}
