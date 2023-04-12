package edu.kh.yosangso.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.order.model.service.OrderService;
import edu.kh.yosangso.order.model.vo.Order;

@WebServlet("/order/orderDetail")
public class OrderDetailServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			System.out.println("orderDetail 들어옴");
			int productNo = Integer.parseInt(req.getParameter("productNo"));
			int buyingRate = Integer.parseInt(req.getParameter("count"));
			int buyingPrice = Integer.parseInt(req.getParameter("countPrice"));
			String request = req.getParameter("request");
			String orderNum = req.getParameter("orderNum");
			
			Order order = new Order(productNo, buyingRate, buyingPrice, request, orderNum);
			
			OrderService service = new OrderService();
			
			int result = service.orderDetail(order);
			
			System.out.println("orderDetail 나감");
			
			resp.getWriter().print(result);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
