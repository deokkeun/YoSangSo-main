package edu.kh.yosangso.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.order.model.service.OrderService;
import edu.kh.yosangso.order.model.vo.Order;

@WebServlet("/order/order")
public class OrderServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, NumberFormatException {
			
			try {
				
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
				String orderNum = req.getParameter("orderNum");
				String orderName = req.getParameter("orderName");
				String orderPhone = req.getParameter("orderPhone");
				String zipCode = req.getParameter("zipCode");
				String address = req.getParameter("address");
				
				Order order = new Order(memberNo, orderNum, orderName, orderPhone, zipCode, address);
				
				OrderService service = new OrderService();
				
				int result = service.order(order);
				
				resp.getWriter().print(result);
				
			} catch(Exception e) {
				e.printStackTrace();
			}
	}

}
